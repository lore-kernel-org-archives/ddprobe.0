Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D80D216E26
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757561994; cv=none; b=rIgcB4RyxcmrKKcSwsyhTZFhhtCsD6/t7Jjo1k7Fxr6BustmR5NDpmFDn2dWpkZIUF0P20qv1mvtw1VrxVeOABe6k2IM/2Rlv/juVpfxwB5KkKomSoy7VR2Nyf4Uzl46WPxri9xmg64iHkGUrh955wGGhk3BGri6kxZd7e1PA5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757561994; c=relaxed/simple;
	bh=GfhEX8+j6wKgIgrz3W12TcitU/Lzv177kqfx3qVkGxE=;
	h=To:Subject:From:Message-Id:Date; b=KUvnR3TT31MwWaHMeLqzzrIEf6qygLt/etj8EP+xyvPWG5uQlh4dCSwAt99nBVaCpz1CICN1c39SxWcN0X2DLpDlUAC2k2vtsWSj/cBSMLsw03LlBYhcPNaB/VL0yfVyIo34g34Cmkl0Kt5oJKx/TJ7VJW3N3tPNhOBHN0PsV9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlTKKDVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlTKKDVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1294C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757561993;
	bh=GfhEX8+j6wKgIgrz3W12TcitU/Lzv177kqfx3qVkGxE=;
	h=To:Subject:From:Date:From;
	b=UlTKKDVYR2+ms5dGzOPa66iZ4rjA7xaI7LExu7AUMHljIx4PDq/9JUvnCz9hCXp3+
	 jFsmUosr0O3kZT3M3ZLS+Ymbj0yte1hYKR95OuvZo4S6tgm5RzRKeqMN7ERmpZoqDs
	 DFBCV9Jex/ZK9DST3cBXFF+eciTYRVSA4yBl3GNDd2sO8EOPuRu8HV/GhxUsz3PaXU
	 M/E9yK+kiK2PEzJ+AtSvlrLphqcRmctUgKG9OWfNWuuBZba2LFOkxiahKRYwy0QVdJ
	 BlZ3ROFyvvnMdM3WagRr9G6TZu2R42TN1gTC18PoY0Ewy9iVla++xzi3auQIP34Hrv
	 YJXjVpe2SA5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B5CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756199358.29456.13710456611977053137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df983fe5c6257be8ecf15fb6294578bc50f248589b6b59ece318371a3b8dec8
Date: Thu, 11 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757561993
