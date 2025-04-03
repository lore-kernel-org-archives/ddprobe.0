Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3890719340B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743674394; cv=none; b=TKR5oEAotIO0TElg73wfcAXTMAj8Py4MG3BZEWLqjwtUngQWA8PO3rD+q31G22khXlixv9q4+0uqzHutDV2WciuePNZSfNT2AdivIGit+hg08BWI4SkTXVBE6j+ODORLrfurLba5l3Mklif8e5rpHe5obXkQH+wPSJv6zisxmiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743674394; c=relaxed/simple;
	bh=F1mrY1K0NtROrxecuQ/YhV9NflcW7yp+7Oy7bkq1D54=;
	h=To:Subject:From:Message-Id:Date; b=cnnQq6SVrMdU6FVrmAxZDyzpX5gXTuDaJgG/rnM0jJGdY1KIJfw+9Rw6AT0xaqVh4/Br976fysnZAMT/+JfCXZno/NJJUK/fbNAKIgl5M0vJpVKmOXJXpJVU2118P8c5agW0pWF8iejoalE4LwVeWbzRb8qozzQtw3xdJEh6d0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kdz7UiH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kdz7UiH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E64C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743674393;
	bh=F1mrY1K0NtROrxecuQ/YhV9NflcW7yp+7Oy7bkq1D54=;
	h=To:Subject:From:Date:From;
	b=Kdz7UiH8o+KViU2JqRG8ov4hx6Me/MJOXxySTE4H6SQUbTs5YAfIJNb6kPWTfr1Iz
	 vJTc1TcPtMK5Z9UJHemR6XQFfppbyNnC9S4EIBPcMgS4lkc4pkoNgLMKmRf1KgQEvM
	 BTYzHTHN9X3dW6DlrMMa8o9Q2xhCVVxuiD1sSMmfhWc35Gf+feXEOKyof1V0PFEP+S
	 vNERMoJDyp/ZVdgYqeEWBATlARYqzHPYmGgxEj3fxiKlsuVreITML47o4s9H2AvnYL
	 kap2Pm9QFBh9Ru8ZHaH/ay7e96/hYsS+LjuTODYBRpiy6opves+wbqnlRoPVzkpaE6
	 wKArYfK22j5lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FFAC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367439361.19315.11190619577177643561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0852b8ff1ce84b347f546f04a0bccbbb55557d9668bdf980ac4337536471ba02
Date: Thu, 03 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743674393
