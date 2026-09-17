Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFE74A4EF4
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789679434; cv=none; b=Yf3BHB2GLpNkmifeqsiJIM+wQcZg/IfSAHUaV2V/wpmVbPGjLe/2/9usOkKCBJa18PYhlF3+nh3237CIqz7tV24n1SxacdwiCZ7X0mhHMaleryJ4lE6DFShv8yVxrNRXe96zbHD3KQScmv0fSzL60N0WgqgVEAPwEVvRQcT3Tjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789679434; c=relaxed/simple;
	bh=FlUbihrSzEe8uVd4/XZg9RtFept9fkq+KRbb4O2aHl0=;
	h=To:Subject:From:Message-Id:Date; b=h2ADhKr5w8flYl3IfdQzq2R+RbubzOP6g0o9Du7ynNcbCtPaTye4nrer6Jceoyou5VI6tG0uBCTb30TvRrrJPBKT4+RuNvHC1C0c4gJj4ZQ0Byn6vLpWIeeD7b8AuxNro01b/FovbCPsESBevsHgd5fZqwCAJsRi7Nw1Ie/0e8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnRSf44Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnRSf44Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A72C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789679433;
	bh=FlUbihrSzEe8uVd4/XZg9RtFept9fkq+KRbb4O2aHl0=;
	h=To:Subject:From:Date:From;
	b=WnRSf44ZAU1ERNXgnUIVWqvrd885xftwmkoApUh0D2bzJen0ejmVKELYFq04V/w2T
	 n481bDVcbT4iXnWNWGGelf348PbFf+ojWdi73X6sg/yA3WIO5ntjGIaNXxV5elk0Q7
	 jnpFf337E6i2wKA+QHUqpffnHv40wS4LHGElxyFNY0JLVt1nNhkCWCBWmJWa7l1nzK
	 xYXhMceM4pq7CYNzCz5vwBks/fI8g1070003iWCOMtemrtBJeIdUT7KJbXVkMGs4Ib
	 iYl0vVoIKr7U2bWFxG2XJbdjxXnRELxC9Rbvl2j1hVNxxA4mTT7KBPKL/nToCBtAN6
	 /ra1zLIRLZ8iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED74C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967943370.8057.9805037418859807212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7af37785eb294d5046e61b3b464f634b14d223cee9e9e900365cecd5540c277
Date: Thu, 17 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789679433
