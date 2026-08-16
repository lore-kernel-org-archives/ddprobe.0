Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A25282F10
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786908634; cv=none; b=C+xq5TWh/8wtOp2NMi+M7P5xjihlVmXX+sj/akkjg3xDMWA/Yy4VeDM+nFxPLuYKze4MDuho0n52zjWX1X+/Rpzy/6QMly/cJ98bVXj8LPvxVkZX6eqitKlbgOJv0ZyNlW3i3k/fP21DIAtGs8Uz+xfTw2x5ktG5epH0ftcFa7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786908634; c=relaxed/simple;
	bh=WnqSFwofYV72WnnXJsNUmASLn1qSbfUsY8m8zgP+MZI=;
	h=To:Subject:From:Message-Id:Date; b=ZOhqnLw0KWT4I/p5SebogDmGtiebxF+mU8kQOxxC0b7E+ycz+WRLn1C/+lfTRlRZCGH89ibmSCsmvcUNvoeIu4ZoHSwF2bxLWYX4ROer/0LC8MzsvKQrhvKVs7bL8C4zA70ViOzDnktIkiUw1/VrBIH9MshF7FELowNUFoLckHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJruriq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJruriq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A23C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786908633;
	bh=WnqSFwofYV72WnnXJsNUmASLn1qSbfUsY8m8zgP+MZI=;
	h=To:Subject:From:Date:From;
	b=gJruriq8/KHjp91oNVPjIOJad8vam8ZBGuhXXWAIxYABKz5uVtvSA20fTOMdsuQP6
	 WCUi/lCePjhEZJPLtxkRmeF6I5Z29/Qvin8TzyUYDp8CaOX/N7Jl1xsLZpjYAv7CtO
	 jgqqLpiUyxNVIRR2M54zkFWeAPKbJp+nstvvINRSevT3B1dfICbM309b/jUCsa4msX
	 tBuf9G+x2ZukiMuaXEomWzIW19QRo6LRIkKafeGp22zw+0vmYfsMj9zhwBdkOkdw62
	 P+8njoftDDtFYed8DZwE2GBH5zhsY9bhZph60PxrMqR+XQz3vTNyOPGkWKIZc9TK0F
	 2VLlXMlsj7WXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19F0C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690863369.982.1721472426639652369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2993babbdac1143da8dc2d802dc4128f0cc271fc941ba16309a7914a09f7ff
Date: Sun, 16 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786908633
