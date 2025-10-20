Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1681C695
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760938194; cv=none; b=RMruk/oLC0bmdiugyNAogN1LEsG4WEjOcQNmbq+p0mtJe7XTZvER+XRu6N/+F+owH6bjgVVOMZcE7JuZSZly1EGtx1/EJoBX6hdbgYLTFzZJkHDOvYUY0J9bNZUnqf64IwYAn4o5jo35Y2mNrCTG7oPvP8kld6DQ97RVmr4VZyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760938194; c=relaxed/simple;
	bh=Ie0X6HnSNNrtmhmmce+Jsy6mcyQTA7/jN1QUGefZAjU=;
	h=To:Subject:From:Message-Id:Date; b=enpJ6oeok1KsuPuDe31eCM4hrdwzQNPcC+8njd2vOkllYNo+roXKXZoFkCJRGNgehE4m8e+++JviGIVqInCc/UIP1RbXyNSiVeHIXjq57VUkHUH4xyZl7UmCFiCcf4PKJCnPgGyXaMJTydbjXzUW5xxnjwvDtYO3K5KI3VBECok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isgJv/IG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isgJv/IG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA36C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760938193;
	bh=Ie0X6HnSNNrtmhmmce+Jsy6mcyQTA7/jN1QUGefZAjU=;
	h=To:Subject:From:Date:From;
	b=isgJv/IGjf6m8majZ2Vh5hE246aucazoUevq9uQIVrCve19iLj2aDKtsUCxIWzqfJ
	 W230gYGA7rWbmMgVEPxLAK2oG5g3VMPP/rDaOiaHmNO2X1dVgWl2XALJU95iCi6do2
	 4DIFrgPw3TQ1s247c4INtYVeCmIWfoJWWKTuoIYzS5/oZaTYHYSr28H2eKah123S+u
	 1PNlluuh4QyJAKGaNT2y2+efZ/iv9pK6lmwmpMvXU+Gw7sSjxlgr4xuo9DLzvr6TZ5
	 kY+0zNs/dx3EIz/+TL1duTjYp1zo5B2zH082daGapdK5pbw6KP0DLmK9S0kagpU/I0
	 bFjv0hRA6whYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D4BCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093819359.22811.6271539188920766064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391a22996627576f15c0c9327c07016d9505380675460b316586eb14b23c50b4
Date: Mon, 20 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760938193
