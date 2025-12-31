Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B113112C2
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767164034; cv=none; b=eKF7EM1KIDZzwsQaYYdmzopiqxnr0TBdTpPbCz+f6c0el2EIf98VrJ65zL8aKD/FL32hkVQNuECIs4qakWtAoJVs38DY9SG3af0VgLpup3L2ErPHZ7Qj3NXPhjpwPHMWor0bRPNb9mKD7pD/HaSe9wep9ziuhId6IxahWA58bgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767164034; c=relaxed/simple;
	bh=TT6ZjEYIn+DusXFe7aERSLrnno4p/FMf/bfHL+/Sl9U=;
	h=To:Subject:From:Message-Id:Date; b=ruSYJ3BMZfByOG3OV0H9Kc5dhP3IFDc7H3cIsHrtb93lTbKpESxFLtTS/gJveZC51RM0bGRlazYEgC4qoMzgCCm+SbM3+x0wLGM18xuhTIs5Sy6NASapxsrmSYvbhQ46M80+jpX2gpg1J7KejkDMVtc6KogDyT8kjuT6dxrUDyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUvG1ylw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUvG1ylw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6989C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767164033;
	bh=TT6ZjEYIn+DusXFe7aERSLrnno4p/FMf/bfHL+/Sl9U=;
	h=To:Subject:From:Date:From;
	b=FUvG1ylwv6f/aBgEknkZMh0eWldf2FYlhLYBSoRJs/zIN/q6Q594A8idBsDfRZ2n/
	 oQvYDZSUZGOp2sGE93XvSjx7thW5st5RoFrivRe2Ggmmz+su9nsvAb8dRUm5ljrqsk
	 HRUAaNTEvGioIOhyz67GUMTB/tqMitB6YfEDx9uNtFFffWfirDbbdGhHNzQZklh7xu
	 DsX88FMuroDrASPV5oBdLA/4k2giy79Cw5OJM0xbChd1iqDcGpAWvLh5G4dZK3dtmX
	 1TSCeYt0QhrBfVb5E3vMBEFtzr1dFjzACJ30WYhyFXR9DXlUXE9xV8dX75jrHIWVMj
	 0uEeQGr7w2+FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D61EE57D3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716403357.6892.4317419819513934731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc236123fb101fe4fdcf63a4d2712b8a1b1f4aee297d848df4ccc33874bd1e0
Date: Wed, 31 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767164033
