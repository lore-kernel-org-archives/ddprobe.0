Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2800248BD1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736938554; cv=none; b=hLY1HBcLl1mpwP3LtjoLmdBduxM8GaCYODkMIz7dATRKn2IaFBrjEmah/2bXJ69dO9b/ZLxRMTvWtTRLBe/TN2SxIghc23kyG8I4b4ajIbJYVafxq+WI9fUEyvZK2m/y6bUHz1tU1K8TnO8iVsVfIGEhNEAwkzFeHnqLbX90eHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736938554; c=relaxed/simple;
	bh=HZNVpSGrKSpmhuXLfxWIoInmT5eW6Hn43fhVA0bh+Gw=;
	h=To:Subject:From:Message-Id:Date; b=qmrkVQJ+mtmfbohoqaSw7ttKl0ZsJF9byv1u0CRU9ohjbpVp+I8Hbc2EDbOoDkrrAPhojziKpT7iFPIL4/Uv80hsa4i6CMasDqbXEXkQ9cJuHO3hlte8Ukmp8ZnROUdfNxnJ8W5U7r76sN/HmnpQ91RrxSgtkxde+1p/77GVahI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sECC6rFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sECC6rFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B160FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736938553;
	bh=HZNVpSGrKSpmhuXLfxWIoInmT5eW6Hn43fhVA0bh+Gw=;
	h=To:Subject:From:Date:From;
	b=sECC6rFyrJms9VQUCk8xKjGkCEyzpWHLggwnxunHxDNNhH+WKeuGD/yzUgXl1l6lR
	 FLGvgS5Q19UdumgUCrnhrdd/gKQ2scw0xQie5za5vA78tSq43JTSIT5M8LZT6jiuze
	 TH5PTmp4oNBkK9rx+SKdvdicGg2WcX7zUJ43O+5syAE5foGsOYX8b0vUj0+30ZNKSU
	 ydUu5QblqBDI9clY7Bo5mfzssxGY03BLGuoljfe1EaB47mgM5chtr86jii27UtZZMm
	 onpQzzcg+xJU1KPgS4Ol/EhIEa8kIc2trYFE88Fk5vZj8ndfbG+lx0Mvsweeth1E1O
	 rnoLpGvDNTQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A268EC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693855362.16073.4246082980575152211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4763af0713955337ab3ba71941c1ccc594fc57b6de7d8a9e8c940f574b75a4
Date: Wed, 15 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736938553
