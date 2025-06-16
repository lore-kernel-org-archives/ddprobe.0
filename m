Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D89D1448D5
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750111194; cv=none; b=JvzCrqdy4RPgxg5KdBtHDcpHuZJybtCe5AWB1YsymVMH5HpxalAmIRL1prUciFO0vM7JH3mv3s3cVg1TenzNQtkK48Gbx6zqPWTyZajbWCjos1VhRJu61X119eIG6uNA1rfHk3A6Wgmxf9Nqm3HlcEqORcd9bqkMlmOS1tCFNxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750111194; c=relaxed/simple;
	bh=pB6BmXCVt2XpGsgg8pyQa36JzkxplfeG/cAQuLpJuts=;
	h=To:Subject:From:Message-Id:Date; b=aAUjckJGaPNsvaRGCgTFttBEgJwVxy0IHFmYs/KjQ/VHYt3IZmzf/V8u3bIsEAqC7g6ldRnT91Q9wID3hyxCT27nhm8dnCJzb0GPyXT3v9EULy0yJtBIrP7nb/7PaLo735yIbFsuLM4TuDBc0l1D3VFyA2IEoHzvBd1DeIh5GVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbNHtVgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbNHtVgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F71AC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750111193;
	bh=pB6BmXCVt2XpGsgg8pyQa36JzkxplfeG/cAQuLpJuts=;
	h=To:Subject:From:Date:From;
	b=HbNHtVgdZV1OMkIIP65yl0Qa1++AOzBMC1jiPzvsPZrHTMoKRZug3kkySEIGfhAVC
	 hq2a93FevNLtmFxaOOxcTT24ReiP74SKEfItIUXE+FZV+mzhb2YR1XJNNGLXYlYT3l
	 LiEdpeNS+eM4GovfHAc3axVWfrfRnFoQ+woqld74KTV0ewwURIrUn8/fPMSE5j9wTT
	 mCUoi4pSYxecZ9p00g2cdzHaiIxwMCKQPSIRtRVyIGSNc4Wz+zFzbraJ0v4/JVhZao
	 yMsy7KvkFjVbGBx6uwTsIdNL+iY4eFNWMIYKnRpi7ZwNJxFECRKfTiSN5chRogb/ND
	 H4g35HEs6ETLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A3FC71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011119358.27607.8822671927756497969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cb2f1b4d94893460fdfee1050761a4bd45b8d2c21756f9621677917ba7e18a
Date: Mon, 16 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750111193
