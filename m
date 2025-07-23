Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBC01F5821
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753289394; cv=none; b=Z6YC9htz0Dy95Jpc8wzk/xG/zlkXreQmxFpsHlmavNNXtNEjFQCW6ZvozSbUzt2ARvnbK+++G3BxkQg5tCYP1kDtc02gGXNgBM+jTyLV0FmMwFKjVDR41hvjQ7McG5BQYxcvHGuVJSHBEX+WmKvmuiCTa2fM+12FryEPnXO6jYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753289394; c=relaxed/simple;
	bh=rJfjktEEe/y/tMy6A4crH1Td/fJmAXgq53xdyDe3Kwk=;
	h=To:Subject:From:Message-Id:Date; b=WniNpYtgm8wRZp5CWkzBP0mGV8rGVwYEzvhS37W79xghJXMwroYHfIHCePsOqY/hfCEOkdyLtU31U5uipDoCCiLIuEcL+Z+iQstQ7fbLthAmaE+mY2wTcKVC4Edd2o38DIWCEezWmpUOBm6D/1804+R/UtxtpNvI7GM9Ml3+51s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOs7sUYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOs7sUYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4917C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753289393;
	bh=rJfjktEEe/y/tMy6A4crH1Td/fJmAXgq53xdyDe3Kwk=;
	h=To:Subject:From:Date:From;
	b=HOs7sUYY7DBGqxI7kKHbdMHcafJHlMP+sfJXiwlmJKc28lFUQlCSp6boz9+ksYe9L
	 oL9v/7KQsv/O4Z6Yh/p/vZ2/ksLKeJJXJjQsaySe0SGmNmZPKWw67EKspb2bBRhIRs
	 8W4k737xHtwd/siH7D80qsEclgMi+AxyF7hAid7PVR+1jVPCWgpCvqXWxlEi5Qa966
	 UudNHt6mv9CDP21s+WYuyshmIEjKd8k8wsaULc6wqotRzhk0C/ZfAgk+nH2yehCCRy
	 UWWrJJM/SOUSx2tabYUnRmiCC4ZnWCaQOR8UzzOTNKXNAzRCx+VYMRWJVFRLn0q5CZ
	 iURQ5UhZzB0Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92961C83F34
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328939359.23214.16729859142765461291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c875c3d8fb901f6eea7c2e1bd11b3dd4db0039d44b7c17cd5a32321b370828fe
Date: Wed, 23 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753289393
