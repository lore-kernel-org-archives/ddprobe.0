Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C5D3F8ECA
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784293114; cv=none; b=H6+PK/rbH7S29/7HU5DHHmfsgordBcmMEOJcQugMel/nPc4IUfOl9fL+JwHLde5m3jTgzjOUNEX7gg6Sof9EowGePCYDiv6xRoYDQDf6AcRZysOcKA9n6lNvMh1hNd/N/d9cRZoDeevoP7goAoGGqEEElJfcUjmVmYpwNE2iHC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784293114; c=relaxed/simple;
	bh=iz6E1t8e1M28pqpLiRXP978WZW7o8OatLR8dC1rMZYs=;
	h=To:Subject:From:Message-Id:Date; b=ItyTOwN9CTcQ7qxtuAI0ZwTpYecMCbDkZKsqxFQxJlnlSmD9hGWKY8kVflQcb/OF9gVm70lihyKA3hubDJJRLCugEhaW0AHYPZehoE3ELSNA1LLup2sC5MQuoo4FqA/P0GqMyZTWdWFPxWTgSq9aUk+yQdeQbmjXkcwcMT8FVlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfhKyBHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfhKyBHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E7BAC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784293114;
	bh=iz6E1t8e1M28pqpLiRXP978WZW7o8OatLR8dC1rMZYs=;
	h=To:Subject:From:Date:From;
	b=IfhKyBHGfFdXFYPa8zchu66tiFuRb9biZlArSYgUXr4pv9Zn/a0k5mqaPTzCF7roV
	 i6K3CoqsLjKCfbroS0bXSOyd9L2o/wXcFnj3mpb1HkezsMdHG4O5NtenZVvoS8oJ1G
	 sO0yUtZCvT7HeWyctDssewPdmwEVPP7gpJ1E3tx1rpPucrwROxCsx4KQGbadhwpt+6
	 ZQ39v5r5xsq07ttru4AQctQzaMZiRVDYBCYsp5F1qRtwFqthTCvAlAdRWQwuA/g6it
	 qI1fca7yERCGiZmVrp373bt7sX8BL7qfCVBgw+l+belPmeKogS/JUwe6l2nZP0NfVi
	 YBrrqadpA0LWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91C6C44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429311381.22524.144669477054943983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65cd813f0f179b1f15a75260fd8c39a418ddf20e685a00f80f88f0464a07122
Date: Fri, 17 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784293113
