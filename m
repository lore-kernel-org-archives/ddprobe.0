Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA752F852
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745790595; cv=none; b=P8wkcDXpzn3VdVv/12dEFVzgLeIAe3C3dBuORtvEryAyQ9PCrOHHbImT3CUCrCKYotgcvM8WNvQOhAzJojhPQ9oOUa1ZvE+/D6lUzpt/gkaRvTTXFoGskgknBR/G+JW3642KDkruWF/xcActH2cPkZXsa/ZaOAu1ej70TAdiVpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745790595; c=relaxed/simple;
	bh=vCrVaU1+DOzYJ4BuaWDUE+wRmTE4EEjIcX5gdx1tptU=;
	h=To:Subject:From:Message-Id:Date; b=daOsFSKmOjKdE1ysIqJ9aFoJee0OWsPKfzicXLVyPMawdWTFkE8E1UGFJpa+/OsiKGJANGgYuQjynGVjeYiuqmnxsYn080dhl115TwbAUxRBMgLytO5hXRwdQAZL8+r0EvrzvxpPC6AE18LjNggjtB2CRl7Lp/ab7Vg7Nlz+mfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMS/P0/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMS/P0/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6401C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745790593;
	bh=vCrVaU1+DOzYJ4BuaWDUE+wRmTE4EEjIcX5gdx1tptU=;
	h=To:Subject:From:Date:From;
	b=IMS/P0/urhaRzeCearauH+dM5tUkqcZrfh2DjtwnK82Yd8BxripsV8ndfvXjRM5Wf
	 5PLQ874HG55kb+WVbimCkQfs/DznA4eSO+yCB/Phu9N/tC/BuweYLDZbAsaH+RLne2
	 DNWbLZ743HoA4fkmCHVPZbqYbCkNYL7at3kjc2u53wzSxobNppwvEp6ybOOH6Ia/77
	 hNeO9hkHJYikloz3uCn7eeJZqFTlV47kiDy7nz0keLNu1TvXeB3Fmb9LOImoZiFm+1
	 Dx4KhBrlW0eo+2u5ISxkKr5+ipx5adAwAGLX9PO34it0SAOSeGnv0/FMCwRxHfYg+d
	 PlUhAnEqPj55A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D6C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579059357.1849.10757484728054197294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69b2c35b6b9e1fb31308404c083caed14d31dd917814844e2e69ecabbe8e663
Date: Sun, 27 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745790593
