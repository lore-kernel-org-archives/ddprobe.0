Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F7636D51E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764397974; cv=none; b=J8KpNepES09/Y6NVYwPNcrX8VzS2rR71RV2fFgBodgqcW1KKGT9EbIZOfxvMCnClEDtto6jjXeAviuXHuXl9nsHNGqGJG56b2nkrOUvtDAShNzvkMQOc3kMofOgNvYM0UYSCjGi/n8tB9F71wKsNHUWCXhBs88f0PzzjsSTe2sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764397974; c=relaxed/simple;
	bh=hSfZEwjMKa3kU4vOXZpLqNVGDk5jwVwXfsCWMoUEK3E=;
	h=To:Subject:From:Message-Id:Date; b=oO6ujiKD5TOdn3hH2p/tFI1abA9SqpkkJdGACOGyd76hDO3sB5SP/Q3Ax30DOJvIARzXBu7Wf44x42s8C3SVIKiky7lsriQkP9oITNJkDUQOJs8DICq82yjMgKDYzHHILN2/iPwXZeJqyJllrHVRqPOb8fwN6e5Sn4ntUr/szQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHjQNtYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHjQNtYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96FEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764397973;
	bh=hSfZEwjMKa3kU4vOXZpLqNVGDk5jwVwXfsCWMoUEK3E=;
	h=To:Subject:From:Date:From;
	b=lHjQNtYHKxIDU4h3wSilbEIxW37r0KfMNmTomYHpQSH37pyS4+l6++IFyIsJrZ/vj
	 yFPW2ABO5DRKcHI2v3tlbFwBjJQ6pWE9fNjVg/bDhBY3um2A7U0xPhIp2vi/TxG8XK
	 ZmXtMe0M0z8IMmNQyH3h+WEGUAkgjHiVRnDK3kOX2pVohNv14YfeUfJsb+7W1Q7+oj
	 wrDge2IcFMlSg7kf/M/zKp99LNVc8jjkC1P7BcvAxysoW+JAUFf8pr5EgWCpgCjsaF
	 ydcI2FVGLKUAd6UcddRYnCtQSKq77eRBgPugiOa1syNttpBQwcQqZgm8o7lvBEk3ib
	 lBX5BYZC1cz7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BFAD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439797358.14304.6064267237475771947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b5646f2856fd04c4415cf7c3a9cffdd607ead5a952ece52e1a90e79cc64aa0
Date: Sat, 29 Nov 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764397973
