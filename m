Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECDF1CEAC2
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780194874; cv=none; b=ATe3mvSxuKPWw06hMJay01X+f1vHfj7H6TFC6NILcTqf/qSKX1odw18tp3XpDuzQsti3Uvw8GbAjhA6qj30N/EyQO6mLHqRxs4lQSRUqp4JLPe2DxyUj62sw82hKvd1UynBHOY04EO3skACOPoPElacQyFRz9ZccF5mIsHB2+hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780194874; c=relaxed/simple;
	bh=/yI6fGMFlmKYo+bW7ki/7eOq7oHcxmQM5HUEvsssuEY=;
	h=To:Subject:From:Message-Id:Date; b=hiRzuEnfJ4R8IKrTfi6PhDsiQsB/riwvOjGAuFtbmMRZ0egIsoiHkKFMFy7vz1JYwO3sg0LYUQ9vy83Tm/H0eyThgglry9uSU0iFkAwndmnRNtRw/wz65yAXDbaQu88v2tEbue2wcs6TLrHulC+ukMXNytUVoZO+7OJztocf0n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+EiPGsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+EiPGsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2A1C19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780194873;
	bh=/yI6fGMFlmKYo+bW7ki/7eOq7oHcxmQM5HUEvsssuEY=;
	h=To:Subject:From:Date:From;
	b=k+EiPGsgwjZC6NyAgJ9p6SX19bPwHh49ta5jSFWhVgf2/k6hdHYDcO7/gHPSmKecy
	 yTT32WGwFS0s1mzOBTdWYVaDV2+MXLqvQ37HZ0MBGlA9CssWUNprRuII9lLLNsjbps
	 fSVxJdGogcDIRmAJoN+PeDCYTvkdowen/5LX22SgxGAttIfNehnJADothHmC1Nww6g
	 7LQrS6Uc8DeBZYyoS/rpkvKwuo05MS1JjJa8UxC5qF8QQ7Hd5ZN+C2itnMilS9gX6G
	 unSYW1v35FvxrGrHPFOtFZyzZ2iEuq5iKborVx24XltXVYzItpbn0irGv1JJYJl3tm
	 /kpoFRXZqhrig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC8ACD6E4A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019487368.4313.10994509775809959959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f2db09e2a66d322522904a59349720a7ad441eda5e351df9da2ce8026c90a0
Date: Sun, 31 May 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780194873
