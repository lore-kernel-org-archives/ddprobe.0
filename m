Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618DA357CE9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789535434; cv=none; b=slkjQp3WcSJgixM+LU8/8urm44ZkaCiMOaLPopQNIfK26++7NI2ngNzIqRvyYPMf7lXyBEp1DphsT4gn3q3sSYE0XESSg+7Uk/uagXP735LbEbDBk0+ie+W3ol6tGHf+uT9UwaWAVbHWuKFqTDCysH4jGCa9KW8Pp+XK4wdjklY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789535434; c=relaxed/simple;
	bh=6XPVCxhBMvZH8MOBMBWlyxgj7OQ3bsSopXrCeFlIpoU=;
	h=To:Subject:From:Message-Id:Date; b=FvWliYv0FiUCnlENBrJI0rP33/zf2Bxg+BwQKF2DkvuMvhxJMMGKfo7t3JGoq3AM+plbScjf5cjRFLNPTld6g/03UlRiDuSfj0fSdZbrJsF9yq4wg0YblNUjGdA1pnCerAyqgbznGDz0wkQ0dXXBBEWsWGCO8ccIOtTwrRXAeaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGwZM9Gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGwZM9Gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB43EC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789535433;
	bh=6XPVCxhBMvZH8MOBMBWlyxgj7OQ3bsSopXrCeFlIpoU=;
	h=To:Subject:From:Date:From;
	b=aGwZM9GxRYfXflpVchFkkNOiOl2GJ/5I9sPj/9Tuxfd5R4PpFTwLsGnHzd8PQ0/4+
	 WoKGC1QVBtf1ewscAkUxL2QEiDX5JgA/BoJRMo7sPTM/5EDsMoSP6tCDWKVDB1wuNe
	 mIkHR4bj9RZDEU9JiNlYjClTlHC4jhRUrKuiqL60fcR3uuh1aZBiHZopr8KkIIsifY
	 Wpu31Qlo9hhKhUKO1+/aUGwrcTpnq9cQ8UoWfW26GNnoj/fCpesBQOW/4FXH28BnN+
	 G9J0NGqqRijXLpyFlhdIkrfBzhkJMjY55RVTKcTCOnANdFNcKPBxmaYfw227Rn/Wll
	 zvGnFp/fPnaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D87C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953543371.11201.9955084793487948309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b491b7a0554a5f39c42b82965cee48e4dd28e758334c4f73559f65b1cef9dde
Date: Wed, 16 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789535433
