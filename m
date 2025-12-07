Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBD43B8D5B
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765142574; cv=none; b=jCFEOoXzVqmx81qrtOoY1OypltCIJ98vmuOuCc3rPSf/qcOWiQbc1z0+V0DynLCmmcwbwLBiRQhytjkHhcIXr8g6xl8obmotMS2hvpthhXRsk22RHRAcmfYijTwYdFdtKPhAJfoFTLWbZrvciLySaB+tJ7Rn3OvCOdU1KV0OHgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765142574; c=relaxed/simple;
	bh=GKAgH1DEE0uiJO/O6hYh0rxGaeEBWUWCoPqZoip1lzg=;
	h=To:Subject:From:Message-Id:Date; b=pgzxZKEyWxMdr2IANfJxDbSC1XLgrU2IXxn/vA/Dzu4RfowrapXyOippCP2c+movSTwkmC+Dp2fpKzn15bx+zQ8WzUJ8fMgGyd8yUZWOeC14P2YTniEvpqzsHgnm7JoJnkAX2XdegZj+mPIRvPiJJsADE9Hp+b+1jHfup+X3CtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9MiOfnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9MiOfnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A5AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765142573;
	bh=GKAgH1DEE0uiJO/O6hYh0rxGaeEBWUWCoPqZoip1lzg=;
	h=To:Subject:From:Date:From;
	b=W9MiOfnCNJWJ630Tq+8o2olX0NSgZHmy01y+YjfuxPUB3Y1nHK3Qb8Az7QBJlH3FW
	 O8z5aFBHJ8Z/rYroyopfFdNgeQY/uajxY9WIvUQ+ZOKEmh7prOggJld8Pb8LCX5R+N
	 gg65A+rkniOtS/OBCWLlxN9osNffm7AAF7kLENoZoFiKGUMBphv68Bjqkw3MMnPWx+
	 yWZF32yoYkChOapkeCJ6zMiImpr5eQxRODD21hH/ZRX3t35UB+kJC3fMEk/+n/5FAQ
	 rx1PfinEjua7z/3oyM8WIlERtaKkabAyjQtfi/a30fY3/8MMltlzL2RGvQ7uZ0geOy
	 ML3FldKpenMxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D223D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514257358.19279.18223548933401600571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65dd5a82b381036ab2637464b3119b50864e4a32be4d2e5d7b8677c5cf051cc4
Date: Sun, 07 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765142573
