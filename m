Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490711E8322
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739971734; cv=none; b=CsWzdvsI3Bpq5auVIWVfzPyHFdVaI+1RxGlK9It1ZsmQIzlyrrw+4Na0/AVfxTiSwuPWpNymVqaQ3BrRk/ZsWBgW85BOv5C6uMassyP7mdam0WCW/TMPivL2TyLtVrKQxvJbErT7sGnmQKVjDsq5vS7NdVCZY2yJ7by6KZ0F4W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739971734; c=relaxed/simple;
	bh=ZQx0+Fqp7w306WS9X4x5XXgriQbfd0R8d2e+mvHCO+o=;
	h=To:Subject:From:Message-Id:Date; b=p18p0tpgIhFdD+EcSbzbhcIHyobwD7KnPcugwHCIh2lx+DBAa2NS981kOesUhjDYWdDpy7/2x+TzKzAG2QdY0pe7db8YP1P2DpcycDYpA5+FjTVcAwAcsQN+62ysfyvC1h65QiCkQ4oeexJ/kz2S7yOZ3UTLSj/KJPioOHXDyGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZE3jAQj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZE3jAQj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0AFC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739971733;
	bh=ZQx0+Fqp7w306WS9X4x5XXgriQbfd0R8d2e+mvHCO+o=;
	h=To:Subject:From:Date:From;
	b=ZE3jAQj81ursx+v/E/HfPK18nEjihLJ4Q3mvlHFCLvp0ONQSC3kWANkP501vjTvrS
	 s+ylyp+Qdr96qDDWi6QN4ZezQmiJlj1GDaijxihUsK7xRS605vMFfSk6uHdtp2qcQw
	 hqYzVBD0k9yj+rY9tLUpCnp6pwBhoGEKGsfZ7mRi0tH/zwz9+LYeVogl/Plmx1orTj
	 45FTOmKEyfvHdzn5uRpXyINR+z9GHK9btX7kCBe7C3tg9fXrBw3cMQlGCfedruVTbH
	 Yy1x+/mRM2J+gvb7u2WxUCzCTHU7NUwsIH/poFFx+3h+eOvennG8+kilmtliWD/MMr
	 34LlhzIe1Kz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F93CC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173997173363.17345.7837278877573268972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8349292c750c4330e0ec6d401fbb01efcc78763ade728782004a12f547369e0
Date: Wed, 19 Feb 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739971733
