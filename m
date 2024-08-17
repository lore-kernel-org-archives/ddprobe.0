Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAA61553B7
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723912554; cv=none; b=KHqcrpH19hOMjoZh7pqoV2FhYu7oTwAKmzq+yngufyPEa4uxQn7DUks9Z7SPOUkSlf4vk2iSm7JOfDOmv6hddpLgm8/OB9O8BWZ+aZg7HwkK9FkzqaSLKpzdpbLTcxk6JTGiC18l++QpEQFlcS/a4VBvBX5JKEoR8pDCSiAjTbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723912554; c=relaxed/simple;
	bh=0gMb0TEYXYYxp1+DYlNzz1JaNtjRhRDTYYK6gZ7xySQ=;
	h=To:Subject:From:Message-Id:Date; b=CHzQ0GTzS7epQdsEhaV+gj5/pIEydCT6cbSHLRvktYV2TA3ajdFAf4WVLwmhKR8TVqN0QxvjP+obvW/4mxdBAkIiHpds+F37ZfAn7IA52BBNBl92mIQ6FIqKoEKyenfwZfiRW4gZWrnJz7Qpod4MOJ1nIO1HIB9zqGwbH2ivIUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXZOGD9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXZOGD9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87A3C4AF0E
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723912553;
	bh=0gMb0TEYXYYxp1+DYlNzz1JaNtjRhRDTYYK6gZ7xySQ=;
	h=To:Subject:From:Date:From;
	b=RXZOGD9Q2yubJgapG9jvzVxiXf2wX/yD/FcZiTFddRF+qtWxFcm8dGGRMLzn9zpbo
	 UIZn/B0405b++CrzMUIef60u/94vwtbEufH7nVkWfUJlOUJuwlc6mEizQ+Xc6YYCB9
	 jmkeZnL4J/cPf+1WCBKWS/6N+m3RtgbMw+Jb92S6Tsd4BnR4O/pGOSIjoj8IaTngnr
	 whYUPQbL4YUiYezEeZ5FXKyQk32I2mPgklw1SbYmawoXNeAO4j5XfvfLupkP/F6zIJ
	 fg72WAAPHtYjEcWGjmVW2P0eCoD6oL+CGX4+BnGPtia4gNsUPTXr1mkEaSPjpilwtQ
	 9T/44MB/brxtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9538BC52D7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172391255360.4954.3579903908717936606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4decb6f01008e31c4de1de12318cdda296708f101dcc64db21b1f80ee88d7da
Date: Sat, 17 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723912553
