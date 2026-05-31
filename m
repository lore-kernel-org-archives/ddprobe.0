Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2272E7382
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780219474; cv=none; b=g52YZU7d0tby3yYIKt99WTL4BiUiYlkjBU4bgqzs1x/12vDRtb3zE1N0R/2KBdC76120qqJrQV7VhbWXIBckDkqGbxxakYglQjqEvO6Azx+XxZsrHjEIUuz6rSviA4WrZXMmSXorNDA3GFLrBl7WHchkfx2XB8AI4eGdEnyCxyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780219474; c=relaxed/simple;
	bh=GyVcFwLyIcr3NPWGlxglbjTETfGN9geKyL39F5sc8YI=;
	h=To:Subject:From:Message-Id:Date; b=ggBRj+tP1+jA7K0LVfP18LN04YRe6ujIY9unWqljSTRqVB/cs/4fTw5C2wejMcJb/GXxNEcr8B2p/BIA8+MQ2r7KdZMjLSEIZ8kIGG4vhpDOZp8VJautPyzUCpIFKlWJMtXMNTHFiPm9MeRvAc2KE9lTnR7JhdQXtoOIt5xgrjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVJuH8nE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVJuH8nE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27D4C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780219473;
	bh=GyVcFwLyIcr3NPWGlxglbjTETfGN9geKyL39F5sc8YI=;
	h=To:Subject:From:Date:From;
	b=tVJuH8nEj1L9CASrhPwYLC6ilURAQ5Ij/KfkyVQWMYYQYa6hXaSGhogHNmnxTJfe8
	 lQ2r7xalc8rkk4ehuQYksqWTO0Crc4LjMDCrpzU69Xy3/fOd+IIVz8p73uwMV3YTNr
	 Sz3Y3nG9Ufcp8s43VS4V785rg70petLCEgImFu44w2tpv+oTyUSC+6jI6YFWU6KrDH
	 LiciWlRi47IxFnubVY2RP+Y1WOefXG/mZrw8cKL8lFnBSHYUskoxMwErY955fnfiOX
	 /2tP31SLAeKROga9BQIA+epfAmhnwCL5KspebRusIsmtLkXTTKYy7PWk0FmvDLjb+W
	 5fLsWJ2dHyjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EE3CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021947368.9666.17136759093346818808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fd1e126af1df580293f4abb2df2ad5a911927cf00efd59f2fa7bacaa293e71
Date: Sun, 31 May 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780219473
