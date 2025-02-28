Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5CB17A319
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740715134; cv=none; b=UqtNDpETwpEY+kF/ujX2xV7H8AhQgSEPQCAuitojjqKxHKxhMEd4v2x9vz7la519bFnXXT6OwIyYYhUMcmkMQjRLrHLJhxji224aUMcQYQuajbUI2RA/wOkKqOQ7mrf6bmIc2WTewmhWLKFX7WvAuFChE2oE+22U2x/avpk9FJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740715134; c=relaxed/simple;
	bh=RqJm8jDqHByY42E3mOBgxqhkgdD3Z6tNeDYHKE98wwY=;
	h=To:Subject:From:Message-Id:Date; b=Hn0xy96n1uRkY5KuL41ju5voL0jI1NN2nrjqIWw0TbAGanG7YMa4eA3eGFcASR66JWlyuThWozsDVoJqFT6EmRQCSTF/7l4QL3eGN+aN4FLKDLRsVqHpeneUEEESchtD0BFysNDznjRQuV8k2sFNZgwlfZvofxET18QKCGl9zWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxW+NisZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxW+NisZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEB7C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740715133;
	bh=RqJm8jDqHByY42E3mOBgxqhkgdD3Z6tNeDYHKE98wwY=;
	h=To:Subject:From:Date:From;
	b=ZxW+NisZcaKFRr4Whsi031k+7n60bfvvesiA9vQ6qaSu0ZpULx4GRZ9fZQF9D0Ja4
	 Aa1+z9p10x3kex7Ivs3XGPpJBoiveBvh6GWiqpiow9T2fx/2bkzDXt0wo2t36oroI/
	 rKUHGySYC5bmnhTtizvEeKaVuZYJht1+PrnbsrhLIhUlCJ7+j3SRAkb9hbo+/0hr0W
	 68RYhY8nDJ2joyh0jrV4vqm+G9VfmgkOO8/o2lY/eEWiLUnNcdkfUgVvEn1xEkzF/C
	 AhsPKdANOWxfuepkGPFtge534Wn5bX+roWTlJFxoRmiBzaj7+2ivJMrla1YPwgBeI4
	 8B2yKYJ3jFhdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1690C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174071513364.20402.332385463142790483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62851453cbca942db5b3d37bffa1f0c84624843391c5e4d67109e85ff50b71b8
Date: Fri, 28 Feb 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740715133
