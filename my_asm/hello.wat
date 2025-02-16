(module
  (import "env" "log" (func $log (param i32))) ;; Import d'une fonction JS

  (memory (export "mem") 1) ;; Déclaration d'une mémoire WebAssembly
  (data (i32.const 0) "Hello, WebAssembly!\00") ;; Stocke la chaîne à l'adresse 0

  (func (export "print_hello")
    i32.const 0   ;; Adresse de la chaîne
    call $log     ;; Appel de la fonction JavaScript importée
  )
)
