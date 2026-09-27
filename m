Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5797F320CB1
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790527834; cv=none; b=klE1IdLW30IF90JaIu9/PD1gu1qb6zTp/Am7lxQjVUZTXMUDwHiA1pu46AeLXgy1mcjHS10NN3tqutLWFd3OJ9ZymVgI+DOSdxYxd0M3H4YkDxrc2wh1iJdoeBU4jM0bhnJRJSJQPy4iEbTeInfgwZFjEyZQvMUuuNRKSrfiims=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790527834; c=relaxed/simple;
	bh=6EEXn3jvNeh7anJMexfq0ygFx9Ti7daJ/NcNZ5L13jg=;
	h=To:Subject:From:Message-Id:Date; b=KnWB6zLXtuur45UO+Y30zUkZzNUHqlbbQFxuPG32SP+wu/cB6YXmTI0J43tTNFQgHmcU88KTU7VqZ2KxJoRxRDEi9O7bnkcUC0dP972NvqqjYcgv6Ma931Yein2W/yORXMZUQOXABxbDTzeMYVWSdexgb+phIuCbPJbeQR1FLoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckIRYCaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckIRYCaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78E3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790527833;
	bh=6EEXn3jvNeh7anJMexfq0ygFx9Ti7daJ/NcNZ5L13jg=;
	h=To:Subject:From:Date:From;
	b=ckIRYCaC+wEj1cz+dKYlUj1v4ZQyaoFOEV7Sj3ufDtIddR4720GV0lrgDeaKuQNld
	 7NOyH4TxtD6BZqX8WW8qZpE+ZImNP4bnktQQgfnvHiTcQDnyMB0Xw+EC2weRyVSqXx
	 zigmVpV2HnbsLLyov2isYA6ZFMUGXdNyRncmyf08n1Vq/Jm487xQri+oebcILQ97zh
	 yuP7q4sXbbc5C9cwFzHj7q5HGKYQjlPFU/tmavK/riBgUj6Hxcsb10raUpgzBM7u3G
	 qAZ4ItUuDxm6hgCip5CUp8iALMDUOSGkuPiyYsvrzgfkaipS011E7EYcIUezCF3PWJ
	 iMqItsEdri5cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD68BC98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052783368.4869.14322490990664188365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d802f80f09a5c055be3add24a7129ee8136c16538f36456b73827865722ebbb
Date: Sun, 27 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790527833
