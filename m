Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333F7191F94
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772373894; cv=none; b=gFJdSF6uatTx2QaiIqJiHZUCevhswnZmujFUzwX0X/aCNheLcK1Ql7W1/kdvV5MHHav1dOcCCW2MBuOo61ucVksdLCelqwFB1AAoDmcfJGB200yWKwRJ717XWKTroGLsMrpIIxOP1WLrqFxEpa/K96OugRB0iQRSeH0w3yijBw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772373894; c=relaxed/simple;
	bh=lwmIcNcseZo8dBhfXy5B6g/6n8rLgLK/AtTZ7ge29Zs=;
	h=To:Subject:From:Message-Id:Date; b=TEMWrfw4ae0pfRzjPVbWUktgGLg78ekPT1lU+vubcAml9EtJwGHBHaySJNqCdIc5rM/xJ5XhdpGSjxklX/LYTEWYJNX+udBQYPZkgQBn5aHJa1ENOJVRcTJr6QTzlLMkgt5BrEU67YWj5wwRbl+1RMxSt8XWHgQ5CltpQde9DVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0JtVsRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0JtVsRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE520C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772373893;
	bh=lwmIcNcseZo8dBhfXy5B6g/6n8rLgLK/AtTZ7ge29Zs=;
	h=To:Subject:From:Date:From;
	b=C0JtVsRYc7PDsVEwqGaGA5BFaPHUWKVRdr6BkZZ98jUySH0InpKRkP2pCHqq+Ae/5
	 urrE8KmVGDO/L4K9j0riCbcoPSjdjyKAd8/ms97Rf5IDydN37FxqCNqSpaVUmgNdap
	 8I77xKc3k4w2JavvC4wkf9b0SsxcESTtCfmeKPmBHbbdBRHkR+nWsGWCSMfpC7f4L2
	 ykpxwcK5vVmQtYAHkWn+6CXU0u0XmakFsSpmVrlfzzv1BKN0vUVJIAoNePGWZqmuzj
	 Lrs9Bij2PY5rXZVXc6bQCBZfoYDei1Z9b2CT9KDi3HrDtBOt7c9uF0lYo3lFmg49aL
	 4CKnf+tn6esIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01AFFD0066
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237389363.3486.6650305629033566267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b556c5c0cb4e5646b1da2f8a6efd22edecde5da3063dd90c96176bb3bb679f7
Date: Sun, 01 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772373893
