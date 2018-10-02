set number " Muestra los números de líneas
set title " Muestra el nombre del archivo en la ventana de la terminal
set mouse=a " Permite la integración del mouse (seleccionar texto, mover el cursor)
set nowrap " No dividir la línea si es muy larga
set cursorline " Resalta la línea actual
set colorcolumn=120 " Muestra la columna límite a 120 caracteres

" Indentación a cuatro espacios
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab  " Insertar espacios en lugar de tabs

set hidden " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase " Ignorar mayúsculas al hacer una búsqueda
set smartcase " No ignorar mayúsculas si la palabra a buscar tiene mayúsculas

set spelllang=en,es " Corregir palabras usando diccionarios en inglés y español

set termguicolors " Activa true colors en la terminal
set background=light " Fondo del tema (ligth o dark)
colorscheme evening " Nombre del tema

" Inicio automáticamente Nerdtree
autocmd vimenter * NERDTree

" Mis propios mappings, para definir combinaciones de teclas
let g:mapleader = ' ' " Definir <espacio> como teclas lider

nnoremap <leader>s :w<CR> " espacio + s --> Guardar archivo
nnoremap <leader>e :e $MYVIMRC<CR> " espacio + e --> Abrir el archivo init.vim
nnoremap <leader>q :wq<CR> " espacio + q --> Guardar y salir 
nnoremap <leader>r :exec '!python' shellescape(@%,1)<CR>
nnoremap <leader>x :qa!<CR> " espacio + x --> Cerrar todo sin guardar

vnoremap <leader>y " +y
nnoremap <leader>y " +y

vnoremap <leader>d " +d
nnoremap <leader>d " +d

nnoremap <leader>p " +p
vnoremap <leader>p " +p
nnoremap <leader>P " +P
vnoremap <leader>P " +P

"Usar <leader> t para ir al árbol de directorios/archivos
"Usar <leader> c para ir al tab de código
nnoremap <leader>t <C-w>h<CR>
nnoremap <leader>c <C-w>l<CR>

autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<CR>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'nvie/vim-flake8'
call plug#end() 
