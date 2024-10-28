Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278E018FDC2
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730148954; cv=none; b=R1lzqax5w9oKMobcE7TtXWFznjoX2C2q3r2mZ3HQrfxvUBSSTmtk/p62aIlkGzRVtrRHSgOTiFp+3Pd7hv1Pv/kHTyDkbgVctSNJrTDcs5/fQhX7YyUV/StHNh8IdC64yNfOuazY6J1CaE4wAfCWuUK6nGIM5bJ6xgCCMN5kgDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730148954; c=relaxed/simple;
	bh=084spDnHZ2oKEx7NjD7a3cUoCuzoXaTGdzwX1nGJ0z0=;
	h=To:Subject:From:Message-Id:Date; b=l+7sjpnp3orGlBSOyuUV2pTZwRcKDLdcsPDMDA1QLEz7UI+cMgGpHdqbOR8VgtCKQbWpiv2adfOkNmibf254ydV91aHlkhxk1jSwJtp7CjbsIxBLWT9JAkUFzoWG8+IYe18XP5JMeyCmMzyBisMySlUAMeCZ2AVoW8r3zYDloqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQRvFuSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQRvFuSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CD8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730148953;
	bh=084spDnHZ2oKEx7NjD7a3cUoCuzoXaTGdzwX1nGJ0z0=;
	h=To:Subject:From:Date:From;
	b=dQRvFuSjRv2bE3elMGf+aQqptOaUehIf7+vzlotVhXJ0f8RtghdRHJkc3uhsnvs0r
	 I5BMI2cvG6YjTLNJ5FUCLe1HSkURDFrhIzGmFI+AshNNA0MQyvQx6lc4XXCHIx/mpc
	 MmdPe7v8Ge1U35Dc7XLYx4m1fV7D2HwXalWEStMAdsAfNJ35ePwrmnBqD9SKF9tm1/
	 lpK3EW+3weZIuMKezFgGbDT4Qq4Ar1L9EOTk4P//UaPW9LKg8UJiGeiPY5OxvYr1XE
	 ixbDe8S8AJv31LxKAL32YPhPYvNs++8UO4dr/PSGB283iRRxQ33q2U0QJ1RLxndciS
	 Zkuh2lftvxkGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E1FD5B154
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173014895361.24791.15536676339725125334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc9ea946385a7a5577a2024429c42dc9215cacc1d38a148a55caa2b3b9cbacf
Date: Mon, 28 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730148953
