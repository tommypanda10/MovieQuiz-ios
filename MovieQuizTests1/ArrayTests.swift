//
//  ArrayTests.swift
//  MovieQuizTests1
//
//  Created by tommy tm on 12.01.2023.
//

import Foundation
import XCTest // фреймворк для теста
@testable import MovieQuiz // // импортируем наше приложение для тестирования
class ArrayTests: XCTestCase {
    func testGetValueRange() throws { // тест на успешное взятие элемента по индексу
        // Given - Дано
        let array = [1, 1, 2, 3, 5]
        // When - Когда
        let value = array[2]
        // Then - Тогда
        XCTAssertNotNil(value)
        XCTAssertEqual(value, 2)
    }
    func testGetValueOutOfRange() throws { // тест на взятие по неправильному индексу
        // Given
        let array = [1, 1, 2, 3 , 5]
        // When
        let value = array[safe: 20]
        // Then
        XCTAssertNil(value)
    }
}
