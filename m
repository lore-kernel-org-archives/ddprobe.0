Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090255244
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707730097; cv=none; b=XVPvN7DJrivD0++faIQagW5PlMsa6AmfsjFYtqnMw3OIa35rJkEMy6eaQe78lzALNBNHSnpLMUhU2GlIeXTItHiV+GSw0kJUpjEmIlYQZzH6h9nVvNMNKwNM/m0i2KwqPobURHbB88urqk58q9vlUMdWDAcLmFOccdysP50Dmdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707730097; c=relaxed/simple;
	bh=Z+nlwG3uyfCNalPDpyXIfzZhgv+cJfzKGu19/EsDX+c=;
	h=To:Subject:From:Message-Id:Date; b=RGVRbPDHqnmgEBVk20VJ+HAsj/DdAFN8PlvdrlW3s8zGWdNDAbAwwtVrAhGvcviAQby5+vUxsU9J/XFqWSRAyYbvsJy8Nm7M5bqoVnpwxiQGxluqgI7fLtKAP5XfPAOGP2xjVIuJKfA2oERSZloUSb426Qb/WoYRb/FNWHHSeSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2U+G36Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2U+G36Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78ED3C433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707730096;
	bh=Z+nlwG3uyfCNalPDpyXIfzZhgv+cJfzKGu19/EsDX+c=;
	h=To:Subject:From:Date:From;
	b=P2U+G36QYzMacTcKd8/relG0CvWDaJQGwIOlKLzIzTd7NZv5p+6s8gwjKhkzMRxF9
	 qWvUg2zeLrzO1QT7ZIKijWTmTRubM9W/Xj4WZes0izoVchH4MSOIWJq52EEEPYQF1G
	 QMjTP2GLgxxv5o1UikLJhzMX+N4wsngRJQ5+F5db+/G/s3jGGwRSPWK/7naaZUrY7S
	 KiJylotTsrAJSxGqJjm4GvIMakHuNe4YUD65WTQpswp/72QO489hIsEUwbRghVH0WJ
	 49TMBDP+8C410+gRIecbcxzgYhYwFJJIfN8D6Hyh/FBLHs4nxeVFFdAJLpNqAThvnl
	 Gf2p5KENFtIRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFA2C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170773009637.29452.3694774501922353290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821b959c724dac12b240201c9848739edbd0177c6b754060e146288cc5437534
Date: Mon, 12 Feb 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707730096
