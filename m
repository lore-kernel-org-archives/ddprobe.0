Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DACF1BC58
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728896754; cv=none; b=rTAnrfUGAU5uCQr9BVsmkQRuc/JkyJvuM/fD2GCmxIUYqDg6pWiCb81sEMiQrIKJFCk2XSsk7EXdeo7HGdg8trn6msjTWk3/eqTgWKLK6ZYQvozV73HX/isYrNAUkJ2q0vHSv0bEH8t6ag4nWfITnuk0zyrLQzdP60rFXcW14sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728896754; c=relaxed/simple;
	bh=BWMNzdo52I4NdYiOecW+Vfuf/BeUOsX8fhzOWZjBuqI=;
	h=To:Subject:From:Message-Id:Date; b=QnqP+XWhX+TQfWd0s8BAgWwB/ZBtFHZhPWdlg4zkHuCHZ4OomMH3w5KxjRFdRAn73h6ArxICL437mghiH1Ab3bJHPsbQs0z899JPCFiDBJXyudE6QkOcVDznUB9+h2af1rSrjtYMk9Yxm+sbQAl8SSrcEGibjLhNwQ67erAieDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSumIfy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSumIfy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89ADC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728896753;
	bh=BWMNzdo52I4NdYiOecW+Vfuf/BeUOsX8fhzOWZjBuqI=;
	h=To:Subject:From:Date:From;
	b=pSumIfy8kXSsFsJQL59ae74g+i6aRaT5vZl7LfhpthfGrVSq7FqhAQfiMA6nUsZ8c
	 zLxX2KUWUYwMcNlkHq+pisG/rFpj5eD4lkh/DLiY2+wAEe7553ekgh7P6Tc1SRKEJH
	 T3EQFhgWGFfBWFDoIYtHhALqMkVI2bhr7AMeQahxptXMpIluN/KDtPYWgMvq4biOxa
	 uk1Cd74UsEQSQ5DPQngi8eitnUIwk61DHtQvEV7kW8sjSOnafLk4N1neYNc+nzMykD
	 Mm7lCHuHARi0nL6wT9m05qfZ+E8zq3haFIuqqRiArihcv8hO11riMX+EPljP0DCTCQ
	 3J/aOLIWk7E/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E44CFC51B
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172889675361.5248.11077086637531250413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0166c0602bfdfa06b4961d263829c8fc0aa9921aa516f9cbcbc536b4e9bb1f
Date: Mon, 14 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728896753
