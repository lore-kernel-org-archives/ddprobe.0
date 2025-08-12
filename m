Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2023C288CAA
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755007794; cv=none; b=oKa0pLyUXXgi+U/xYdDJerlG6t9+OAyv9tytvSbAVA9a4DjzV7XEgX7LDrU4WfOAOvdnvUTG2GHjGE4aA8sENktHy/o+vPNTZuCd+Q1VXl4iLXnwMkXtE9utROdRj846Z2J0wgyTMJviQ086kULB6t0hgTeHMbaTUlG7P+rhR+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755007794; c=relaxed/simple;
	bh=5RCEz6HI0GGCrTGN0DgfA0VieCqVUzI4MLYDGltBcB4=;
	h=To:Subject:From:Message-Id:Date; b=iyd5Fm2Dhu+nIYMmUKvfvzt06Dtpw/Y2XcV90i3M6L5mQY8LY43za2Lz0DBw9IycwJ2S2thS9wEIYTkswyc/R3rEUsOaCrWMDIftWGaSqrD1yzNnwa760aOo+ze4++y4xNMqeMiGjX2VFUZrqD2frFq+p1wVttS9MONr09NoQgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jutq2oq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jutq2oq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A088EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755007793;
	bh=5RCEz6HI0GGCrTGN0DgfA0VieCqVUzI4MLYDGltBcB4=;
	h=To:Subject:From:Date:From;
	b=jutq2oq4fRocGyJz3pQsT4RduzQPKwrfLoqSXV3VuN1h1ChhNBg1mvmiuyDzig/lR
	 gK++HqkQrB6crSEOeHpu34Xg/P/P/sd1Z5cPhLggUbgh33+bBtm/1sa9AWSlmlM2ho
	 kUKQMR1d3GWv85iK9AnjMCRHMPuh6z1LCkQ2RYN3pOhrxBSBzo7HwVZH0WcAuQ6QGx
	 3vV/Wn8wYVboHmyxijTPUlOE3eTBU2DTvFPsspxE8L0MOloYkmD8RXvsb64aMSAqXi
	 IbM9MjrY/Tl3/gWNA2HbcYxPxd55g5DOaEy0OllnL2NYTVd4x8ptKoEsgFnex8bSWB
	 oOLs1IENVdenQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E4CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500779357.25881.14136899993102179387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a440ef768008b6cb7442e01d101110cc3bf99f1aa3aca7b5395b6f2f5ec68930
Date: Tue, 12 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755007793
