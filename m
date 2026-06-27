Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C512192D97
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782527914; cv=none; b=js8/RsXKWwylyh6dTDpRXerpyFydjp10HPLnbaEkjP3v6IgAzzEFfG3/crGeJkE0R3EeNe/5FuEgeMVEWXy5Upiy2s2/Lp2pEqip8bgbRCX5RmgWHvW3dE4b/h2CcD0o7TO154d7qTUDVFECNfxo+qydepze4Vi+17XqY2d/Ufc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782527914; c=relaxed/simple;
	bh=pSaaWneTPZ/fyqZ+k1UTekJjfddfOTy8t2Kvo2SR9fo=;
	h=To:Subject:From:Message-Id:Date; b=ai+fpG5kbmEpyfrqG+CEfNGJ38xuypEjvixiBdZnLqL3XW2gNN7XYYzwzJ/3nQCggp2kyHA7V8WBrFfzSwtDyhOj3oIUpwB8WblzEigSWpYqnUoUG8NA6EaYyPAe23Z+xBArwxGsRh8wyWdHLYJ9PFCXorIYNT+pO22YH3OdYzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YF2K4YVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YF2K4YVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFFCC19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782527913;
	bh=pSaaWneTPZ/fyqZ+k1UTekJjfddfOTy8t2Kvo2SR9fo=;
	h=To:Subject:From:Date:From;
	b=YF2K4YVxmB2nNaWnNFWCVvo0iPY0GKakZrzsSopzDuev91hdOQ9SpkOdvaRiQhi+l
	 0U98FNUaBI64dfaiUAoQvd73Kw2QV3jUX/SCX0FxpwyQLWn4YVKHyCfD6ALJn140F0
	 c68oQTjwFg5wAijlUI3QZlXDKjuSmSzF1Gx7lvUttsHTJk3VjRZsOx7nRH2u7s5B1u
	 LLmULNQ/xkEego5nU9vGexj/HdFV2hDeGyQMfs95JCUa7cWXoJK+IwH1/jTW9jziDw
	 yVFCvS0vXJMMb7mPUqltRCFX3fWzn47R317vhpl5U2zPJRM7of6rNaOLhL975c5YeP
	 IgbhGTXFsEbWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE286C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252791368.18235.11766137818947481547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44f4c1b737f891c2e604e00605945c68804a6df39311444775959a2d7f143b5
Date: Sat, 27 Jun 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782527913
