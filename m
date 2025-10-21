Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E68328DF07
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761033594; cv=none; b=nY/IerqYy/TSPFtfNsxFAb1XH4UOo7JxGdAOfzz+PX/YHQjbCycyocUyuUydUsvjBIgueJ7GQ44ZeEa42t6lOW/ZLZWiGiIelckqPLV2i8n6el+r8+c2shcIkBTFkRQwLPTHyefnPeZu30clIGnlklAiG5PXkaC0rjCIsV3EiKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761033594; c=relaxed/simple;
	bh=wljz1ma+rODMwwMUzfMp+UvlCNBk0uUdJzaeMdFLC3M=;
	h=To:Subject:From:Message-Id:Date; b=TbaloxgElhC8qetWYjF+xItE+6+JBR//deco9HPxuW61MYJWqXglfPNvKvT/FmdIaqEdiUoFdIvUvGD45va1aQqBD3G3QPWilZcjjAtBdtWR81HqWj4ZUhYEHeNavHb63zv2DHetrz27K9/3To84LclAdqcqaywSkHVhVGq5uSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfXBNcI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfXBNcI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A494FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761033593;
	bh=wljz1ma+rODMwwMUzfMp+UvlCNBk0uUdJzaeMdFLC3M=;
	h=To:Subject:From:Date:From;
	b=kfXBNcI/77XCOGcqV68EvwZcu09QXQdEHqJSO9IbSpu59xIgg8XjCGz1gpYD4+aGh
	 4nSQ0h5jY8FIz4I59fBkUwWpsgBdW5ZEQyCuy9bviZIr1O2MWGohZ/SE8MNx1Fd7Lj
	 PTRPstZ8yYZ+iYpWWdEpBGOiiQRZXdxTINaWzSxwPWJQrrRhT7+2am4F+n5QBR0Nr5
	 R2tG1ptKGPIxS4OOCTyky/CMCVAZX0UZhZeBsPbWYXzMpOOSyQIkfahRnMCccin+RT
	 enu9W0ekYA7zuj0gJY3mqRMgNS7AiKQa2IiHk+0IxuPqGqMGdkurSn2yZWD8C/nF7A
	 mmU6wuP3VXbtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92102CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103359359.4595.10334873748185546875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74747ec4527745c0b808c9259a1168fb68c166f3f2cf4017b4955a8e82b160d8
Date: Tue, 21 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761033593
