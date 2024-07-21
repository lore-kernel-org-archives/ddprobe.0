Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEC31FBA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721531754; cv=none; b=FYBhm667CXPJI23cQ3QcX0m7PRC68DIPK1Gs0Ui3Fi4DRakuSJMCtO81EDM/fdu/PiKrrbAFeh9uMSO59/7dYOgXIxED5Dc8XZwcaxNIWtcYXoFO1M3XZxq0PtXewtuok3XD78x6bCa//uM9oJKYWdVglgobIHLg7Efg4SGdc/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721531754; c=relaxed/simple;
	bh=m40S7uulzPZVQu8U9u27gX2gPOl+qICO7M4SaPb75Yk=;
	h=To:Subject:From:Message-Id:Date; b=llN/9BoPNRTLqBol7O5x0dvABdPwNqVv17r8UUHqcJ+wuaFsSPwbcEQtFiriqnaVg0Y3NyxI7HuvXBCF9VLLrBRMmgHykj2FwMfAoNbEXlyLOpXWmMqxMceKzCXcQ3YI6iAsJ6yMazpBe9eZpOQN6F8c0u4479MBW9nyVGB63Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRRgMpfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRRgMpfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5826C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721531753;
	bh=m40S7uulzPZVQu8U9u27gX2gPOl+qICO7M4SaPb75Yk=;
	h=To:Subject:From:Date:From;
	b=LRRgMpfOOIeC1dBvCGcvsKsHHB0KgLldA704ZX0kXP2rBcW4e14k1vMqx2/GGS9QU
	 nY9fa9tMDMrb4C0s7ourruPzvaiiUtLWcYVdE8Q7X0mukci7zsMsqy0RTeuc+/sDDO
	 uD2N2ggFD6ujDJt741ZfHdAEGzUNnMisOG/wkc3S/T//r27R3YmAWYqKRqNTHRBFPs
	 SBg2Z68IxHbV3ns0SZSIIS569a5Hln8wo6fn5B8K5DT9Tu+j7K36ozjrs8kOwO2Q8p
	 lF/OJVuWhGpmFVnadYd5+z3mTwMEJ9jPrp7S0XB4g7IMpSvOqXFVgXTT4f7ktdqwBo
	 gmMhfzrPH1o+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D485C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172153175360.13081.11840246134323981775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b464a088e3b30b37ac2165090a84cb117159b4dc85cf38e74e80072c06527a87
Date: Sun, 21 Jul 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721531753
