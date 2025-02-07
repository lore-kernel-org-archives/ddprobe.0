Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8451A23A2
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738925154; cv=none; b=cfqJ/CFK2sWzmHIbAcSgrHH2RBjboW/q+yVpD1wFuhL9jUN1GjZTxBFkUz+9Mt/CIVZTl20NiNB1+8JpP1LuzbY/uBBDdQGeJVduzviaonJ5LXajgAnCFkVX/gkFnCXr6ZSUfISVbFFBjFmAbLN64Wn+PoOZiD6tnF00aH9p6mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738925154; c=relaxed/simple;
	bh=bmtkLur/o/uHfcEbDvVbV9ulL6CwZkgDIi51+c31MNA=;
	h=To:Subject:From:Message-Id:Date; b=lCVlYPLja9lgcVGiElhlGSnXN94D4mb7m+P+Ps0+/fR6h3gu9nr7wv4eP849iRhwU0PBRT0KjuOzFCtQqvtdCy/pXPPuS0Y/cFGQYM23o1IHqTSm1ZRDqZrk5g0+Czi/RUbwnwEeiV39kMiTsomdoNNSloTRdvzz2qQIX+a5VyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkE1eh+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkE1eh+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3229C4CED6
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738925153;
	bh=bmtkLur/o/uHfcEbDvVbV9ulL6CwZkgDIi51+c31MNA=;
	h=To:Subject:From:Date:From;
	b=mkE1eh+a9u94KIRnks4cMhfkyg/Gb5c64KAhb1VFPjopT9T5s4KozwMt8AOlZZ9Ax
	 HRI/M4SSA/nTT2PD5axDcZaryUFbZWIEUeHGpIZK+YE38/K9jJv/kbv5lsNF4Fn7x+
	 0XLvp6m+if3nnvftNrgKMILheBh4j/pHQ1EytqsBQGeXXI0JTM77V7/TCehgHOx86b
	 Unh2KczgeZafIGKFfw6yxzEVBKqGUtHOerkRu7PxdwrsuDE2NzR9x6L9pB2h+KkEue
	 H3k9hPLRPYuteKv9fmflAl+B8vVvbYC8RLh+G95gQZObUMwnPQplo+j0mQti69jPbN
	 R3O7i0UbPch8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E989C02196
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892515363.745.3727166643495967596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe0d2a54208a3461087f728e14a42ab820bd5d7c97db07aa4aee02d5c5e64c9
Date: Fri, 07 Feb 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738925153
