Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E51390CB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787018434; cv=none; b=Dq+vwh6DIGR2u8f2Rh43jUhAIQ4Mu20vuitAIZ/93Csh48Kl0Ga/RVJkhPLbm4lHCj5JZutSwq9e3bnp8R6Wi2bMzP1a8h2Zyjx7mCQzB9L6UkX2nXpUO7zDMfZZl59kkLK+9qz5QJT54C8x54vlaB3koouxgigr2MWmSLDVFbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787018434; c=relaxed/simple;
	bh=6OEsvFbrkfuNE7jOUL2MwSbw9UE7LDyIzQ3hjP9z6+8=;
	h=To:Subject:From:Message-Id:Date; b=OdZLwYp+K99ugVaOaJ4qkn2E7dN0kxEbFo5AtsCb59YEXAAvbQGGeJxpNwe6CWKEk/Yflgg/AQP7BMvLqSriXyvFijY2SGJ2XvQ9zePWMxdNw8fxULC659JPo0YhlvXK6PQdV9cr92XdGuqlo3jJIWB0h/BbfWr4jtMgMpGz/V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeZtmVnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeZtmVnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5649C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787018433;
	bh=6OEsvFbrkfuNE7jOUL2MwSbw9UE7LDyIzQ3hjP9z6+8=;
	h=To:Subject:From:Date:From;
	b=SeZtmVnR2Qcb4qBTgOXy5Ms0wIvbvEwqnaKGcvs1cSEOevAvJCtzX4gYWaOdKsHUG
	 bWFNT79LmvCE/Cg4Ms/oo8KImfNm0YqxdHAK64FMtYzAeGuu4sxmOSXt+1VKY6I38P
	 Qvq1IuQ4uHPjlb91NoPXa6oGLP+L8G3TtRKLgm7Gf6Ynf4LBZvqjkUzVcQKS9nKF+b
	 geB8DfIaVkI7Hmm5AcHfaChQrtSNNSa+PchWXMDHbmiPn9tjPaoJMyL50l4UR2fNku
	 xMjGwnqGOKY1/ocUYzTYqNY3R2u7ZOww6UTp9ZVR8aBDPtZ2QePnFTWC9k0R9EtvXS
	 v8v+6+OnPxW4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC697C5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701843374.7436.3552343301196285982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738685a6c2883905c05e8dd5d675722040c12b996ba475f60b3a7ca447525be7
Date: Tue, 18 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787018433
