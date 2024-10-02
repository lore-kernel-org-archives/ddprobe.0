Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D8A1D14E4
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727889353; cv=none; b=ZWRAaTHolKeYlikstJxp0zBOX5jC+G/4X6oL+PV4jjype5I+Hmk/m9h0tIV6e8uYtg2latxk+lr7JKOQ2JixdRbmNrujQ+nJyDFOp8oiK5ArFIlMjwvdkoiFvsbhO+wtuY5T2OWSkMZqE+XCE3hg87HhsLMHwdqux2aIc8HRkWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727889353; c=relaxed/simple;
	bh=iQhtbi5mcO9rcz/HkHHFfw8fXY3MtUklZnl2sc9B1Gw=;
	h=To:Subject:From:Message-Id:Date; b=uBSOhWg5G4gP6Vvg0o95eaPfxbNLlJ+SBzNu/2dU6Yolyow8Sn7nfhiL1Ncfpr4H2Okn/NlQWZFK/B8uUZXOVeNm8wNkKgtpPSyMw9t0FOjMLdovFFcj+nLJduTG2vNT6A4+kbFt0BTkEQLMUXtlniOumeKeuecT0OTpGGu90gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPufNP53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPufNP53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8704C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727889353;
	bh=iQhtbi5mcO9rcz/HkHHFfw8fXY3MtUklZnl2sc9B1Gw=;
	h=To:Subject:From:Date:From;
	b=FPufNP532H0NuRIFaCwltmshaOfTEd2661ty7fJu1m4rh+KTGsP012MmLXx+Wychj
	 HKAdlutvPyA/UJ2vcqCyfaCWVRgT1/DPpzU0JL08kEGRG7DNbeIRGwuWcC+7C23YQS
	 +DoLRakBMYgVf1s+upNHP5NMx6aig8DMKXn/Bhv7aRl3dntRIJ44LXwXqd7Scr3N32
	 WspjRt0OnjMhmONG+QThUV5mp8KNM306uwwekC0SPmWjxqWKMZNvEHWxUX1th45dJj
	 bI5EgvHmBSH1sSq+7Baj3ECDCya/OgzhOmepT1rNPiOjWVfMlf6NgQqwkosdvWKCow
	 JfK1Iy2jK7Yvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E27CF6D5F
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788935359.4443.495265727024228668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b67ce7dfbc934af0339569c50880f609861b16a0f54a4cf1effaaadfc67141
Date: Wed, 02 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727889353
