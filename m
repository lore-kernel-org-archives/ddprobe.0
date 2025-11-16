Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3735F246778
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763334714; cv=none; b=rJd0zOOqeqqlwWELqn9NO6ieCPp/iEOWG1C3u4pBWsFB10wYGD7COmoX1pFfTnfopjksDZhO5UL/+kBSYzD2BcqYG5ePdfn/fjnjakqnoMha2h3yLr2KmOMRQsmSj60eiVzi2SIErBdyeE9S3ZZ+NB206D8i+fnUjVxfMbep3JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763334714; c=relaxed/simple;
	bh=ohgghvbbH/B3/zs1cPcAMUNjezBCZoVQ7c8+omNOugU=;
	h=To:Subject:From:Message-Id:Date; b=PDdLi+PEPVhat4rV92KEFmta/JjlDcHPRGThhLmfmsF1Du9Ahf5bf73/CTfahaDZo7w/z6MBBN1sVd0KbzjLIZ9oRbMbNF+gzyLq4rmQz0c1BD+cDViuQeyWnsO+43zT7Mjy2YZDZxnv45Ro3fCg5drhkypwOacgfdOLGwK/fr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnVmRQtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnVmRQtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61EEC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763334713;
	bh=ohgghvbbH/B3/zs1cPcAMUNjezBCZoVQ7c8+omNOugU=;
	h=To:Subject:From:Date:From;
	b=KnVmRQtPbbnOqIOBVqfRFpRVxEkXDDpUmf98E08JFFkEqGG2XhFtp/zTgDD/zt1If
	 vZqXSEUVW0DprUxw1BmTiaAJPk0capXI9d1/4v2ub9kMYkA3FQFtY+neyvxf0lAKqQ
	 JD5ADjHakSs5VQ0si+UlBVNsqipLDuZqKLj2J5rumKyPkYKgy5yz0fR6wBw/knnPHg
	 lXaTgSQFRvP/rAPrkJt+SnVAow0+gsrocyYSI8fpxvuzp28/j4t3OYq5B+95U01AO0
	 c7TveoKJL61HzMXyLik/rlwZNBU/BYq+CDCRHX3f/57G6lkf+C3Zp4urGOI4a+vN9a
	 jwweuy4vSkpug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B11CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333471366.27337.11934288599641329826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe6d7756e6879368ef0f78766444dd8c32e250b3d2593fbfc00f58eb6cfa62e
Date: Sun, 16 Nov 2025 23:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763334713
