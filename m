Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183B9139D0A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749280795; cv=none; b=C5HfG7v/Lny7Hyj9laHTJhTxnkgt5nQyXvlk59kIow8xac7aLuRsyWpAV7N8v0QSh50QM9X14afD84LakPvj6IFTmk6T94CD174XAsfOXcmGrC0UARt+lV/JZkmiHwLxtdwUpdhyT4rRgHWncbyJUFy28GIaPus3v9nOWPFe+zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749280795; c=relaxed/simple;
	bh=PgzaG/nWT0mBfGEZXmQQ/YtzxPGpqJxZzUe5EjkcAxI=;
	h=To:Subject:From:Message-Id:Date; b=g4i+DRo4S+SBGc1R4rpY7VT9lPCa1DYx6ygZ1CUgLCUcfM7LChamwwjeEo44Iwm+ocCOiVmhmSyol+KQZxPcvdFZmVuvukAOw25YURIK//pq3I2b2SCrh82heyrzkXF7rdinmqZPt5q9XBFqgvXxUamduk3qkaMvgT6JkiyxD1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZEBXP/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZEBXP/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1994C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749280793;
	bh=PgzaG/nWT0mBfGEZXmQQ/YtzxPGpqJxZzUe5EjkcAxI=;
	h=To:Subject:From:Date:From;
	b=XZEBXP/IepJxAH3cDwPrj6ywKyd+yvKk1sK9gEtgqf3B9qyUmo10SuEF45k0GFtRL
	 gHp+OIoZ62DCGOGECk7fH/i6I8KR4M0M+CtkFBxwmV6KOKRPSFJfD7Cq86AXbeRwjN
	 swRnY5eOBP9M5iwqdLhUdd2eaG5XHbsohItCrF4y0XjC20QWp590FmtLLKKVC1g2e6
	 iBaUy9HxiKnEBYq91gNHg4JjODynmfAUa1ZYRiSGJFzfAm0tH6cb4XmMwz1mXn4Z1b
	 3PUto0kr6UrQ2BZkhcRzoqgPYMvnXuZhh4iLNcz0fCBpXlMUimxSi6UVoDp/7Iw/Sm
	 WHPrnq4evFZ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CFC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928079357.22238.14068904021796010144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee89eafee38c9f4b0f21457dba5e3ee77855baad1bd770bb2c0296b5f20046ed
Date: Sat, 07 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749280793
