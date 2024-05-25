Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528CF2D054
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716663263; cv=none; b=LAmiVPO0JQpcpCwjVMgFSCt4yKXB1s4aao84p82vuI5VNfaH4WJZyoS3h2bEyf7T7gwyEysmCV5EcSAaaGoHAOVOe2wPF5dSm6mt4tOGutQCe2roAhBx3/csPAAMFaRAWlp40eI4ssrYLsq0kx+U7hY4/LCnf99PO2WmSnCBpXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716663263; c=relaxed/simple;
	bh=XXnOZD9jhmfTe+ydwQR5yACxuDXBC2+/HLMz68dFScU=;
	h=To:Subject:From:Message-Id:Date; b=ecjM5pfDf/UkJQ8dfpMH10qwekoKZPoCgsdvgy0rFKUAOXInIJMV9ZbZ7P2OKEk5ffxRL9AphebYPaXG38LITLIDgwuqDrUHsQhtz2uDabGmGXbuB91kJytnMsdbF2eI6uYcZkjYEcnBks3c3tjKHpu0k59I5Yyz8+I7oUITaSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUeHRTZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUeHRTZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB4CC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716663262;
	bh=XXnOZD9jhmfTe+ydwQR5yACxuDXBC2+/HLMz68dFScU=;
	h=To:Subject:From:Date:From;
	b=XUeHRTZ2mnclx5Yadm9S8dBfGHbui3FDYM88mGXZYCB5vwanOJFh5r9JbAetqVV2Q
	 TRYGlpGu0dftpjoV+dtwheohfZop9SWjXImSfb85TuWi39QXVKaHqCbtk2uiFhe8cO
	 joZ7YcpOvWJxl/XL+e+tGdk3SPwvR+SsKzFcZknarRFue39ZBLDzt+rYOwixF/N+gP
	 EDh1zq3I3EwBxGsu5/IqEjV/jC3U1/AGMNuYGqdX4N1G+huyAP4joNGvvvo+yjntOh
	 21dme0uSvBZIS8SvQvMOKRDZ/tvGk/bAmrYycef+mipp4ADgDrpqzhsMR4TZ0f0VTj
	 QeF+sjruuD4eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C958BC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666326279.24870.17193477856415767392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9eee418d1de18790669e75fdfe17ed37640d98bee06d929bb9d4012f4d1e3f0
Date: Sat, 25 May 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716663262
