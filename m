Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153CD41736F
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783688314; cv=none; b=qV4wuHLOsnyTMW8/Uh6mhn88MDdjN2wlGoQrVVPIuSj2lJORcsRNp2oew1fNutXptnQqLtpw1Zn+y7ZAFe5+eRCndB96MjLumlTs4JslNknPdQsG7KN26/lxiehTvM87pcWrOrRLTDmB8kYghIvYOVHH5YvXhQXFTe5mN0o6Tmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783688314; c=relaxed/simple;
	bh=BRjyPCspt1QhWbm9oLMlaTgoyoLHQQ4m697wjE8nEMA=;
	h=To:Subject:From:Message-Id:Date; b=lCpAoPsCpdEAhRif15wWLEAY5ly5bloMydXXbYRnQRO5FUx3AKVRTW+rVqfh8xgnpXB9mGTFIIfBzz7MPqe1uCd1ThvAIV2SDbnMyN7vCgo77pt0SD/o7qWJ7tQ60qBBh2mN9QjGjQcangsBC7SfN2OtzQUfb4e8YuND2Mz5zhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbJtmRW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbJtmRW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF07C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783688313;
	bh=BRjyPCspt1QhWbm9oLMlaTgoyoLHQQ4m697wjE8nEMA=;
	h=To:Subject:From:Date:From;
	b=pbJtmRW03Xg7vWMSjiT5I/7ZbS2KiQb7HwQ0JvsCKccBg1XBjMqwavz08PkXfvDKt
	 WDXyHi6UntuZ3zgo87G1UuCs69fOCNWduSTlIn6+z1Rx6JEytS/Xj5+s7uur2lxvww
	 Q+DZTA1AwSWeReYDrwBaL3Jt8yXcMFwoTBDUPy3bF+8XLIcLM/lXsvTB3P1TQX3HPT
	 2snaK9aIOTSL1OgnA4nQ+wMIs1Ujhe9pPKFofNLKGtUbqCY+6pYNJt6eockKtaFrnF
	 xyfpk8ew0s60Zx/JmHTyu9BB5SdAWBMvpPGuBSVftObhTwrilKdNGSDZfUIT+yxUmp
	 kLmC90DSnJGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB5C44501
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368831369.10084.4583597656081156113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94d3dddba01fd91e3ba9c8798e3b827e140aeb1ef1fde831766bcdfec9b95f8
Date: Fri, 10 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783688313
