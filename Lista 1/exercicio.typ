#import "conf.typ": problem
#import "@preview/physica:0.9.5": *
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: [Eq.], number-align: bottom)

#show: problem.with(
  numero: 1,
  enunciado: [
    Mostre que, sendo $cal(L)(x, f(x), f'(x))$ uma lagrangiana que satisfaz a equação de Euler-Lagrange, se $pdv(cal(L), x) = 0$, então a identidade de Beltrami é satisfeita,
    $
      cal(L) - dv(f, x) pdv(cal(L), f') = C, "em que" C "é constante"
    $
  ]
)
Começamos partindo da derivada ordinária de $cal(L)$ com respeito a $x$. Sabemos imediatamente que
$
  dv(cal(L), x) = pdv(cal(L), x) dv(x, x) + pdv(cal(L), f) dv(f, x) + pdv(cal(L), f') dv(f', x)
$
entretanto, por hipótese, temos $pdv(cal(L), x) = 0$, de modo que essa igualdade se reduz a
$
  dv(cal(L), x) = pdv(cal(L), f) dv(f, x) + pdv(cal(L), f') dv(f', x)
$<dvLx>
Sabemos que $cal(L)$ satisfaz Euler-Lagrange, isto é,
$
  pdv(cal(L), f) - dv(, x)(pdv(cal(L), f')) = 0 => pdv(cal(L), f) = dv(, x)(pdv(cal(L), f'))
$
então substituimos $pdv(cal(L), f)$ em @dvLx e obtemos
$
  dv(cal(L), x) = dv(, x) (pdv(cal(L), f')) dv(f, x) + pdv(cal(L), f') dv(, x) dv(f, x)
$
e pela regra do produto, vemos imediatamente que
$
  dv(cal(L), x) = dv(,x)[pdv(cal(L), f') dv(f, x)]
$
passando tudo para o lado esquerdo, temos
$
  dv(,x)[cal(L) - pdv(cal(L), f') dv(f, x)] = 0
$
o que imediatamente implica que a expressão entre colchetes deve ser constante, levando à identidade de Beltrami,
$
  cal(L) - dv(f, x) pdv(cal(L), f') = C, "em que" C "é constante."
$