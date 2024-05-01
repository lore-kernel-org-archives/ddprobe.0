Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55675D52F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714599143; cv=none; b=lLFiBUR4+Hd1N/bo4vOrNmgnqbocAXbq0VUFc4dtZMrRFJTy0yTdVnq7Mj9v0Vp8diqRYPL0sJ3NlzZM4G/85ySrFNDNVa7OKOLH36aTj20vbumO16GjNn/AHuANRMPXtrcQ/ZxaJKFO7EGKiSwcYKFvSPW2l91UwGSwkzvvy5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714599143; c=relaxed/simple;
	bh=92YaoADm5h5YrXcikal83Nw5fD+LmsaCeTsstuLUYgQ=;
	h=To:Subject:From:Message-Id:Date; b=BlkxnLj6q9maQXXXdpLPuVw2s0zWeErz64N96jntyoeohZrfe9pdd8tFzsXFt2WYAdr6+IZZ9jXtWo4gPHYKDDShKSt9A0zCrGfg/wEAiQOTgLEWjs+szNwzETPOgf6mIcs6bYh5Ok0zcZsckg8Y3mehBc//UefoTPQnHXcYUtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r58dejPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r58dejPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA38C32789
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714599142;
	bh=92YaoADm5h5YrXcikal83Nw5fD+LmsaCeTsstuLUYgQ=;
	h=To:Subject:From:Date:From;
	b=r58dejPj04Fw2ylL2S35QW+XjI4xOSusO2KL3szwJF1NNJZ/cD1jHAf5PbfGOWTGX
	 44i6VQZVUjed0ebRSBgUpf0XmhorKjpzb/wDf2TPNavgUIV7hbuowU0oONJ0CB48Fd
	 9h1eYGMtAKkIT+MDegcJSkt7tNxdJz605DTogxDzynh8Q8djwwGTdlA4SezvXU0891
	 msAuBszyEqK/XWjg633WIG9ccWupetKOiVLu7h0UDw+gntu6qcvcQr+HC7Iv0BcFwd
	 7lA4BTriWguY6M933J3DUMmrf/K1kPMraPM/9MVEczMUKuNiIoaRkU/QDCUmUgftrD
	 nYYkqnfrUjyYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8008C25B10
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459914280.19401.9921797151328935149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139c848deb70e2ae0c8fd288df992c2e6d53a11ba02b365ca74410236d37cfb2
Date: Wed, 01 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714599142
