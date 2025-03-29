Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EF3182D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743270594; cv=none; b=p70Ar/Jh+mSqnPHi7zb6sPFoaBZvgatidaRuIehjcgt4J8tuXHyao688+iChECKsVITNW0tiJ2+Nggo9BrU4c8ol0vWFLsnnGtohwFWry+6X3TOSyUlBhltKLoe+K68OSrRbIO+ErSdGcukxYGzEjwhdt32wJGUsktbxR69nAxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743270594; c=relaxed/simple;
	bh=3z84pWAjfPKVAChebhhhGAOwpv2Bl3Qg1rwzWjN52bE=;
	h=To:Subject:From:Message-Id:Date; b=uKnQqdjuBVZm1mPVAXOc2nSOFuIuhd6ooJdV7HcixYODTtI0m/heP6yXQ3e5ReSbo4dO56bNABIYAkHtka1kj0ur0zzFUI/onHWSQFmLFYpDRak9yAPRmNtopxvypt2QmgOw7RLE8Jecd6DSjSi3cgxSQebqpRK4FfRpeWGj/eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDwoIwss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDwoIwss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F15C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743270593;
	bh=3z84pWAjfPKVAChebhhhGAOwpv2Bl3Qg1rwzWjN52bE=;
	h=To:Subject:From:Date:From;
	b=MDwoIwssKWaKpZDg6e5Ql5RjJe41mVP7/u2V8m+ZwjzGKMPlg57bh1T2Wh2M0ysJc
	 fj25DKh7ETUAhN/QuQy5qLnCMDR8nBDOWZGyiKEXnTl3aJiBnc02GAc+F+g1v+Gw0V
	 QWx/Ytfpd5jty7VhbTzROsxRbzmS666Yxi5x5kyqFVfcmCd4h0DkiFPpQU30RJRNoY
	 W2RURNEFXc2tDSmz5ZzmKjxE2PaqvwCJFhoEm75fIx3JvqzLZXuaWz57p+XzzliG1V
	 kxO/Df6ofruulku0wJK2PMDw+v/6kD6qu8LyEfvTefeq1pbSPPD13fRrcnI9HzYX9g
	 MM359YZ7wtkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A311EC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327059365.18546.7144800262434145233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b52d9cb08ca46401708ca252ead9d261ab365b7b1a4a67e086f0bca9901b6e0
Date: Sat, 29 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743270593
