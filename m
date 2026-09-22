Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B1D53A3A8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790076034; cv=none; b=puzeNfTMfa5xf1l3chadjGhIBjGUm0udjDJRJ4wirhBgVK60Qke7J6GKcFnHRLQs38YFCgEM8jGfKGzfqhvdMYi42b+G+3QJn7ZEDZKiWw5ZRqMf/AKJ5rxJ/WM9cow25UoEgQaJ9kdRskuNhOicMm/0ZElC21Of5cbQI6RgRuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790076034; c=relaxed/simple;
	bh=8tr88VtyQ5l8MoXjoGeysgYTXRqNCsJNJDqjnQOh+ic=;
	h=To:Subject:From:Message-Id:Date; b=HWlSAQlINAZfjAzVautSJNZKMQ56ntyyifNCdlraVw/ZUPGo/4cgVhNHuC4nF/JLflps6age7TZ3qGWeyZkJ0l0SdJyQPhOdbWl8N5ZkCozOUFGVgLTo6WZ1yFOw+Q2mmpYBkf+VU5NYAiRr/zQJ1bybnon78MV3wDvgOGKqdUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSIOp0E1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSIOp0E1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FDDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790076033;
	bh=8tr88VtyQ5l8MoXjoGeysgYTXRqNCsJNJDqjnQOh+ic=;
	h=To:Subject:From:Date:From;
	b=hSIOp0E1PCtXUnaz286ILUZjIPfYt8k07k0VT6jlZlgb9LXED0wYXQ1qf4etSC/W/
	 7hUU5BqGJC5wC6PtJHVQdlegCHCifi0AJNNQeDHRQBGAlaGNrfrlheN1ElJrSzCMDK
	 6kAd3gk+8KNvKO7E59lyasVCPT1wR4/e0goIJbtbzqvZgYpBYPZ9S6SqlJVELxwz9p
	 O1Yrb1jFBTknL+EbKhCw8WKgxQ5IxzGHeSdm47zWv0BSzFNFnnIhABkMDf3dpDNx6X
	 x3GpN/L29rnvImw2PCjjllMoSIuEO7vFINszw1ZKGzzRCcBXTsVlMvBx5FoKGaIIGM
	 aho6+QyXZiJBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB41FC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007603369.16908.6978405689916809423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f471f20288ef28255bdacf617f37fe566c97f9cbd68dfd97d0586d69e5e8432
Date: Tue, 22 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790076033
