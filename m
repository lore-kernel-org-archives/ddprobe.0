Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1764F1DED48
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737040554; cv=none; b=VMIwr42XUoEtK1DA00nVNqJ1363Tb62MkaEajHcOWYoPqDBm2VAl7Q5iG6pJwezc+RaptgKILAjzSURLku8juqfRO1UGPZe0WHy23III+tRnKdoCnL/UVMbajv+z/PQJV0i/tTgXgg2Wfw6VPioGU5xDPuzB15hauHESub/zr+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737040554; c=relaxed/simple;
	bh=hng+H8iF04jflf8Lj1/0mFtBwHDGtUG1XKDSjAghcEE=;
	h=To:Subject:From:Message-Id:Date; b=AFfWdBuOU+135QMYfqDkEP2CQJIIU7S3stIKn/fDA6/pwoFd4hpfRtTGcMu5xhr6yK1HTXWshzaR3dw2WApby3YG2QkaMBtywTDEjgagDAuGaFTKhBiYqczE3uBIazwa7XQuTDlbW3OoSrKp4g67pFtEkmPllvoV3NycxdxB/aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjEmVHPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjEmVHPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6756C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737040553;
	bh=hng+H8iF04jflf8Lj1/0mFtBwHDGtUG1XKDSjAghcEE=;
	h=To:Subject:From:Date:From;
	b=DjEmVHPZ2TDfP8nJgBP7hCtb48zlYmtdyS6puAW5IzN355ibUr5vI4VJWTyWg4VWd
	 JgRG1/GnwQnysxTcp6XezYACCBAZWc9oZNyUva8WlKNRroKk7OnOC1G/X9gFxIbYYb
	 QDib8K3yzQ0se2TfrweqcQrGrN30GxpDxU/aPm/Yx3EHr2YSgawHJcxQ6pKoHISsQ3
	 MUqcPajl2p5BstXlu5e9fQmHsboeeVgNMfBWPvgEfGVFbmzxEJaawTMywXA4xesd2V
	 B9pEjG6eMEJl+5YCO5GXaB1fSWPO/8Sm7f8RxWGCYWSkov9fg/5fE86PRiy0G0HyYn
	 2E/U7v/ko8kzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F29C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704055359.17317.16444172369956796814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0419052836104b0330cbe9fdbc8a848dcb8945ad070f4a87d8eef757a16a94d
Date: Thu, 16 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737040553
