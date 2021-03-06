import Base
import Substitute
import SubstituteParse

exp1 = parseExp "x + 2*y + z"
check1 = check "subst-fold" (substitute e1 exp1) (substitute e1 exp1)

t1 = parseExp "x + 2"
t2 = parseExp "32"
t3 = parseExp "x"
t4 = parseExp "x*x+x"
t5 = parseExp "x+2*y+z"

--BEGIN:Subs11
main'1 = do
  test "substitute (\"x\", 5)" (substitute1 ("x", 5)) t1
  test "substitute (\"x\", 5)" (substitute1 ("x", 5)) t2
  test "substitute (\"x\", 5)" (substitute1 ("x", 5)) t3
  test "substitute (\"x\", 5)" (substitute1 ("x", 5)) t4
  test "substitute (\"x\", 5)" (substitute1 ("x", 5)) t5
--END:Subs11

--BEGIN:Mult4
e1 = [ ("x", 3), ("y", -1) ]
--END:Mult4

--BEGIN:Mult10
main'2 = do
  test "substitute e1" (substitute e1) t1
  test "substitute e1" (substitute e1) t2
  test "substitute e1" (substitute e1) t3
  test "substitute e1" (substitute e1) t4
  test "substitute e1" (substitute e1) t5
--END:Mult10

main = do
  tagged "Subs13" main'1
  tagged "Mult11" main'2
  