Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340E7305666
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783099714; cv=none; b=HZyGlL20KVXWpNJBlJ67wi6mlZtm99/q0+BqlFThVazyYgHqL81mqmKuBco66RwRLGt1UE3eZM8ppPNuZ3Ks62eR15bGtbJeM/RpLo+LRoKDj+5/RqpTbVSt/TWQyPILlhQFvM0x1iN4gC42pTARQb4bSPk9m3/QYNSam2nb7xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783099714; c=relaxed/simple;
	bh=j7COivThfRvbQDGF0gLHPg2hrJDviCyCp/vBmNzEmx4=;
	h=To:Subject:From:Message-Id:Date; b=jeNRbXmMC7O8v/QQkL3lGZ7ryydp7lpjs5XY/yx/DUtrgFE8hI7eIicncRa2nO2H7u1w8aN9v9lCh+0znHVGyQDdlcG4rDotnCWeKPRZT1dpaX4s6VJ/vJJG71CT36eYANd3KM1IaptP6braI2XdeFxsZCc3jdbW7sh15cIVGtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awAWhxBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awAWhxBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8C2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783099713;
	bh=j7COivThfRvbQDGF0gLHPg2hrJDviCyCp/vBmNzEmx4=;
	h=To:Subject:From:Date:From;
	b=awAWhxBv9IuII65oxJ1ZMUfys4UqjWPxfduQjO42QeLsbHKEdKpkJA9Gsvvars7qf
	 Z02lIpHgQKwV9dVvpxoUbpqWJPU1nk/19qoDDFWBkQ6D3WFaPzQ2hX6zATp8Lzp0pc
	 apkls5BM4jYz5mBCrsXBi50f1zuY8w56OWczhyGqv8DttrN3HZo/RH2Kx58pAkoo2i
	 70CMCB59tVxm7FCdMgUVytepfXnD6WO4hZhvvkPzc0JC3+AXg+bRzfOHOM5Pj1Yr55
	 uzkgyDht0xr2RFi7tpcpxoYgyftvlvzBB4CcMtgou1XBUj8GJLpIt8lnNx2c4z34aF
	 SN+Erur9zRzEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D9C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309971368.15703.14501855570988451031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2124363bbf5d275330f9acc0f7dea51753b98fc1a1f426d31b4178a046bd872d
Date: Fri, 03 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783099713
