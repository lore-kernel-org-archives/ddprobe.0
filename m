Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA58C3AEB2B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784270914; cv=none; b=gibqNanhknCP8HknixjrH++eVRlTCz/O0azkMpGTwTWbaRlprPO/OGfBPK+kDmZiIMYYuSfrUOA8he5bs51+1NyTr296z1O9ADtTw0bo1B4EzEElhcD9JHRsalSTbbiztE1UPhPkPHyULgRG6DaaCUTAHJ3sz6yGfvKSdYut7WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784270914; c=relaxed/simple;
	bh=jK8eydHt0mi/nhGdnzhUdFuxUfI26KlW/zTRgdmPjt0=;
	h=To:Subject:From:Message-Id:Date; b=XEKiE4Q7Zg/gYL+ttITg8a8I7kx/5FELiTld8PL1bf1pnJxwyojCZD3BIsqq8rQIaUa904nj4k0Fhx8AekY3QenoU0JLWptXvPOVGBHSk1gYj8eiMC+2rMm7MONsM5/aVZ8ljsYjpVAjN/zMwvQS0WvbcXCqS3yB6VuECzJnEAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaEd93ck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaEd93ck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19A1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784270913;
	bh=jK8eydHt0mi/nhGdnzhUdFuxUfI26KlW/zTRgdmPjt0=;
	h=To:Subject:From:Date:From;
	b=FaEd93ckQb6KNyUdb1pcMovMGPC/myGAj2zDmQ02WmNQWo54PwGTfxCckxBOckY7z
	 P+Wbe9/PaNWiJVpA2tErNqH0fXKJioLoshlGRqC0BfF64qJYKIp1fcUTV+v7GAU6gA
	 HpVdDsfGeGJuNH5a/r80wY20bqnscbworexNDy1AiLmWM6IVaBnXWaI11g10mXQypv
	 o6Kb7BaabDJUQykgjxvEe+yzSFgMmz6UYMJJdBlDfqCaa0rWuywnbGIGlGI+7lt5Tn
	 Hn8+KC44Jh6+KqwP0QzWkGLt+85e7EScTZSx4ib+B6kJbxtqjT62BlFKcC0v/L5UUr
	 ksugBvuSRPCXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA426C4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427091368.5687.3105061539245382950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850c562512e26f1ebc0612dab297d64eec3969dbeae40da3859560baa1bb0e7a
Date: Fri, 17 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784270913
