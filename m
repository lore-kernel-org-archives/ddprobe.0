Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C5F22DF86
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756073394; cv=none; b=a81ReAaGhe0Rszih1tGVsEiJmssCnC9nJ7gxadb729Tzp3h3KY+HPD65iGTO++aPrT1KRPyVNW5+P8QEfRvNgohU56ab6t0XdXqE6JjMgfzHsTHaSSnBEjBZw2cygplMFOFg+J7dA7lp/ohyz47bCdktp5n0Yc9o6zn1rOQh0ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756073394; c=relaxed/simple;
	bh=jGS/vweHYngaChGucruf85gokzGMgG0YGXtb0ohpRQg=;
	h=To:Subject:From:Message-Id:Date; b=LrvLdx+vGPG3Z19pbBK9uxt/Gxn7mcggod2DsqpTxpHTyuFYyJSJFlmGKg5pckOuUYryVBRZPsaRoxl8OlSYJHg0vKUArlXsnB2veHnvEdYiEgy5YKF+mI+XXxXkDuCpUqW/Ua4zFD010CozQHLZBuCpmsJA4MKlLBE9QjruQIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvH6RHoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvH6RHoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1096C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756073393;
	bh=jGS/vweHYngaChGucruf85gokzGMgG0YGXtb0ohpRQg=;
	h=To:Subject:From:Date:From;
	b=tvH6RHoWm9c/XfoaSZZZrfYAOOseI/W6zENVjn8D8duXIw9nIZ6ksHEfGuBw6S2IA
	 S6KPphpaDESOd/RExtE35aOxwpEyFPSuHci73ZZDeEGBOHuC32ZiR85sk57DpurZy9
	 v3VOEAtB6+lmO6H2WzAL6PKk8wdCQvS3yA2PXhCCCnDUkHUnh6g8pbiU9L8QrP/uvU
	 PfVVc0FOBZUNu4F/jqgUg0aU4PA8Spfk/e/2ptdfJGll1kl5B8z8eWKcTERQtTN7Fa
	 n/yeDi8U6a7gcS8ZxO4bEV522i7iJyBEk0zvtz37bQKcVmlTNVtNaIiu8Wpgxm03DB
	 cLxzT0bJJHblg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED98CA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607339357.10944.10016961288993896648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6947ecac461365ee375c675d8861083d23388c136bb485d50368fd68b851b65e
Date: Sun, 24 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756073393
