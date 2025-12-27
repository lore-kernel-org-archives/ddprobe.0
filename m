Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B49478F26
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766850234; cv=none; b=ptLDqekabNKKVJKgdIGZeloL9cXitwCBs8Z1PiMLflkRo12E2okhgYdx6S3SDIiTCKZiDNfvgtfsIvSRUPFdklJ9pQCO2SSctu6LnztBNR8v666BtPWRVwOFpBiLwiY+yfkHbuunEOhuq5sajNhKfQBpF7Fiaun2OLbqfmUuAW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766850234; c=relaxed/simple;
	bh=pDYh25h7LEnk4kdL+WqM4phdA2AfIPumRBdrMrCiBGs=;
	h=To:Subject:From:Message-Id:Date; b=bN22iaKHr/PxLCR9J2O8IjzDwJcrqeiI/ObQoJKHEw44OP7mXgswqta40hhMGLSfqLh2RJ9QAgg3nUpAj4ZUP2EAs5cxscZAbuYIxZFpiePG5DG6yDQy+F0TN4/5tR5MD4FqU5YEwdRjH0rgIdikX5OOEV4mRoLPklUq3xIcsBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDYsrlSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDYsrlSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DB4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766850233;
	bh=pDYh25h7LEnk4kdL+WqM4phdA2AfIPumRBdrMrCiBGs=;
	h=To:Subject:From:Date:From;
	b=XDYsrlSPitajRTPSaBDgllfigzV29tRr6UnMaU0mrgAhIv7oRnTNypU7QvRGG/9Eu
	 HdPQT22XUX8Q814qB5lE2jb7TyFG9yCw3YlW87JXLtfFOqW8bNsmpGRgblTzskFb/o
	 FfU5f9RmrkXjVLxGujOfqwJyCD0Mi9QZwpLVpZPRZ0TJ5IZ1Jyt4pHgJO1/x0Ez07F
	 FUyBI2HVVJKcUz/n0EVut3aUnC5blFgbfwg0iDk9a/Fd6XKRpsDIVjgL6/1yR4v87P
	 Sc1M+wbW9fQzPfRbfZt5SiZma1rFReF7yrZLc6j1pHDoKGzLv5XXZ8oO5rlOwARQYP
	 cVE6JfGHC1+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9148CE92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685023358.8841.17142789760005903262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409fcf1871bdcd1032f4c7c4415ba7bf2e540821cbbc3066b591d2a914159a93
Date: Sat, 27 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766850233
