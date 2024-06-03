Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542C919BDC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717392923; cv=none; b=f3ND/0+ZHzlV3hEb9H1MKtxII7bVXj5B6VvHapFALP3MrkVu2LCukrAv9Zac6ejLWFOwL+dGNAhAPP2KfpKWji4TGtWsv69uAq93EKTJCquzcIVa4ple2GE4FJNfMtZjFNWdxHbevdidwOeYaWLxGvRuHGhHy8Twi6+Qlk5a42o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717392923; c=relaxed/simple;
	bh=jOpfFkl4AMMVbnBawAeMmlWgWkqETt1j0XaqzsRKy+M=;
	h=To:Subject:From:Message-Id:Date; b=OGAsRNl3ohjLY415D+QpC2H1dVEYukV6bQ1sZ7G4b0mf/QwbcuVTLM4OORVTEJ3KsuoWx7aWAaJG9SoWv2cUq+eF6bDbhg4ZxkWFn9HauAqBd/G7co0TPoNEOzI+N4Rwz18Q3q5WDFVLtp2CLOU/jmI/gkxwydTMhPkhcPusqeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrAufHZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrAufHZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6CDC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717392922;
	bh=jOpfFkl4AMMVbnBawAeMmlWgWkqETt1j0XaqzsRKy+M=;
	h=To:Subject:From:Date:From;
	b=NrAufHZ3GiwocR5hQ/pDcy0tvKRjRvh6K1FBXLGo/gtERXaRWEJFEEUilLRXf2udL
	 C+9m9dsY1hrWKMDmQJhoe2Kdx17SEJx2CeEL9+wkBHqn0P1TRi2LaPD9yboeovOCBO
	 876MF9MEhO0pnbHKuCNY1w+eVCLPJohGN+mEI4atihKm11u+YTvaSb2PVlR7zFC7zJ
	 Emmtt08gBGC8IjAB1rBB15sKjsQwf/Q2Ow3ba7ZXP0FVInf7G6Q8kySjj9g7ZQpg7G
	 yvPjmMtsWlHjvnR2TX6NfUnIZKxHYzxU31jploMmGPHmvESKFnilENVjB8nm3asQFs
	 JB9d9UJVoT9XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBCFC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171739292276.13110.3935767790299808011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9345215edb00eacea3203927ba7d5141e7f12a5a5e2c744fb6c784c40127e49
Date: Mon, 03 Jun 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717392922
