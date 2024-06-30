Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF353C0D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719724463; cv=none; b=pjB7IMeqYTZDMHcgvP5XtkqBSWmv5YN47v88/EFtKoXowBEXgg1jw2gx7Zn5BpnslCvVV45EBBHK0w9VdmnsfPt932Jc9QdkmBSMNsobv5BykmIaXqugPGwCLNpQLbq6YlV7+jwr/XRXl1tyJavKUOq5WUHfhw7cKMdaVLz2xvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719724463; c=relaxed/simple;
	bh=iwvedQJqnijGlUSDehaeJSRzYo/rSjQaej8izSbMMUY=;
	h=To:Subject:From:Message-Id:Date; b=ipfotvWi/41bHlsZLnYa5pZ8+or9K+rTvRI5UvHFhZFypme7Tjp4xLvuJaVGobcGJElM2HWINiwSLAfYaj42D8o4Z2YIeGvLowfmnqJDzmBs212SuU5UZO1DqxO2uLJ+cjvd16yPtWyQmQuOcqrmnDBuPBv2ukFQGc1Ncd+/n4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KejP+1RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KejP+1RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFFCEC32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719724463;
	bh=iwvedQJqnijGlUSDehaeJSRzYo/rSjQaej8izSbMMUY=;
	h=To:Subject:From:Date:From;
	b=KejP+1RStCkATgqbcXUmXMUernyxqpWx9rDDiXY29Y1KJ1rxDUaIIko69B4ICLJuS
	 5CrZBK+tDNi44uu6b9QlA2c0OyWKU6M5W5aPU5fDi/HdFWGGWkYLdda+dYsPRLFGHU
	 6ZIJQUa0HzvE5jwn3nDNn1qfeeOdUZ7vFpBEUrGfxlPc6iZ4JO64yFik68nS1PslAW
	 Lrjn0Wj06h72hiwPkdfp2Epndt9xOElDjT0f7eInfqxxEn5gagf+d0w9edWpAvcSdd
	 y+UsTWUSwFIeJFnxO6HbU5L0fRBKmwejNvzSvHbkOIFh2oBKjbON2tTxgHZgkxaXwG
	 elr61z2fwUGCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6299C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972446283.3784.10080642310440100012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07adec19aaf13c774222f393c37fa72c3b8e67fd3673740fa12aeb058b63c278
Date: Sun, 30 Jun 2024 05:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719724462
