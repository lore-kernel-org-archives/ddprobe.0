Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4FB3469FC
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780163014; cv=none; b=bmIof2H4llkqIapa/uSvUWB+HlbdxXjSFo3ssaxtyCg6/jcrXhndeU2NgatXhmriMSAADiCuzR9xV08oFK1wOZEXg0s20ML9QKPwW0gV6B2N8p2QImvP2tsp6x8kFT6wN5TlHppdv6T52z/jKXKapcPbnB/QDNopGbeP9PNz6Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780163014; c=relaxed/simple;
	bh=c32TyHrtSS3hfu4XNqh4yRgr/1kqRk+KQ7a29ryA8MU=;
	h=To:Subject:From:Message-Id:Date; b=YxlVRmRHA/JyHS2w3c462Q5Lc91ysWSC7Hp28gmKpEOhzO4OSS306pw963TnesuEB2tMCGNhAncOXI6v3b5aEDE7O0H/5djXefj4SlFxJlLbzFAGtWvWpp16SwbiNVpiCoAMmIldkgsejOzifqICZkpI1scdoKTQRxTHZU9Lw/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgE+jVmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgE+jVmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFFDC2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780163013;
	bh=c32TyHrtSS3hfu4XNqh4yRgr/1kqRk+KQ7a29ryA8MU=;
	h=To:Subject:From:Date:From;
	b=VgE+jVmNA1PI8zLWQlIQYCHw2SuyyEeKJ4hto9BjaWIUK+AcVDPjQnP4SOLo0cSdJ
	 2zBSSIwgNE7aQn25J7jQLMoY75JDF8eeA0aVh4UOLcu1jWWFUa9is13o5RDAbSkmPj
	 XlzLG+/OXQnnbWpDezmFMctdmdc7ZbXB+2L2eNA5nRjeDe2W89WSYhFOEzJdWFBHI/
	 0kFQzI5dSfKzV3/pHDoa9i7mLSbWKnFwvjKwxQpyc/hh99zYW0uGR3xsbXWEAJVImq
	 Jx//tQ4J9G/xT1zj2kL72Huoc8ICYw2eknNaexjHSzSzHu/cHH1MUs/sT9ivWwIZVQ
	 K7SskSzntcFuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B3DCD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016301373.23400.12704579158739550731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed0dd13ed1e005a33dd6fe7572020f9412040f6c92fd12ad9020ec3f39ffea1
Date: Sat, 30 May 2026 17:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780163013
