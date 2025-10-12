Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF711F63F9
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760270994; cv=none; b=WHAeuq76R4EVxE+ER96TKVFawKGNknW7hHP/9HyipAkH4CiL2iIeOE7KGt1c+sSBddwxPV7u+6PRu5fC0yv/5B9kWyoY9/EIKSjVTBGv852Xo4xSmAV4CBAtYttwnxCsBjqZ5etXxJGsr2QcUmQpkRkgqX7fkOOCBs7AwJSEzz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760270994; c=relaxed/simple;
	bh=0IZzakTJAMcpTHTPkg2nfB8j/FpyncoHH847gfbbv9Y=;
	h=To:Subject:From:Message-Id:Date; b=n16X1/NzcMnRxAGHIfhEnbaHwBorzAihZHwHA/1DbFlvwP9anHZExHr6/mNFz5X/tW3DesYA0ZcJN7bLbNk6U1xl7D4y9GDv5SBPc0bRQmUpIg2xnJ0KsBJSOVlNbBvQgNpkGHttx2OC28PS3XHgzAdiwz7XiiykzslszJpQMtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGYr75wS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGYr75wS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9698C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760270993;
	bh=0IZzakTJAMcpTHTPkg2nfB8j/FpyncoHH847gfbbv9Y=;
	h=To:Subject:From:Date:From;
	b=HGYr75wSZqte17eBEWr0QGhLOpjt7cA/b+9o1DecTYE+PVtLZHohaeeMU0+g4VaPQ
	 7dsS5R0SPkiMrumNpFoeFKY/s84ruFfU1BpeJlzdm8Iy+tg+Bx0mRl7eTtybY0awCg
	 6xqptExhXCM2Gy2JCwKgE1PzosK0NA7xz46CbRM8THPI4D11dXLAiEYZwM3B6uNdaW
	 7ea9JYqeQjgasiJB1dS46YG8ycSyPSpI5bQosjmufcNsiH5YWb1m5Lf98yZwHJhacP
	 a7T5+bU3vKGKuKnUUV7urmVrysOPJbFp9mEO6UzUULmxJKIi+tz58u1ADy/PRpSz82
	 AsYtA53j8cvRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9698DCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027099358.2371.11512554874867737784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88038e5a4ee5ffeea6d2bdc2dfc3b6de1f61624f6362aa772535d62abb4dd6e
Date: Sun, 12 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760270993
