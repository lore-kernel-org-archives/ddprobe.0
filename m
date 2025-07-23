Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF3B2DEA89
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753276794; cv=none; b=sqwm0QuCwLa+W2IQlB7dnl3XB6DrEwo1PjrUXDeYt3NVQGESRFauFk6TV04k+B91IcCX89r5+MFWnWPefFqyM27ayo2sIsIaSXOyeWNzyl47psvzGpd492c/uhlt0vocuUsHnV5u1GFGBSbXwPAEtTN1dWRbBXoFkq6jCIxxHz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753276794; c=relaxed/simple;
	bh=yQZnngau8hTRrhC6tYKLJ1BRvX11ViBsx/fj4k2o1Os=;
	h=To:Subject:From:Message-Id:Date; b=iUMazydXjJMzZa2vOgY3uJCaqf6Y879xpfv9EVKA787z86rMfWg7J3S59C08KAjltLX1Ijk2MbIIMS4/LPwSMllLlHl01ksbVjvQwhI54sEownd1TNNRyla4yNB4Mlc82bi4v28EZh+/kpSeMDKMV9jmB4HEk+L35aoFrFASep8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlBS5Rsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlBS5Rsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753276793;
	bh=yQZnngau8hTRrhC6tYKLJ1BRvX11ViBsx/fj4k2o1Os=;
	h=To:Subject:From:Date:From;
	b=tlBS5RsulVzCI8NA/EHcUd7AY+hJBMilYFk5jjgAkDxZK2rc4ipfqmwzAqEcrSHTv
	 X5KiKSx0bzIaekRQEQ54X+ZGEyBWDMJ5ImCQHP83FO5+qJ8/NMWBDRcmOPoYAgzY9w
	 SXCH+F86YyHjiXKX/Ho7RxI++bFIcKLtssg58OIsytfLIMffEZVbRokqxf7hJC+8ZC
	 C5tPtbOajGrKqXA/QZYWPV9SIddfdcraf1+kNYCp75Dl0VAOlGxW5HC9LVnveac2aL
	 nDovRud5HO5oFdVQqB4yLPuoR1th5dlBDOocOfWW4Owj765bRN1lNw2xRsyz1Ofdl5
	 85iM+VWaolcTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B7C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327679357.27947.17487206747208482256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f08ac637fff94ee03bc5e10f31e20c672c3c31fae2ec9bcbdef99a09fa13f6b
Date: Wed, 23 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753276793
