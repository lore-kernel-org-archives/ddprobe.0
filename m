Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F67C2DE6E3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751532594; cv=none; b=f3seREDYet+rcYCdnYYriAASFIog89XWIZcevo17F/dAihxPEfL+aABcyFuX9LFwUb7WVfmJmeBxakSg6p0Mq+mMIMIpLtH7URVuQ3V/60EzO83EC6ycLAlyX57elG/VU1GaG3m3uU0twtl51w8otELeD8gGVz7Vzu1hszIvxg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751532594; c=relaxed/simple;
	bh=alFTKL/UGzyEM7Zxa3CosfeWYQRAiq1x4lvd+RIyniQ=;
	h=To:Subject:From:Message-Id:Date; b=ANVwszY+y657VsFrOe5FpcrBs2uLR3TLsvPBGqmxiLHMMARDobgwekfPPO2TN6J4TTMKtf+8IisygjSGUxjLaLW/u6zima4kfAD8so4ONA3G9oUXInKG4eJI9Xco8G9kWeT/+EXuVmFb8AAn91dit/rJc13pWQh0ujhb7g2HuXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vhhgh1Hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vhhgh1Hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0262C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751532593;
	bh=alFTKL/UGzyEM7Zxa3CosfeWYQRAiq1x4lvd+RIyniQ=;
	h=To:Subject:From:Date:From;
	b=Vhhgh1HkHoQelC16Tueoa6kkqceP8Rumk9EwU7WsDr9WEhNtjWItHCwm+MXATvlqM
	 iY4ei+43EAh0np3gojUbFOANa1/415qR0b24+MnC21OSQTmeJ8KZVm/BA2DwqbvW+c
	 WsBlVfYToHsLY66jxcaqr51o9djjIaLp6F5CF7oYN8rE68aTbny7bKOUN5KWkkCgbP
	 6HOt52C9QCIYP92Zfkoviphxgfyz2+auP7j64a1S8u3ERfHnBbWSjCbTkXc262VNyO
	 cBT6n7ykQuKFeErE96iEG+zYDWhNU/C9vc6HCiN3AsI8qJxjnl2c0GdX69UHDMaJ5R
	 qpssWBaVhHqyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E951C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153259357.30920.413566651973843475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf05601aa1d6dc6276382dbbbdb86f3d63dffa0a31601475aed53890a4aa9d1d
Date: Thu, 03 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751532593
