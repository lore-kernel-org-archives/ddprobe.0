Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1264690
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720316783; cv=none; b=XEJM9CKYvWXBLtg37+UCnhh0BnjZEl8QHjgaRHdgEZOXDKYCbhaHmSjTh7ksIo4LVMnkEotZrj2s9Cm4VV8eP/0UjKMUHt9yzuEtYXLYNIiAzKChUeW5ZDS5dkIBUkPiPdmfsMDtTPxxpY4IItFxXRKvZIKynuTlhLPG7RLSZBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720316783; c=relaxed/simple;
	bh=YGx2F1CIzUQFG+fR/L/CvYd/tleB894C0/Fb4+JcdOs=;
	h=To:Subject:From:Message-Id:Date; b=FAEpYzctnr4YBTxbsb3OHvk5Uw+s2t7o7cfQz/rr05obURrHfM7s5B2SnuCzbnk+UzkM93VX4uedj6M+wvEIDxknDFECUZIyhg3uX8W4MwFAIWPfxjstQq2HUt39yLBVjpVQcwZTyLyJVNccq2Uv2ieZ0YPXpz2N/wJSH0KcZDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqMVlR3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqMVlR3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA689C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720316782;
	bh=YGx2F1CIzUQFG+fR/L/CvYd/tleB894C0/Fb4+JcdOs=;
	h=To:Subject:From:Date:From;
	b=EqMVlR3Qz3eckK3OUyn5wSNJAKSoqD7Qua15tto9c4R0kehxPjVgMwrhhTkGUX6a7
	 /lK0nkQdAu6JqmrBFuf3zyWU5fbF2gzQNJYxKeO8qfhShJ4lYS1WB5Qb7QOcB1lR9g
	 7rMFouPMsa8rtVLxKjFpqmhUL4LVoVtEkooJ6uHUwIMUb70WYDmMZeBlpDaGHwHlix
	 OWDHxjm/7fd6ZKaSRNjtzTfYMCDmPD3126qCLYJ0IoD4loTsAnPquJgeetZcWBHPwa
	 6K4NHE4KRG420u18kR1CdEwOf4EEIDC4YL3kIh9IzPL7DQ/wAY0OAsLYPO55hEc/V2
	 lVweL+YtnFTCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63E1C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031678277.12133.1166036290566891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256a4bd13f4ce41b128ccafa5be1de26abe8b7ad2cbb7169b77260a44621c4e9
Date: Sun, 07 Jul 2024 01:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720316782
