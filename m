Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC6C15624D
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758652795; cv=none; b=Nr63nrrd9fplqmmYcqo0wUrGzTKUED1eElZqyGJao9/lm2G3JwpNfD8J8GMZlPCsyq0mlmytCtYGPWMzfN+4pL2aYvYdq4aVU0I32kGL+mc2gGegUZvily4I1hcQcawQyktmEmHbko7kK0/k00hkZUM3d6BNH3C3daJ+ql3Y7+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758652795; c=relaxed/simple;
	bh=euHMG5Kr/ncq9fX9CydIt51XgjHV0ZsdfSCu0JCar8Q=;
	h=To:Subject:From:Message-Id:Date; b=NUTeL54kI38ZeYK2z1XtwwMAhkpxB8UToWKNJUm9bIzWCFmk5JShnibDEcL2u57P59WzaMJBTY0SpzKPkG4uMEcHwNHjZbrNDTrQF1ZXj8uEPW4B1wf254OpJyGGOtvnX2cJ2rMs+aMB6sDexhT6PWmuGjnD1SHf2vlXoCPcXT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqFPcJ46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqFPcJ46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A358EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758652793;
	bh=euHMG5Kr/ncq9fX9CydIt51XgjHV0ZsdfSCu0JCar8Q=;
	h=To:Subject:From:Date:From;
	b=bqFPcJ46hmyHIpaWN6gsvwtnocFX4noDisbI/P/8FvFRBPWD5FqHEN43sRQF1sn8Y
	 B4Aw3TirEGYjfqDUo0kxKtkRL9Aneu18cMa4Os71eog6iRmD6hG+4grqOhfxFN4O/c
	 CtuGCJPgPxHTOj0hhZUu2M5Kxpmf8Av70n8WtrDAyfOCQouzwIvDJ+oPrylwEAkSSF
	 00nb2LDNcjl3Fprn0sPZAeUrSgGDf78h/Wjp9PW8jjUitC+jI+u2440EPtSvJQXB1p
	 yJAoqWCXR4xjasMTLlOpkbkslkWWKOKYID5jNUUAvLHEP3v8Ha3FD1zCB9pIbTwKyI
	 AjRNFGpqHlJ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E5CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865279358.22725.4189291865883805830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21af7ff468280ea6f5cc65b2258fadcbcb11186eeaf228a1228f663b59508b7
Date: Tue, 23 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758652793
