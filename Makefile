NAME = libftprintf.a
DEPS = ft_printf.h
CC = gcc
FLAG = -Wall -Wextra -Werror
SRC = ft_printf.c ft_putnbr.c ft_putchar.c \
ft_putstr.c ft_putnbr_base.c

OBJ = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	ar rcs $(NAME) $^

clean :
	rm -f *.o

fclean :
	rm -rf *.o *.a

re : fclean all


