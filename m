Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A8963B9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781358994; cv=none; b=cjmIPYiBQw2pk0DWT7onhdUImOwucs4ZUAe3MZe95Ln5oj8oEJyEWyQMm9+jVEplkeyoM1rSPjz767ynMSlrscWhKxQdCjqrPp1/RRa0f31+57GWcd+BB2tPthwmfTclRPtU+JlScrDO95hgG8LXW55sQ8QDutLnFQOOt7SqI1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781358994; c=relaxed/simple;
	bh=1Zfpjjso3Hjazd0mkBKol/iIL594SvtjVaCj93XyAnQ=;
	h=To:Subject:From:Message-Id:Date; b=BbIxyy4aXW1bDsPsC19/bi/nTPtI/VyQupvW2F6CRmmQRjP9BQdps8ZOBCXT4Tgc37JtG1ixiG1c/QxA6CtnOOcKYrOOqlL6zOax/zhjjsXJPfT0LQMFMLTxxB6W2z44m2q6mRfgJaIqfnKxra1/no99nLa6yd1pzb65S6qbtOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/Gdcecv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/Gdcecv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D967EC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781358993;
	bh=1Zfpjjso3Hjazd0mkBKol/iIL594SvtjVaCj93XyAnQ=;
	h=To:Subject:From:Date:From;
	b=D/GdcecvBOKRNNhn0BnD4YRcjoa8lmm9UF9MIfgp3L/KR5dveA3B6lCl49VvDBSye
	 Wp8nb0cnZSHsz4IKVTVyYYxRyPnKzV2rqwqVaH6FxXIi/vpLV3x8jIE5C/3p6BG7xB
	 9zmZIak3cxm2ns4q6vaE9NJJ4hxjKUarJncbNUVez4CK4GLy8nz0MB6lrist4TSUUP
	 l3+d7HVrDPEjVG8UtDcjshMV9znlGznctSDpbbjEluQz/YnpJ544+MPcnEn+7mpI6j
	 VO+sz0rQn5I1x9/tP4Rk8wIFhhHjj/p96MNtpC7T57Y282R4Ont6OMzOrfecPKSgn1
	 IVvQomljamyeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCD7CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135899369.24812.3099332600954073272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b08bd2eb9f3b9de15cb298a27d0d2691c78133dfa689819eec8f643a81af5d
Date: Sat, 13 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781358993
