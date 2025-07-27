Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309A919E968
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753641594; cv=none; b=VtkwwKTUBJ2Z44CUYrZSIkhNvraMcA8+qp85UH7ShvHmeuDYvtNgZYGmcjXQHH0be9SaSXYPz/RRHpzdClKdG7DdYe76ZvLoW1bZ56nksyfQFYRVe/d2e6Ww5XD3Sw3nKPKCUSDfjfrIarbFX4Spxi9N56swo1j8emIJmGNmOHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753641594; c=relaxed/simple;
	bh=zSA0g7SbdK/QZvwZIW/ZakaC2wYdJv5Xm9cM0vqHwRM=;
	h=To:Subject:From:Message-Id:Date; b=sVYlDa7J0XaYU4t58+5jH9sglUAa36PqEMJhR2tRw1OmJA/bicv9skjWjNTZxyTQOT/ghuH6wwt+lNW0JkgXYDB6rEo9M2gierWO7IkLEFxXPfhhAXACDZb1y0KR3NHaPqPRaQaZUeBU/rE+JU2ite6OEa86F7ZvDwBGc2pbnO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nengAvWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nengAvWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4769C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753641593;
	bh=zSA0g7SbdK/QZvwZIW/ZakaC2wYdJv5Xm9cM0vqHwRM=;
	h=To:Subject:From:Date:From;
	b=nengAvWVaSPiCjSqF9pAws0IeXIqYNnaABe/zCI/jlNzm35OTkyBxVAFPgTerlww+
	 lQ+cJ4hIQb7mCedeHz5mq11SEUh5yXNDENrjx1P5cXg/0o/BkHqGx0lahf/amTJ37P
	 7QsFKtMax6getmgWFSkArXB0uSGGOVrTntIE+j01zOfGKXuXRht83YhtcWfOXEXsty
	 +4twBPT40bAJn9Fxp8U1sfJ99BNVR4ORh+ujKQiIEan/MoV2tKtxD+mSXdf4i7pw0R
	 N5RGUDHfGh5ux/XcE1rs6gK045rmwu7Yed/ECSXzWnebF9KAXS8c/O2rSV0XoqeJw5
	 QPAutFZzM5WgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93139C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364159357.8283.8931055301544256584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac16bb4c7baac1bce24af2d292843044756396fdcfb6d62bbd920e09e181d915
Date: Sun, 27 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753641593
