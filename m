Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A999E264617
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 00:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739232954; cv=none; b=pLKWBSGoqNkya33LBwv2heXXhQdWTUXu7dHt5u8EwdBJ4LsIGgq1s+V2ErIrFNJyvQJa4wqfxlRLlFJMOTe9Q5uGA2IN+tIxPM7hcTFSeQDt4iN0DhzGUBjTfyphakmandgzEofoDCe8kzew74okyLvVI2CFHOzM5+7ppR6chZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739232954; c=relaxed/simple;
	bh=u6u5jEyhy86drI9XXOazoLJgPfhwDCJpZhG9GID7GoE=;
	h=To:Subject:From:Message-Id:Date; b=gCYUm5KFIiVVNpLlr62pd/hiUajuvGUwuQ5+TBQ5N+Yv8k1Mq72KBMYvEGjAxGyz7TlkrUmzO9XRkXH/kwBdjBXwWEKcq+yXXoC1lsgQQxGExaCoZuY/P1z8r0AO9iNTduVqPl7RpibvEl2GTRxyDuVXeb614HpiX4kursjrlnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdksLnam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdksLnam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2213EC4CED1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 00:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739232954;
	bh=u6u5jEyhy86drI9XXOazoLJgPfhwDCJpZhG9GID7GoE=;
	h=To:Subject:From:Date:From;
	b=KdksLnamXMYcuh+zPRdzgqAfcc5PmMkIR0CMpNJ+koKKmmIL6Hqrfa6Uq6SubqkfR
	 3hGNu9Unf1KmnVIW8mym7BExETMPNXYm5Rgr+gyiaIZm2FduPCgndC0j2U1FZCIMIa
	 WcV0YLXDwDaA54yzfERAdNBx83n96MPBotljkh8Z8t+3vxOqENTLgYE8jof+Y5pB3c
	 5APrEoaoFpT3jkomrkvAmHiRCwlxZGhLXpELtIPX2b4ez/dOL3J0Br50EGjD2Y4bwV
	 xcno6FM1wdBt8yPXzxEBTIqyVXrW/bs3khvhNem/YRSVxuQd7uxmVOlL62WEiewF8K
	 KiQRjI5PxmP8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D40D7C0219D
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173923295377.9778.14985751727257288975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142a894141656bf033f74f9580af633175502fdbbbf1de74abcdb7f7bd61f540
Date: Tue, 11 Feb 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739232953
