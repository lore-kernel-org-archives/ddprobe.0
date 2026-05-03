Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4A235AC3C
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777809454; cv=none; b=TBPSg0vE+585VjnwjaKLyGU9hwTSJNzxIndv5JSmXZOm6lRzBqg2PmJkOFwpll+VI86nHLsN/M5Ih6/Gj0e7f2rO3OXVl3V/OGtma3iOsemJMlUEIvgGlF1FgAoo+zXOIVpVTURS/Zb8mcrV9UwD+Bg+niFNoLcLYrWU0Wk5jY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777809454; c=relaxed/simple;
	bh=+lmIK3f9e5qDeHny50iHi2Wuuj+AMdn2YZfEOpDtGLs=;
	h=To:Subject:From:Message-Id:Date; b=Wh059AKu3yNcJqw1330oeqnvibpD3fqWOOAmB6C2KgNdNdVbsb7g9eElRctNK11sDSMizOVfjodwffFggycdSHtGLc5FQwT5YsntHvTl45lPgizLr9EBxIov8jEsNb3qEhchi54T9uFV+otAsRwz+/jDCl0+/ybktsMobLZSZa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKrEwsR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKrEwsR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B808EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777809453;
	bh=+lmIK3f9e5qDeHny50iHi2Wuuj+AMdn2YZfEOpDtGLs=;
	h=To:Subject:From:Date:From;
	b=bKrEwsR59YFEWR1er7TyIHHTI7Up1CONcf86IgAWVduAqGoKlFjugaZizPxy4UeeR
	 TQ3hpcAqxj5vWc78MfAOVacQu6lV7QdrpsYwW8ExjS3Wm8vd386rxRyMAPv9/PzYkA
	 IHFvsKgF8GM9IseK8yCGizJbXbw6TEKk81fhtveldARwUm3V1uhk1ITS+4AcvtlwBZ
	 1p57z8HNbJASCe3DtMLXPzXmZyyRFB6QDn0iaGOZ84MEoBTUtlHPUk+A6QSmtYBSlM
	 dCWYV6jC27mbB0Am3KI51weZEZIoxFwGhKpta8+/FSGa58MdN0WF0xw9Ojy5z6oTjq
	 Y1AVWzgUHsGdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1B2CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780945368.12109.16530920410556709223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7c179fce20031772e053836dea397cbdc796162f6ae6db02f6cfee16a34b68
Date: Sun, 03 May 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777809453
