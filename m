Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE41A239A
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770463434; cv=none; b=AtaZlJBoec87OW195xtejAVEDj8zKAthEU2HyPl3Qw5/iD9zLFiOnCeiaFmyn5ltT8vVV5Zxx19x/e//YwrNkELrRyAQBTUggcudsQnkFzuK0AHV87DHXdXnhugVL7ekkUWchpRKrOFkyHuXHSbuXiUd4SgR5Ak1ARMi+MmUAG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770463434; c=relaxed/simple;
	bh=rAtHkfoes6y4B4yAQk0mO94o7lGg7sbTwMJgW+howUg=;
	h=To:Subject:From:Message-Id:Date; b=VFG1SLb7yrj4ZFpPi0OEsUrcyf9410MXFaoiciyR8A9pXpLaPbww4CL+72P5r9sSpp1d77h0jFtNVCHrqt5Belwy58BrBfQbertDDflEiliphQbrlsheqvsUcY/5YfuFTLPfP1cb35Be9or7PgLHQHfa/IvYH3yo75pzSDkkJH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTYfUVaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTYfUVaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2405C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770463433;
	bh=rAtHkfoes6y4B4yAQk0mO94o7lGg7sbTwMJgW+howUg=;
	h=To:Subject:From:Date:From;
	b=aTYfUVaY6azs9eA4J3OOdpfVfBHanFwS2JyrSIvP4C1ybQyOP0Yn6GBabDI8Z8U27
	 75efr6ToJojjPvajQVXAmj2GwNISVznfNuFOnl1cvnWhqeBz1yhu6Ygxy3FJtU6f5Y
	 0ekjOKunY2buwOSK5n66j+Wsu4Ow6j7YcarbsYbGKViDp+IOQQAvhj7EpjKiizSi9g
	 2WqbewRp/5eqUrszqV2DEXJR99fcvHRMMmK4HcJQaFNWftJAx1yh/0PdDeM97mHdXT
	 pP/RhQL6n4ZHldietmHo7J/98z3fsT5ej0OtxRbakLRYIIY51kHmxqlvnEbehn10cW
	 fF/O9mLMTA2EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E927EE0AC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046343358.26893.6558527029335767755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb32dd702f8575c47c1562b30a014cdfa1d8f6e0d1ead5672ae2fa3627499f5
Date: Sat, 07 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770463433
