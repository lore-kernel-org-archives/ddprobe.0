Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6939F7262B
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779020434; cv=none; b=WcMcE824h6VlkKZbUstIb0Q9EurhT7LVAx2gBBvua/WTtc9kVfOHPHvgSfKGB92TEVZqcaqq5reYWF5zVOicRtyEa1qNd6EjWfEIygWtCg28C48FLhe1Mxp7PH5Eg74wyq33ti9Kd8ODy1OJmMgGTAsQz809iCCW20bYjbs3moU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779020434; c=relaxed/simple;
	bh=doqsRJG75rKulyiFkSf9KVrLTvQekkYqfJLMJgpUAmc=;
	h=To:Subject:From:Message-Id:Date; b=WzrFWX+CFXNtjQ/GklUgbaCqXukJg9GN93OrpJb/DbXoUcOvieNx8bvfbrCxeKu4WubwXdWtcVIqhdGPBaRfQM9XEVNiZzvGgbRQM/5ikOijkIQvvagQ9FBeN2TEqMFMMjzWiVUyHDVwueumMcJ6q0kd/oImhPSlBQWQx8edsdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+TrGusV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+TrGusV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0736C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779020433;
	bh=doqsRJG75rKulyiFkSf9KVrLTvQekkYqfJLMJgpUAmc=;
	h=To:Subject:From:Date:From;
	b=W+TrGusV3VjjxFvbirJ0zYc52eHYyws8TtxyN9BNAtBijqlgfmqHQVX+KEWHWlnWM
	 WTaOyDhEpEcakOqLnbhjJJ/o+ergMW+66R11sij/W28XS61KSoeUdbmRwvUht/a7S6
	 rLg7sBKM31cOBoKfeNrU20SS9I2dOUThQ5xLEyWZae5vvU+AUAdV3xqEfAk238oemr
	 Fhin5xgAR2OxHFiyGEueojhoZE4sn8ZKKxnq+TlJwMqYWreYEBZfazJ+lVawasSjQF
	 +mZtjgM2ExznmUyH23RyvPW7b7FnDfFf64Hw5I76kqqd/I+0BYc8eopC9wXWjsD4Xp
	 jfykbLCt8js6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E9DCD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902043369.30478.8072266962536644631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458f168e29e6ebab6906d1257d093f57eee2ac0f31d93b2acc13130fb224678b
Date: Sun, 17 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779020433
