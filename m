Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588493D1715
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784690914; cv=none; b=V/R8Trh8wjJgCH6nrRUa7PwUQbY8oDdG4TuArcYjV0QW6MuNwa42wvINQ6W9ocZ7Pxswy/564WSRzemxovWTXY9eixoLSb1SB0jO13jv2Sw+g0b/0zsLiRvlsYf84pQRZcQksk6jhAd+58w4vg5yvZRxPPK3cCMabEX+hPiyLEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784690914; c=relaxed/simple;
	bh=2Ia3SJ3heZrXbYIRe38ZGdSaMwSBZNw8kCPh1p/Dgec=;
	h=To:Subject:From:Message-Id:Date; b=DaPIXD7MRu7jSGCJLkqgGErxL4HVgGY8s5jDTIJhMCvM+24OWlLXnLLWBI0VzLRek9lAuTnuwxZhVu7jfedeE9i5MnFMaakO48PuZ8+VJSX8dg6FeFkJdF6OufiV352/vdfWv7+nhUa30+d8rF+f+XSvEV0TNZUizQSXRTFgTa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCKmcP8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCKmcP8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB183C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784690913;
	bh=2Ia3SJ3heZrXbYIRe38ZGdSaMwSBZNw8kCPh1p/Dgec=;
	h=To:Subject:From:Date:From;
	b=bCKmcP8l7LP967pURn8cDZsAsPvbO4muqNzu3P1Psqs8hsE3eWoj09ju58j7llnI2
	 /nMfJs758+WjZd/EXmPnKA71me5fU2LDQlVYd9B+xH83RtoQ6EgaC28muWcbJYxHAo
	 ZYy91mvjU1jRnK+/aWrXIpzwxqktAwwX45Vg08NVbUyVkwKpwBX7hFvCChxuwyqCjy
	 LzjFbLyKvtrjzBEad3fptFLdD6SFOAfmnNHzMKYTT/3wZugHAkhAKbXhwQniSn3iDw
	 0eWjVEqnePjJroE8CHbQGCI+8B+6OkNcRr2v3pJcdu8nxFaZB2ee8mHJEMC2tgjBzt
	 S4/Fd7L+tx42w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE930C4451C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469091370.11283.2320179997653049986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffd9416d6b7efdb3d055d17e8d52517f79a08adfaa5411543b06ddc3bef8cd9
Date: Wed, 22 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784690913
