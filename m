Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E76A24A07C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777238854; cv=none; b=qfS/iE7hB0mitKUqozpCS8bXv+9R6s2Z6/9hoib3YsP8zjsu6ZKAwCxxXf/tyJRC1OYeh57Xzj9p+TJ+JNb0/Vt962c8yXlA3dwhsPvxcyux3jesQxWpyBtj1fWSoXUe4/Z2LdLCbIlfg74rU8uQTvWvJYLwqdHOwgLzKO7SvnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777238854; c=relaxed/simple;
	bh=sUH7YHuZc2I3iGPfRdmYWKXKKswdJlXB3eQcBUUBrGw=;
	h=To:Subject:From:Message-Id:Date; b=PfU4Owtl73LXCMNscDT9lJsNhcS9e6yYHW9xeoI3Jdr9Y2qtlAfVCwavNTOAl2hHHVpjERdSrxbSB8rG9W6UdzvX1IS9eKcLL1/XdeiPI8m1oCt6nB76C2ipmGtICeWmlsYb8YCI+qYqaZcmLFh+pEOkqyfWv4+KBG+de1GZRVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSGfkLmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSGfkLmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D31C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777238853;
	bh=sUH7YHuZc2I3iGPfRdmYWKXKKswdJlXB3eQcBUUBrGw=;
	h=To:Subject:From:Date:From;
	b=YSGfkLmM8HuiPE9ycxlsWsEQ20TeOZelQOoyc+GXBg3gmYXAuJGvEWftKnyUVbeN1
	 cDTmO89QRFz+lDkNwaUJ5+3noxaNnC8fFndjrDkl1co0enYWS+GNJDDcfgXKaPXg/3
	 vig3GMf/eu03CMRjZ5KVR982Q8M3pcRZyDKfNDdTnrkIFD/pRn0V19fYztel8UuAkl
	 r25/7axatB5YgP17lDRrxgrLBW9xnF2bdsE4vsmkUS9aculnFaf/aDnW7pXtqBQroD
	 p/Y00ENiHVQ6r/ekx9Qi2rjG8jUfAYShxZuqskZwp/LqlJLNiwLRubSny1fIqGL0tK
	 TK8v56cDoCxEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC799FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723885368.31749.4853889134801532101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74aea8589f337c49afcbb2bf9fc49f890ddb3dbb665abf03ac17482351f2334
Date: Sun, 26 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777238853
