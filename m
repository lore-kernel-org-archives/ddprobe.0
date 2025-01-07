Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B51DE8A0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736242554; cv=none; b=MCo94IwbuMR0pFXYPv4nc0X9f+ZDEwJG+coyOFyFxd3levv9bCAsoKlIIFmZo4oTplDjw/Lpd3bMZSUCH4SEU5CzOOgeKiNgZgsERejGJq9BiVC0+9WaAor0HWxpfxy2M3jv5qds+VSC/rGDSg7/RgqzdkPX7MM2WudBqx1Y5eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736242554; c=relaxed/simple;
	bh=B+kv0fzl+M1GmqMoFPBcWVrJIHq6HQDLXvOhcF6v0nE=;
	h=To:Subject:From:Message-Id:Date; b=FY6wQ05w31HV3A4AqJ5H7CBe0PTGC65F+5fNKEPHEzkwhxbBS4aQXN2hsKwMxwOt9WRvRINu0rneobPHMhtl8Awd8av4uKH/ocKPpUieEB0MvGjOEWgK2xbuXJ+1OFfM2El/hlf3X8D7LjQw/R1+NkDz5vJcbnHMtcXAN1PqvbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwIxy6Lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwIxy6Lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C9AC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736242553;
	bh=B+kv0fzl+M1GmqMoFPBcWVrJIHq6HQDLXvOhcF6v0nE=;
	h=To:Subject:From:Date:From;
	b=SwIxy6LcMsubYfrFaaTYEfwt74MDIv+wtZwmKpNJnLr30YO1Z5NWf7T0shvhvQRsR
	 y/3szjobaSi/4gNfafplAOc+u20aJy+142i2exyAzDahIgzpiLmop7Sv0G8TAbkpXb
	 kKS+X2Y3oL9cvqR2gSL7y5AakrIOZ6UKLBGzGvdcAappVgEOfzPIPTISc4n97yokz9
	 ifg4HzXB6axbBuE10LYZbksQ9WVBYN/wvn9PZ33pV5Hr4UhC0L5DUaJ+Di/cI0oc7l
	 k+FVCciHpZvMEifH3t3YekHE3m9n6xwPumRYwKfDeMuG5SVoyrwGGIO8Psibisr572
	 Mt2TO7aTKcXVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93925E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624255359.18440.17293583321303677423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c0bae60680898b4ac6cad8c2ac3239621641fbeb74bb4455059b0382570fcc
Date: Tue, 07 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736242553
