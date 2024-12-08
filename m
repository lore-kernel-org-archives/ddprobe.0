Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E91546B8
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733694354; cv=none; b=BZOeatl3PAndecy7eVQDqQ70o0QqvtFr8mMk5xvwFC5FCHhqgeS0ZT5HSQRJGhmzeaJR3ASGxnC5+ph4+itUHHm94aWkH4WdQrtBzzQhXOMgYiqu/7uZmQytK7fp97hDkJYlewFlxLWSrOX2DX91ieYLFefyDk9H/hh/LKipHw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733694354; c=relaxed/simple;
	bh=EWQAYKenR4tu4Znyyan3E6aU/F6wJo8RauETDXE6GLs=;
	h=To:Subject:From:Message-Id:Date; b=NPzWPFm75eXP9VQpbrA7vZbquPYHALYLc5klIAv08+waUFiOohUosOCOHyyYXjQj9L4m4oxP7YszlnjXCJdEP6ZkM9c9zdaI1rr4J/Xkn5+djZo91QfRA2ru6et3WhfIA5cmekmmcWwZh+hTZ1dQ6U9C4kw0nDDZcGP1CSGwvx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIlHEb8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIlHEb8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95BBC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733694353;
	bh=EWQAYKenR4tu4Znyyan3E6aU/F6wJo8RauETDXE6GLs=;
	h=To:Subject:From:Date:From;
	b=cIlHEb8anx6tjI9HYCDJe8ki0AUNYjW/BAEp0//eDUifXygaIX8yumln55+o1vVYc
	 AVfl+lAq+CrHhyfJbXRL+nQfOlx2y5dDCsNsnQ0kBV/4/owhDijSyUezk44hoAMLgs
	 vP4EtLAd/+mCruHqnJnnMQmNm9mLbhldcBFouLPU2mbISSJbrUEIe0wL6kbzzKr/0H
	 uTH9vORyLFL0OF7LwAbp4w2h306Fozp/tOYnkAoVkxhVd4g69PoVS+S95m/k+nbgAB
	 OnAMLdpN+1A2HO+yoAU0T5lstp9lBg4eBK27hMgvaXa17dmmb7XcY7nj+v6L9mOw9b
	 sYSCTiw7mo73g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3768E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173369435362.28978.2438717054255036135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7b9c1c5cd92d0eee67f78118d76ab2086fac35c0dd7331f20ff6f7d5d8963c
Date: Sun, 08 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733694353
