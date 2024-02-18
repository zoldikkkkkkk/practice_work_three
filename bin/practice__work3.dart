import 'dart:io';

void taskOne() {
  print('Введите логин');
  String login = stdin.readLineSync() ?? '';
  print('Введите пароль');
  String password = stdin.readLineSync() ?? '';

  String enteredLogin = "";
  String enteredPassword = "";

  do {
    print('Введите логин');
    enteredLogin = stdin.readLineSync() ?? '';
  } while (enteredLogin != login);
  do {
    print('Введите пароль');
    enteredPassword = stdin.readLineSync() ?? '';
  } while (enteredPassword != password);
}

void main() {
  taskTwo();
}

void taskTwo() {
  print('Введите число');
  int chislo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  List<int> numbers = [];
  int summ = 0;

  do {
    print('Введите число');
    chislo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    summ += chislo;

    numbers.add(chislo);
  } while (chislo != 0);

  print(numbers);
  print(
      'Количество введённых цифр ${numbers.length}  ${(summ / numbers.length)} среднее');
}


void taskThree() {
  print('Введите начальное число диапазона:');
  String? startInput = stdin.readLineSync();
  print('Введите конечное число диапазона:');
  String? endInput = stdin.readLineSync();

  if (startInput != null && endInput != null) {
    int start = int.parse(startInput);
    int end = int.parse(endInput);
    int sum = 0;

    for (int i = start; i <= end; i++) {
      if (i % 2 != 0) { // Проверка на нечетность
        sum += i;
      }
    }

    print('Сумма нечётных чисел в диапазоне от $start до $end равна $sum');
  }
}

