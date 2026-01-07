Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB4827FB32
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767748433; cv=none; b=URyDMpnYCZFn84sza+QoCK88sVYO7pj4KIsYsyZNzU90AwXvlhQ4dic2iH4yz9jmNJix0Nx9UcdditP/nessa4qEYEVSwAv4+U8U9MWVDjapum/KqXnahbjx+HfLqSIjnFJzIfaEYqsilrC9pe55Vs+DW4NcYejgn6qkvJDV1j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767748433; c=relaxed/simple;
	bh=GWPLymgzzJj1XKGcHTQVv7/8txSFHK1VdaZnhUqqgCE=;
	h=To:Subject:From:Message-Id:Date; b=NIOOzqwlWM73D6GI82HsAAyH3kGiPP3FUXXRyzgJCZlLHTGtrz9CjASp1iylIAAmoer+oQbMJ09TovwGZtprE2PRCTyF789+ty7RIPCxI3KS+lkn/e7wSpVwMUXHbOlkhEtJrJYjkOUphodUm3cWA1zlObFleD9li8ZiPO02B88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwIsIJss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwIsIJss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C33BC16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767748433;
	bh=GWPLymgzzJj1XKGcHTQVv7/8txSFHK1VdaZnhUqqgCE=;
	h=To:Subject:From:Date:From;
	b=CwIsIJssbt3rfDOe4WJP7szBrPs6h9nI+Tr0Y3X1m5BBJ2GMAZFMrDjM7hx97AGcx
	 2d4bh2d1pFe+su8otkA4oZFzreG123RrpKDtm1dvSUB3sbQTlTHMOrDqPouWdAtCB3
	 gBjPLw4287CnC43CGJi3HSo3PaF5/ogmz9ObTY8WcCtSHlUmm/ucTf/7HKLIxoq2Yx
	 iVc8DwvnFrTcs+2TGSXsk1fdTTaKnUtXIUAJ8SzivHQE9MHMIl0q4OoEYqqf40UGU9
	 UCvz0pPAEmarJMCayahvas4gvl55RkpAq4xmkWgYaOqiOZEobahz424VlAy3FFRegR
	 RVZWPxU9t8KOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25CCF6BE3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774843357.29801.440763000588323196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1e56d51b8beb5d53f09a110ca9f717de943430a8be90b99237c6ff772ea286
Date: Wed, 07 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767748433
