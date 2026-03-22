Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D98D21D00A
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774165494; cv=none; b=sso0BM95Lzh51eJHGByqQUfw44iEcw2NUS2tohUbKBbBUvUXt14HLPe0cyFciie6/a3TGODZoTizRkZtsjS7ZBlGOGAhXi2Si3TxEgvC/iDJ866lVec3+e0EaR+YvEqGcel8xw/6iDLbe7J5cqNH0ykREDqqhxdPM6VtxVXTABg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774165494; c=relaxed/simple;
	bh=HTo9kW/RNVVsihdPMC5h2yh/2U3AGxVPn/iTBlFizj4=;
	h=To:Subject:From:Message-Id:Date; b=Ov1w0Uah+S2GUNejoXqdTUmD/1FN5eF2pWE0YaD6oD4qfFhxaIIpLAFOSIAOhe3HhGGEkN7AKW7W4pthDdGRBs5/lIdD2WBymMHrrFVhlRGwLTTyxlss86Qr1xbXpdRs7K5teGgIomeiU57seK8fuTxK3IULI07eqABB50Sv9U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4fVkKz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4fVkKz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42DEC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774165493;
	bh=HTo9kW/RNVVsihdPMC5h2yh/2U3AGxVPn/iTBlFizj4=;
	h=To:Subject:From:Date:From;
	b=Y4fVkKz/2vzt/63wRVZxifxrP4Gycyf0pc7RjMR8zojOGwgZO7rKccmndsBg4KO8e
	 lIE7V2054vPvUmW/GS2c4CLfMkpxHa2/WFXhW6DZ/xyoK8pfDoVysztYGOEu5M+DYs
	 1NuF9mdst3ZvVcg/MMJb9U9Zq5OQX9cAexASfnEuMOkxdU9twJhfdlZF8UgUgb96Ym
	 SbVYXjzSDoRoxGx+xHA5rJuLMmkFOSkTwhJVKBRhWFYlkN8ovxGNzoUtD5AXAoliTV
	 5DMQzj3y63pqA5NY11yPXpI8d/ktG20L22kt1yx0pnTl8jo11K55GS6Piy3xu008ZO
	 FGVJvzESvIY8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB2FC72AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416549357.19899.9555426779824534329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab39d6f9c895a6784e614d51a523aa6b9830291befca0a400d6ec144ca2b895
Date: Sun, 22 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774165493
