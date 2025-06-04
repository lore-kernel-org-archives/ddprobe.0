Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370F7BA42
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749006594; cv=none; b=bQkLM5Spq6EWMtwgulaPxED5YHDnerI5m5W71bomLGZF2rr/IEYFdHZbCYs1S04FmSy4EXIu6vWH1K+vyKw61L8vQHvOxueTy/EL2JOpOyngcWT9EDFcjqA/GqyvhHJDly4ALbShS4SbIbCvaWMtBN39/d2iFYqg+oyE1lUpkIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749006594; c=relaxed/simple;
	bh=8k+hqhDsH91WilATtLDNRaUKNyddcxtIRSihjJTvVpQ=;
	h=To:Subject:From:Message-Id:Date; b=ouJpsDADkKN2LGLy52rgwFgSsI8VA+9z0ZReXSah3q1eaSP02isuxbFLPG0fjV8a0geR1GpWX1iOFug227GjSxINm8t0Sj7GiUyoHtzFiiBxaF+3nEljKemgWd2+ag/aubbzpuBmdIiv2UyJKwfO7Zpi1JJiUGlUlsN5EQ6r7HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRvNyjM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRvNyjM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0404C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749006593;
	bh=8k+hqhDsH91WilATtLDNRaUKNyddcxtIRSihjJTvVpQ=;
	h=To:Subject:From:Date:From;
	b=sRvNyjM3kOMjotiOv2UduIsQWittvUW++0Uio0LP88TNbpbXNc7pUsJosuAY30PSj
	 Y8faEXv93vJe1BBzaUNRTdS2bNauC7gpF2B0sG8LWC3kslBp+mDRz2nkPvInNCUQy2
	 SeBz7SIe9tx/h3xMR9NF+srirQFzmmxrm260v03UCIRVm65OETQ7DM52bxFg83m8dh
	 D8YY8WyTIki34ZVVvTsnXiOM5upRwenUJ8CpCP6No98pLXG6pa7plVjyEXKcNE8j4h
	 1ETTg3XNNpXYcLUOJpml3c4eO/89TJN1IWHWCQEWLjJcirHogVQqjig9dn3Fqj5tQU
	 6hTEjBfOvfwuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA8BC5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900659358.19678.2303320962039620573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90b08a8d7b0641868613a219d9fee6225e399bc5147f46f187ba0cb86565f75
Date: Wed, 04 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749006593
