Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3A8219F9
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 19:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713726023; cv=none; b=ZmiOm2sP+YMPc+7wUrczSJLijGYHe8UzqeNPfRWTC4y3Uj8uZeQ3/NeN95FRzv4KGr0fS+fSNLenDxbCF88KZZEXchmmNmYdn0A83rb348mNZ6MgSwLD7NMh5oCY6lkJIs0+M4LGrUVrBdEVJxBInAKJVM3aKc+2DpLvvnUAfP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713726023; c=relaxed/simple;
	bh=e8j8Nmezhlz2IohXPIF3B2zgUiGy7GE5g/wX5paFEnA=;
	h=To:Subject:From:Message-Id:Date; b=WHUIBJI2TrZ2SnqvRslG/lVHgd73yPPwkafMAK5CfG1v7/GRoJr1EEl2qfLcWQTxcJWn3G/ZKf4j3NOOZcynudEI6esfixaSCSYJziUh01h1iroS1N1XmamEU0KgGKBMxHB9mgEpnWnJUWM6nSXELbufzAVK76CmCa9VGN5FJjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GL0TjCwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GL0TjCwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0191AC3277B
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 19:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713726023;
	bh=e8j8Nmezhlz2IohXPIF3B2zgUiGy7GE5g/wX5paFEnA=;
	h=To:Subject:From:Date:From;
	b=GL0TjCwHJuVI4eA4BIpQkYhpHkDrW4U7xV3t1D5K0W013Xr2f/UpoOGdSYclYOUtR
	 rGIP92We1dQeep1bgLJHXW+U39gEcFExz8L9AHdYBtbP9oXQEDwL+icZ2nKXIhvF75
	 kbGfjAA1XwgbB7rk6gx9UqKBrvChaOuxxptsyJw60NsV6fOy9aWqDzfc+4nY7NefIN
	 d8/Js9X1846wn0hjcGCv33P5Kzs4cm5eQCwNKR/H5sKQSwT4mt+kFtBzrOhmDkk0o8
	 CHWqzB+Zxg6wgF2nH3jxnFmvsHXmtgAupuINscNjC7qEwVE9Q2RAvc2z7DAQfd/CZR
	 tb+gd5VpToQCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D687CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 19:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171372602280.18946.3964066601692545665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b35a4f89ef988a2aa1bf31f82ac0a33caa4026d6df8c6fa2d572bc40515261
Date: Sun, 21 Apr 2024 19:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713726022
