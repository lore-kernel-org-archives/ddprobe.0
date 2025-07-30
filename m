Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A512DCF44
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753888193; cv=none; b=KumAds8o9Xgng1zDLZgYYQw+F3w19X4BrUumb/zZYHEL/iAEWYk7MZoKDm9bT0i0M+qo+P/HUj5w3eyhkOxv8d+vMw+9/1y/qIcu6J4H/20hKbC6/dL3G+jmSRtGuDbhnXwAncOJxbN/WDqIgBud8t8ePPJJPoCHBpAxrJx+7o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753888193; c=relaxed/simple;
	bh=HVnmGD85k2P78iCECrJgUF1tNKPt0o6yaO+LYgs77LU=;
	h=To:Subject:From:Message-Id:Date; b=Rw3+T4xZcyrYzj4vtWjNJpUTMVxijkXCWprEtaimeYFMAOv6TlYdYlDXjjdgd3Xmhpv8Xhcv+X+7uG/cVQw1zbWHxuu/rkDysLNxiXx+OckFyp1XtAwj7GBjP4me3IlIP5r08Xzgy1J+wHhwHtd9bAyuxJjjHKSrLWmvIyiIidQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CG3OZUAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CG3OZUAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C1CC4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753888193;
	bh=HVnmGD85k2P78iCECrJgUF1tNKPt0o6yaO+LYgs77LU=;
	h=To:Subject:From:Date:From;
	b=CG3OZUAdGZXQHs9OdrxPnDK9QoJX8P2IjTJhguUGqccAUwhtosCU+UL6NTvry0gdm
	 g3kfDRar/0TuPb3BpLY4Np4apMC57R2Fv+yVywyVqWYBhA+DicRN5vgn3OU8BND0eW
	 bQ2hytw1VUw6nRMZUu4c4bXhc/E3ZPjak68B4h9tDm7ltQcM6+nwyt7Nb48kha4B9x
	 Ed/aNrmA4TmL3+AJZhaal8BWsYKwOLVvaLzd6ogO6nwiyg12giNC8tCgXjadFec7jH
	 uzfIjiXiabSqlH6tjwcKhsf+MFVA04lO5d5zRbrf7pLowASL2RNF++qWrJa1JpIWvb
	 +lC29ck1eobJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF7CC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388819362.11384.4347516743419956690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3c74945f5e1f5ead2e1398c4f28e5b356fd5d09e3342682d76eba915f76d91
Date: Wed, 30 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753888193
