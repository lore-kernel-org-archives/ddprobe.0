Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E132135B
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725907554; cv=none; b=ZDvFMNl8OSI7FfGGi6VAd7vDpPpBRfQloAQHprvdb10K0vkmZS6jnNDWBP62TLZ2RAPCVD1Ob+3p56jjhXfndQI0Rqfj1zh88c/cGBGKMmBKFslrP9LmoVRG3BoTqwDIzg82yMTvJyqRQCJs53WJ/hIo0sFOIEPPGwE0mwTVHWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725907554; c=relaxed/simple;
	bh=qDaYyMwKezAtfOiHqlRyOvKoE+zruugVTbyxndAiHak=;
	h=To:Subject:From:Message-Id:Date; b=lQss8AMF82XzeTAntTp6AfSV1GUXxOHaPEuvUorn4MZHxhZ1JrLvGL9rd4BAtseWTyC3n+vgJF7Tm1cuvSw+/+2P0z3/56qz/w4X6/5WER5G4+ZE4acTiQEHpwUC3wDChzqYWSUw/CEEyCIjtn7R7Jg6bDWE1ThVXWaWq8gdnak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2Lwan+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2Lwan+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8737C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725907553;
	bh=qDaYyMwKezAtfOiHqlRyOvKoE+zruugVTbyxndAiHak=;
	h=To:Subject:From:Date:From;
	b=f2Lwan+mfBC30gz3ymzspZrt8Apo8Wo/xsFdlU/BXXdZwj7hK0M2zBwkP9izCTi3F
	 Qhx6y7W2VszyWGM2S6XW10A99lBP5AD8Zs84WgR1UnET8zLuVSgsuBJ8MnJeCoqI1v
	 VXYwg2Iw9bE9FlK7XSNr0PQf24dOuUVzQ/rUQKAWtrflUKGq0On7VU1gPVdVKoPw9Z
	 TKl4B8TA/ZoWq2DPj183ZWt1oZ0LdN3l5eRavGKtLBhptxlCMonclXmr9BJGf486an
	 6bWNyGhU+YmtyaYST8GrYRPxg1oOTb0d68SYqjJSsstErMfuqjdCKYImJCOcYFPtNi
	 hAvSlWgrtL7VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C62ECE577
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172590755362.22573.3200954693045352417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70e48dd49b0ef47a8f19aebc0c42ef899dff60c2979fc2d55df90aca9482d45
Date: Mon, 09 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725907553
