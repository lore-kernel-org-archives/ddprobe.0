Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2255B1FB
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730927155; cv=none; b=MJP22mrYfaGYbgMnx1oiCOy/fhq74phkSyYcHqG1J9ggHJPKipNE1iPgUyTw4Dm7XhcOOovwJ0YclYkYPvYdr5yJoXdXO5yRht1h7QqPzkFnJP39TN6gcSLw/w4dKQVwKPo+Sa8lfBZyUMmrE92gh0xb0uxx6fWG91/ctJ7rpcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730927155; c=relaxed/simple;
	bh=cV4kb+LR6HSViefpX+2pnms3eFq0EaOAvX6QGmsQV84=;
	h=To:Subject:From:Message-Id:Date; b=OTsy9y9XpkEdOuhgV0ApYGYQDXOgU1B/ZEG1nJDo7RBWIQ2uXOGwySojAx/PCWhmZ0UBXfsw4aTYSGaK0KnAU14qn/dgv6mqbRdCS7u4rkTxQ689rJ3oSIPoIVtfHkbe8f+RY1AgzK68mTBRujNT9TCfbUtXzW/1NnjXEIbvMf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muIrPDaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muIrPDaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD377C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730927154;
	bh=cV4kb+LR6HSViefpX+2pnms3eFq0EaOAvX6QGmsQV84=;
	h=To:Subject:From:Date:From;
	b=muIrPDaNOS6W9tzZPUJvc6xKI6PVmBM+4UlzZWkFI8z3y37zih998no6xFGtCKo+e
	 4aS57g19f5qiHy9rtv3NoJkRO/WcCjvYJRhwlsT1P9vZNWqGV63SW4p8ZklxLKP4Q4
	 1nXLj4u0/xDkFtPZm/BBcLWGrJHrtnoEK5vuluh4b4fy6E6EGGThLY2H5s2JKHGTS9
	 BwEp6dpHkFdOnXsntxyYmmVI/RivXZxKeZrk8+eq+sSbjyEqSOQSpIIyg0QluuPY9P
	 yqe7R0O8g5bvzK78LjzWDuRqKMUrz34HIINg9DZIVvLQghHNXUl1arLF6AxLC/GWKX
	 DU4tkXnxhd5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95832D59F75
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173092715360.9629.4165253163893690468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e3661117586ac49ddadb5819e6101fd8ad47ebfee9fc6cbc60badaa21170b9
Date: Wed, 06 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730927153
