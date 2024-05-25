Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561C08F66
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716635663; cv=none; b=ppDHVRqGSx5R5S7XoBUZfIsn0CHSag53koQSVWgmi2zYO3TcrHZ0a9rk2HuNPstghqNamI3EX6Jti+JFg60s/qaZw/lxYa/vWE7TCzLMOWEA2Yn16MzACQcvew5bGmijrk3VS98n+MprU8phYaMjFVOQ2cEYn5V+2Si+0EqJhoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716635663; c=relaxed/simple;
	bh=duEfH1MJLrxzqvXvx/A9vvV2rrQ3G/uHVbFcfjeptLo=;
	h=To:Subject:From:Message-Id:Date; b=X4cKhOZWOZCR3pJ4KWdSLoTU2UWLquifAA9WnAd7grIpbzzckDQ8hZK+b1gRYnQcag6As+CNLWVkLkAyLldq8WntV2sJ2u8oEX/WZQZjPrUiqX4nkz/yGQtUUZ2SsPD7UdYr30YcOWMa9+y8E5kwYVnlR4UnAFxj1aHuFldSD8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9CuOUC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9CuOUC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AE2C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716635662;
	bh=duEfH1MJLrxzqvXvx/A9vvV2rrQ3G/uHVbFcfjeptLo=;
	h=To:Subject:From:Date:From;
	b=A9CuOUC65pYJDFqNdG1wY7LzigxN/EpFcjX0oB1Vw1cm+EXnXYLNpOpIVMPiElFFq
	 aogeWERb4Nwrnymod8gLnH5xinbQL/p6otDK/2V/2qLENxjdNGH53qIz6gijxJDShq
	 fdAh/vFwpg3KD2w3Wo/V/EJkv3Y6JeYv3X734OecEWkkxiMXKLRbQLaIbbDK7GuYoN
	 MAVy2rFt6+WdNRscoMHAz6YyjBuCoMH9s9dIFCuSo3lnoqdmZHZnsNImZEae61bpvO
	 2Fr63+bEg7EgPkcSksDqQcwgay/s/RtVvQtMvuKEU7L1ef1EX58H6/Ins7tWaJ17RO
	 cxHxASokJ/Nug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A26C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663566276.15218.6498993420269134705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43bed760d22b42afbb1b6c39a5755109f31f4c9ef6519404443246f67b12bea
Date: Sat, 25 May 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716635662
