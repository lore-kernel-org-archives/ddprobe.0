Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372BE3C343B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779441754; cv=none; b=lmiBPvP5plY3epilG1j9iBOSiGinRWTn5zqEcbwYCQfnTrRiZXcGcY+N5kOq40RgMoWxcaHMTPim64wMAGsJXj5EE/m1xi6PRqAG7CE0p2FIKeB+MvMsqouUGTtZiYmUcz6+U5Z+t3jvxBps3onrVP+oGai2I/A3AJB0FPwr/dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779441754; c=relaxed/simple;
	bh=PoETcolHi98I8aCKRnbaMpsGwrh9vvHL2A79WOVbSSQ=;
	h=To:Subject:From:Message-Id:Date; b=FTsV3LfI9L5k6ac0UFOm7es+46oRFYm53gwtbTqFiUCSrNOT89eNmd4431CVaHqVVGuftDMMzaOnBouXFZ+hmtpELoMpaPUX/MUnFGdAwBagC0oo1PqXCr3lfHENM+wb/G9yLOetBRWOCZAmg+Ki8aUsSNAK0WahLDH9Otv/5g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvAaClrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvAaClrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D9DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779441753;
	bh=PoETcolHi98I8aCKRnbaMpsGwrh9vvHL2A79WOVbSSQ=;
	h=To:Subject:From:Date:From;
	b=OvAaClrgFXL1PZuLxh8ltlNdDbgii9DFhjdnQ+v7Cc0lm3kmIw8JO2f+0vEu/lExF
	 wibBdfcw3gGiaZM6mNtHlVnnb/wPFVK+trvHWbqHrLvjUWYLqtHMa2XAs7Qjc4UN7M
	 hX/ZEJ9LUvB7/LozEv1bYiIV13RcUapkIow22vLONe9UNlzQr2UfaQGlj+x7vFdqdp
	 KKwunoMAPk3pZSWKEYKOTTG1yHnZWZJuVD6gNepi5heGHu55nWsd0Acs463ZIPmXVZ
	 lqWCWSf9r99Wo0qyyZl2zd1h/eD7ZzTm0FN5pI/f8UY6eA0fVQQhN8chj9YhlwgGWD
	 RsPfiRDiPmoBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB202CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944175368.16558.11005150005785390164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00de6b63cdfcd90caa13869a18adf36329013071a7f7e02769f824d3a37612e6
Date: Fri, 22 May 2026 09:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779441753
