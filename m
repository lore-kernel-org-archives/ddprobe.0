Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C45E7345E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719443003; cv=none; b=amo/rkfxzzFx2K0Ih74kyubfoMpTLg0DxvpB1RmOCZWGGVqMolWxdsRKVpc09TYx3uyq4FNnLLqTDjJD0V+qodN9ItZCXLsdr2V1a3KNytVWkJK5v3VdIgzlWjU0nEjw81hd7urcJeWHuUsLv0QzvI+GWeLgAd56BD7SPIxiMJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719443003; c=relaxed/simple;
	bh=pDt8AJPW2dQH2FYnB5vgbWNRZFhiUo3Oo1OqN1BPch4=;
	h=To:Subject:From:Message-Id:Date; b=t5pTZHzk0NDcXLdENc5hx1Q+bv789E5CtbWDcHsNiA1KjeU+pWzxIZNcrQzdAxudR9WLUY+eUvvn651TRhFz8aG823f/KTbgf4sZunpgz8yRNyEGlp7Gd64lnJVlX54I/eJn1s0CWI6PFvMK/Vym6x4q2CPPcG2hnqBbqlShxss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbuRDIJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbuRDIJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D3AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719443002;
	bh=pDt8AJPW2dQH2FYnB5vgbWNRZFhiUo3Oo1OqN1BPch4=;
	h=To:Subject:From:Date:From;
	b=DbuRDIJPF28/Y4z5A3rkE0xge7S8y+Lj69LwTxxSMlGCUNmEwTNTkm4VWZC4PvXYV
	 524G/2J/JhZ+2Xjmum4LozAQl2PAmnq0NrYCVkRMUPRB4p9aMtnRthXTy2tCjs2yVa
	 g9dGRDZFqOlr4bWahFr6DvrQcoj+z8CNjSphuBzPTAZugNJN6qcJqNaHbUr7jAaIhG
	 WF37f/dCWj1eUg0UpNVl6YNIC4M+AjLE3fqARFL4k87HGhWSDeJjrpqLKVTMiVYjQj
	 5us+20nQsnrd9yEscwZ52N5cK6ZsBbcNYD+he55trdu8AYzIdPqWKmhBQWjm8kyuoN
	 m9pRlKHW67y/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A80C30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944300276.15883.1098230073116894915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56c30a81f8ac122058fce09b0ae059fa869285a2bc1f172acc1e8d48a316d35
Date: Wed, 26 Jun 2024 23:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719443002
