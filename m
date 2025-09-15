Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AFA238C15
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757936993; cv=none; b=DDiOixu5x7Dxv9zw+jdLQeSjwcrLSViMbeGSj2bL17XpPFZEn/zYk/fkhjuwI0I1xsROIvZlXoyELcaqNpAcnnrM0v2wCzxEb2/sNng+73Uoqrc3vug6tyDO4sTgDSkvZEtq7Qxsw9Wka5cc5w7IqvYgsb0d+Mp9y0BggVO9lK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757936993; c=relaxed/simple;
	bh=i4dn/KoJWAO47ytOobN4sflyvA8J7M/qTgumyzY/1Nc=;
	h=To:Subject:From:Message-Id:Date; b=Mi1YnnJ7XNEtFpLqsC6VCs1pXNw0xNjCWw0k5oiNmi1ttMZ65wBrOqSVtX+In+EhEq9wPcagYL4w1LizjqPOtNutpvrPkw0KJ0ib50pvisMrpO2VhfQL4ItV4ORzbTSkz/aCu88/9NAoI7JVnJLL4dz6LCQq7VhGZWMT0jLDHDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q510dH5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q510dH5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E98FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757936993;
	bh=i4dn/KoJWAO47ytOobN4sflyvA8J7M/qTgumyzY/1Nc=;
	h=To:Subject:From:Date:From;
	b=Q510dH5m/NxokCW46ahys73J1MIXr94SzhLCPvI1FR3Mt9VEKs3S2/N8c6xIdi/a3
	 tIZmIrazE6O2zBd07dhVFHM0gRbEnNeR8BB835iC6bHiA8cdUvwTrJUBKQ3lPDaf2h
	 BT9Z2hM/GoCjLOmad1pIYy2x6/eohM2ZSQ5srvznJvtH0LGIkSOa/XxA12YrmLvPfS
	 xk9M0kNdkyJg7r3UNi8AtNNqtEC/wOTYQMQ3v9qxqTKjiZG9ZiNOWHNx7P/i1ipUDR
	 EvqBiQhk67N/S12KT3tKSqA6m/zwZkM9mBWfyRywUET7GLsJVK4pP/LV9kcvWWpFjM
	 WNmrZGVo4KSSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C5CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793699357.13136.3769807751017728511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb2be77fcc0e2ca50e8815ddade04d8cb3d505cc293691e41832b6d03d652d9
Date: Mon, 15 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757936993
