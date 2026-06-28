Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5C1800
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782681514; cv=none; b=mX7pQUXPtTuNoDn4n0m4zP0EkPKq9vz8+9e250rA1sMLLBmv8uWLi0reDPY90be5p1Zk16l9+s/jvFdBs4IbtY5aiXTK6Kl+RSloP0c8CFVsZRXzhW+Pb5eZHgyuJgvPC3kmTyUsYHWxWX1XYq3jHs/czG33aL6CKdAilsMhBCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782681514; c=relaxed/simple;
	bh=JplDTzk2HqCGJs4JAx6/nBvPZUq0JezgKRTLQIxPYsg=;
	h=To:Subject:From:Message-Id:Date; b=TH04xsAwkhiibOUVEpU/0VCj9t11/3H7yWSHcOejJnsIPw4QkBncKq++iBGyN/m4mufrnOZJf0GMejsgSpt7GfRgVqNuuEfbLRqSeHqVkgPXR43xYYpttCnxYG/l55c524SyQn/V7u69pCQgwIjVST9BnkaKSUzRAWrq22xJR0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGc0goZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGc0goZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3312C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782681513;
	bh=JplDTzk2HqCGJs4JAx6/nBvPZUq0JezgKRTLQIxPYsg=;
	h=To:Subject:From:Date:From;
	b=sGc0goZYzGIJ3RjhHU0z/7HSA3Q7cgxFYYkOBxEvZCkRQfOCfX926+jjYhbYkgFxZ
	 Ndq7zyDIvUpTHk/Y8vETsIjKcEhIYiEKbubd9zcwR5hFZKRn/4ek9/EbJzSDiOzPZd
	 WP6P4Vn+/c0L0mK/eyBXN1DI6CJGNN63+YOLs3Bz7DApItxMWqYW1nEObhjCDXMjJ7
	 I+NGqNnbAG5YqFMPtMP6NvwCsdQdz85ObXl3hNudsLGwqL1kKfin/tF9n0GUyypHjw
	 Qv9kZ3Imf9X7Yj4C5eJP2wWHzaYimJpkwsdsnNwE366loCzghaWdAWFyX7psqG4lUq
	 VhmD1t8quYo1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C1CC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268151368.7394.16201509087098692524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adaea0e60a63d4b6e1f7c82ad87b85a955bcf240ed9e80e9867e1f64ce6f6f4e
Date: Sun, 28 Jun 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782681513
