Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56113405F7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785034834; cv=none; b=WuS9bfY4QcFLw1SELsH5f+auVw4JAOvRNrQLy6CQpV822JMdB7w6259XMZZuxZjWMmlSkGHvflIyqpuKirylAVPCr5TBZoe6BkEjJQLGAEbD1jir1ulQs1l5Jk3y6W1A4cnR93puHAZBuGd8sW2InOpqXKZJYElaMnzeNesJRtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785034834; c=relaxed/simple;
	bh=6Gu2MFXEgZ7uvXLZ0w4UPi4Wg9CbekVNum9c1tNwBWU=;
	h=To:Subject:From:Message-Id:Date; b=beVW5Mqcl9Tb5GKIAW7zkLSLkPoet3NQuWhiFrHSpMP/nHRkofvxHaRZUfAegQ1MghKZ83ilZpVRTZSD4Hur0455TysjvbZZIurfND1S6M8B+kSbEOQdcK4HHl0xr/4tqbaXBc1+qOYMuIioy7YMbUVEAw0PiBpDK6y5xlpNU8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bA17tybQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bA17tybQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A4DC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785034833;
	bh=6Gu2MFXEgZ7uvXLZ0w4UPi4Wg9CbekVNum9c1tNwBWU=;
	h=To:Subject:From:Date:From;
	b=bA17tybQjArm7IsrUTNg2MPhJcEr43f4auPUZM4TcAFLrjkhqTkDOLmenrNX4Jwwe
	 K11l+spIusDiSC9yy3GHYx7csQ9BGSpQrUKCsOQ8XVEJ/AIEZQ2dkqTbKwvplm6NUQ
	 IxtewdDBKy2+ibaqvYlCZeoOPMMF4YLbRoDAedihVqO3lMcqRMNNKpaUqwbMHL+6EZ
	 Xa7q6Hj+JuRA3CzKFfYteDJFSNVYSjwRWQioo2iSPMtwtTIadJAcqsgRWCf5fpBPdJ
	 FD1SDUOLlSE2+h2CZh7B2B3U0KxeJaOJ7ior3RkjqGR7hP4esTDspnmg9EUZibomVi
	 CC/yHgU/WQ/uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC60C531FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503483369.19659.5387160668771801771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d81dabef994bc8448c8634d65c3b66894a24f4de76d1aeff39356d7c94ca929
Date: Sun, 26 Jul 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785034833
