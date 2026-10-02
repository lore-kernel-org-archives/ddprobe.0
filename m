Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6053B2580F3
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790899234; cv=none; b=GunfnQgk5BzwzeFxXfxyy2IkJ6dZ31WGKG/oioDG3eShDj1vmz002tmnNm3nr2ZLRRNcKSUejOJZRiK6EZ4RdWCOdlHP0TNGev1fyYuTxz3JjHkCoTknIE5ZC92w6bvQrLRAReXGR7cXiwVHuI5tyduI+pGm8ULgI3ULD5PsaVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790899234; c=relaxed/simple;
	bh=MZ7k1kz7sCw9Hxuy5boZc0z8hmEKfZp3vCytM+fFkFc=;
	h=To:Subject:From:Message-Id:Date; b=hosrtEgTbytIRB74iUMG6Z/7nMTmlbtyyM5uAQVDJ+S6Fsz09BZEBeLtnSSRygL3qZfpGn1uuH/yQI9B65g6UwOyWomBDxcl+woqszskaNFl/gpazcvN8DB3y18bA++wh46v3KR32u7P92ZgOFC9mZNFF9Gnk2OzR7Cms+Ncark=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tx/7vx2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tx/7vx2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B30C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790899233;
	bh=MZ7k1kz7sCw9Hxuy5boZc0z8hmEKfZp3vCytM+fFkFc=;
	h=To:Subject:From:Date:From;
	b=tx/7vx2i2gCYv4UiYwmNDeexcKASUskNAqPoGqmSeN2an6VGeGGV/nBlr2qooxRnv
	 Pw4B319fuEZZAKWNkyiEFC94e6RpBuyNUEmGaeg14WzGEHWeFZ70GB4FPBtqW721Mx
	 f/TtLkB5zikW/lGWdYYXOjM9C6BOokqQt2fTk5dmozh+RFItgHaeoFeTlCmjaE/Bqo
	 41sLSfy4yS6lpXMEOcgOeByIHrCcUXvE3x0Cbcr+7dySvgkC6PYBMsTdiVmSQdQun6
	 GHtUGXDTBNGUv5gREBdb8wgsBesO06FhRH2BYa9CNv0UQuDmpNY3e6B1g218GxD3wM
	 oxNkEi7ckY00w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F5ACA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089923369.7657.11947957376977331807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e0974841ea872458ae75d99e0d2e35b303843eabc607659995a33449a10999
Date: Fri, 02 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790899233
