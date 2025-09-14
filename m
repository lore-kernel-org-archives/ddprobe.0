Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B5F19D065
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757890794; cv=none; b=jJP5NauALhmO6+9ZM45wFPo4y3m5fKZaRiVtP+tnwTfImAE/QM1VMrqs05Xr3wdQiQjS0M1127mdgj6lPqZcdAPqZDUY1yLbFzH46OhcsczXS1Iz8ODOM7YzzDAYQzI0VdYdZ1j7RH/Bsh7ddrMCSDEs4xngxpAIdFNz3Bj7NcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757890794; c=relaxed/simple;
	bh=Z1U2qNhW9EeL55wyqMH1numKRya/4vG1Jvdk5oIVhdo=;
	h=To:Subject:From:Message-Id:Date; b=dFwkd0bVIY2OPkRSHyTdYFgDCVOcmoiVqwkx6Ix4+iPz2GJfoVueidMwAr2q4rxwqwwmhpY7WGC8Nx24voLdhzKjSz0iUNOsXGqjxgkr6+2JRBBWuIYNn+SuCXyECGqWGZu8FCimPon8hITf+7t4I4TVnzAW70uO9HIVJIvTdjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBmcHW7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBmcHW7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F10C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757890793;
	bh=Z1U2qNhW9EeL55wyqMH1numKRya/4vG1Jvdk5oIVhdo=;
	h=To:Subject:From:Date:From;
	b=vBmcHW7KRu4FEPs6OF3d1MPaO2ucwXJCfFjiSgnd6z8IwtKFwIkUBGNVT3xnFZDmR
	 DAN3s3BJikIj2nveBJ0oShcnMtV0jAVAdvlsBVReHXbhrMsnNxveZRhS3wAuYDOTjz
	 7OI2psMBia1NOUCVf+0GzOUiNqvOCi+EM+Svdbv1ikaibI2RvvYya80LwltvMGP3Mn
	 /q8ZmWptONGHUiG85asuLlYAojWtDVotiwlAYpqNeIROkTY8jtMhCKd/9mR0Fi64xS
	 gVue3eoBT3HXGTvqVqfReRWzt2FhYTcN5o0BeVWPcse36Iz7+5/oQ/UDBNqfpPOzj6
	 VppJg04iM73jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E5CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789079357.6621.2915575891286196031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2398c37c72de7185936813d97c91762b78acbac6e5df9d4e4d829526d5a978
Date: Sun, 14 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757890793
