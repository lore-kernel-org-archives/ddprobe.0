Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258231F582E
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755106794; cv=none; b=Yv6n2eC0sPqJV4vp6fxjQJ7Qho5sla0IU0Hu7aB8FyGHmYhgwPw5u4rr2JEh7DcJ1PuHbEADJ9+Ita2JfBEeViGAqVF7w1b71PsN3G9d6DqjK02soIejmCy6+Oc6b8/t73FDInbxTkUKYgsr/rg7WwIOXV20XYqepiWhvP6m2zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755106794; c=relaxed/simple;
	bh=EeF8irefAjSsAFIoKOX1xiBZ13ixxTj7sP6tAHwb+M0=;
	h=To:Subject:From:Message-Id:Date; b=XeL32SdsRaEkRBnK1ExCz2r2uZRmGoCXtPsfXHWeDKMzjI/1rEq12qhXuS7wOzDSi6eRELpBGATv+qH5llyE1DxLA14lj56bAWeMixYZRsIjIAqIsbr993a0Q/Fzz4t7gvKOMRBS1jyyw7POP3hWKGPj6zRiPM/ioD/0q7SqvqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRHp7gr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRHp7gr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC1FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755106793;
	bh=EeF8irefAjSsAFIoKOX1xiBZ13ixxTj7sP6tAHwb+M0=;
	h=To:Subject:From:Date:From;
	b=HRHp7gr7pcBRsZ5Se7yipnTVi5x4li22ts2IoWDKIKrlPqLZZEZaxfakMSRFtbQ3f
	 yBvVDW3DY2BA2cV6Nb3aaFYoXA3Xk7bBNyPfGbVwGtVBsyHQwRqSvYqS8QP5/FkjXx
	 r0pGN6wjFJ7EZTXRU+C2EqIDTXIDMjJaiQh7m5y5xUcC+3HPBobZ7YrlQ4kjiuMsnY
	 MxxcalPvSBsRUlg9YZnKUB2mDeBILPGazpGZk+ArUOqt6VacHhP2Ktk8uzWy9veSPi
	 GcgtYBY+0+OJMuP3W/nstrUY/+88x1OlNJaebWZ5dEZQGM74j/zwEeS5ULtVpUREMV
	 wvmIQMjZhflqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB1C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510679357.28424.4667401112618011395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358f7ed200b99d1502d3b13f0bef102df0774f7c373bd5115d6cc658789694b5
Date: Wed, 13 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755106793
