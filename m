Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD8E165F1A
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781115394; cv=none; b=DhN2xOp7HXzRRtm59GNKS4k1Hmja/wUCctk+1we84Bj8ALU2727GjjtD9DHUrM7jV66jrjrpsP8OcovUAybliIpmsOewz7sNowp1LT0G+PuDlGFfobSkXGyE4NavYTh80wd51mPseS1LpGpNO9zrRu4/0mkisnRpuxEmI0kgxD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781115394; c=relaxed/simple;
	bh=vOr/X1oHuJIs8QjJlIbJGhBN8O/mhnoCOAf13TiAxPI=;
	h=To:Subject:From:Message-Id:Date; b=h8b4xyojP5Fdo6fihgiSSiCjx2cTR8Lm9Ce2KPbAFcV48sJ6wsqOzX0xfIIvKzUlNwZ/SiJAtHQA06TLFiDrwHvD6v/IX7jfr/6pMk6h//35VXOvVOqVAMURlSNRD51hCoREPj2LtjTAYNY18k9cEO85kLeVqLzsf+9HS2Jknqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLUB5gan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLUB5gan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3CCC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781115393;
	bh=vOr/X1oHuJIs8QjJlIbJGhBN8O/mhnoCOAf13TiAxPI=;
	h=To:Subject:From:Date:From;
	b=gLUB5ganfW3TODthHdZw7P5Il/ZrzeaVTGsxRulh9sQWJr0yhn9HBncXA+e0f/EGt
	 gU7dAdFCmNtFy3DTwU2z3+julVuUS4aSEX8pFabZ+xejF/X8AFQLdtiwCV4QTrF3Lu
	 uhqIotUrY7z++pUvgYzypEeFd5NC+GGggFuJWUb0SmktwGxNW2iQhhUHDrZdgA5dQJ
	 0xiZKQ1TPGKr7yPo7MF624ECbg6o+37P2m+9Ksv/bDJ09qdAa/0lKYW6P3by+0FcMF
	 ul9GkDYOciIvGU5w/SmP5OM/MP1vqc3eN9j3h3e+4LYN/9o3v72OX61itVBFainFiT
	 nBTjTOdO+mWrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB516CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111539368.11217.11709625701005224253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8312434d0cf80dd598729909c04be40e004d0c1bf981a905b5ca4e14225382
Date: Wed, 10 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781115393
