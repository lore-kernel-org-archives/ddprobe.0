Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520E130F531
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784943634; cv=none; b=NoCp4+2AG9iJBpQu13hK0+QT6coTcNvlI/cqDVxz3pkHyZDbrFF4kHteB2mNCwurmsIEir+htD9/MsuvmuTvjHgjqLUEVH/mum04Tc78RnPR7Cap1A4UQ9nJFMT1vXy7RGIRassjG7M/AMlBaRkemy06n3mYYcRWAzxKQ6mcxNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784943634; c=relaxed/simple;
	bh=ruoFuP4EYz1FpaCfQ1Nefe3bMIoRvENPUl6dyxyYnUo=;
	h=To:Subject:From:Message-Id:Date; b=S/6iwxbrhEDcPRvvIrikrYU4/3YjM3nNEsJaBAnjUieXFy8MuYdnKDnRuklIRRx3tVH1SAs/Tag+LxGjtKTN/w/jhKnjMFfVM7daXJnrokgU1qwm5hWQqiqN41nfUt1kxTU72bMYHjW8GzRs5XLT3MBxxp45JOK8kqQevsnBjQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYF62Smh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYF62Smh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D48C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784943633;
	bh=ruoFuP4EYz1FpaCfQ1Nefe3bMIoRvENPUl6dyxyYnUo=;
	h=To:Subject:From:Date:From;
	b=WYF62Smhmmx3GPmiCGFo/y2oAYZd+zKr4EnD2h7Acypd3NJtec9FOeCnDigXkbYbf
	 grZZl4nGiRcIUDJR0eUFJZ1D/9qxkK3K6VJkRSlNTYZzcfR5o59M+5iNFgMJ4wqAVk
	 R7e9U9iYWz8tU/HMwp3Kx49mPpxD85Y+rQFIbk/Z8CBGI5tc8mpohVJbN72Bl+uLcg
	 OnasaDhhXajs8AJ1Vy7XqXCprr/5ZwLXhwT4wb7dzjrlgCQpaGm5uy02Ew524iO+BH
	 OHIfchC1DgOm9aTWTFxI2NrdASEzRPY2tmyhlZrOwGMlKPm7fJkTrRQZtpIz9ZfRTI
	 5I4yrjm0cK5iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EEBC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494363369.6586.7448132946742513069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1f0b887d914d2a8de4c58a3d1fb6ec3308dd2e925678cf624644c0f364c652
Date: Sat, 25 Jul 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784943633
