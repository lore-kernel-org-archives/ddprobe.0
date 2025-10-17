Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB5227A45C
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760717994; cv=none; b=W8pqMwnBAdzf/cIzdghMXr13vZTFbAjz/1GwfcUByl4rEEFOp1dSvMoYO9+5gXEXFTh36fNDttwY1AF2ICC6GEmKpKw8wFCZ1HTseof7ObpxOi7qckIiobT4AytXVcXHORZd6uJbdE2Ah08TuASMUBCsPMu50q8MvLJNhlgKF1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760717994; c=relaxed/simple;
	bh=Kv8BP1lS/F1ML979wMtlxBWDsAAdS7LXsKTo/ICZxOw=;
	h=To:Subject:From:Message-Id:Date; b=l7f9o8DeDVjojwRdurem1ROiFlkytT3x0uRKRq06etD4FX1CzUAvgUYW8hsML80CpGKaH3gBdTQ8g4Cchu8SRdIo2A24RnWXAqSz4UxbkIiBV62uhstfxJTB2i30SobvMFeQvBiiOvsszjA7WHiHMPXicNm9p8hKWqs6k7ProwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiJG27vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiJG27vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3BAC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760717993;
	bh=Kv8BP1lS/F1ML979wMtlxBWDsAAdS7LXsKTo/ICZxOw=;
	h=To:Subject:From:Date:From;
	b=KiJG27vyB/hNnthlKhcnTBZ3fcetIZlXYd1kICC9e0sEv54RbU8Maz/SAIW4pOVkX
	 jwPygvAIw0ch7Z+WNh0taPco6OqZfkXOPTil2ctby8U2Gk8KkvLImx6BtpG7uVjk88
	 PFWXa2rxJAQhqHiK7I2yoag9gMgr764g8wSLqh2NFD1LuDJEWobnt184giSlaWyEvB
	 I3boG2qgbPs73cS+U9CpQPOJ2GG185GdajvfC1Bo96UZ/lbUswynjdkyvKAPwlke9d
	 lPP4/zJkjwD62KuR1gvik/wH7R/C9G0Tsnb+kArFOQ16BkNkPRHxslI9Tkx9QFJZmn
	 vZO37JRenCSjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DDBCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071799361.21784.4522026544824186997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26af71efdc44f5a30816377ad000902418830c018e32e6c5f857d85da51a98d3
Date: Fri, 17 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760717993
