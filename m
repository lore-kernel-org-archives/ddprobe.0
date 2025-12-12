Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B12D2388
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765569174; cv=none; b=dIvavcMC93IFvgsEqlY8ScfAkR6lWHJsuWQIxiWrqzc5Z6CjWEOuZuSCkHUcHiR4f5AmUZV+Uqu+oabXDTWLMhkUaS9QUt0b8B7Cp0DOsyGsfElyvZVCOyOgRx0xYt3uEBx72wRGnu6pj9J2MMwUDNpxtuGJ6ymHgB1o4rhqLkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765569174; c=relaxed/simple;
	bh=aWk/uGExkABRFGSq+AqUd/S89UsB3JsvUBJrQP+sT0A=;
	h=To:Subject:From:Message-Id:Date; b=c+QhoQD0QtslLoRQa55hFl6IgoakTxFGAajAHIOLRHa+NokYoXrvyOenPeLfJRWiYmJmob01IeXReyJwSMc7na364nPhaBbUEk7ZUd0c3dv50ofRiSLVHJJbEiwS3V79KvcsdN2gdi/YH8ecF9tPJTCbYniU8/XsMfu/WKR8RWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIyfKC4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIyfKC4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C6EC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765569173;
	bh=aWk/uGExkABRFGSq+AqUd/S89UsB3JsvUBJrQP+sT0A=;
	h=To:Subject:From:Date:From;
	b=tIyfKC4yq2F5jFcvs/P+TWL41Wuf0EL4h36lJ/XD63nfepIqPAmZePsd/BwIzU9pd
	 keKnQJ/zsnHDO7JYSWoHII7kMTYeos5IrUN3on6mlnngLvbH7uAAPM6OZVyb1wveex
	 swB/bGdxGyy4Hf1gunW2SuGXaFopQU/9zjOT5lVNQbmMChfrkfvpRLbEEIGPNQ7loK
	 cyVtPTU8baqOfu+caOtBJbPZMra/2AAgJSyl9exLt7fSTK9bfxDAmvl4+3IRIjAtrI
	 Inu3jkEAlpHgpsgLrIiYlrEFY71wACLvmEqMAGA0I3w/Po5BiuRAFGPDiU/ykKMCwK
	 LoQuKsw2/LhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9B4D59D8E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556917361.15473.13422166549420185721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291626617f360a488f1407efaa7a2924f580d186d7fb7cd2c9da6eaf6fa2000a
Date: Fri, 12 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765569173
