Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DA7185084
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720029323; cv=none; b=ahjAwxO9qAGYjfT+fhX5Li6RSUIgJj1cFrluwhxHA3/iJON1f0NOqXPQ5df+OIwhUATp4Y9bk4iHUujT0NRezZWTZZnQpxuRr0SJxQ69tdabR0qTuntsyOQy9nJwqTv0Ccq5heZ1HfhpLGui4gnYCVO+uj1LgxNew6VeT+MGL48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720029323; c=relaxed/simple;
	bh=KG+izOKI0Sl1zzI2QmrnCp54YOBw/eDHEpwSxm61aCk=;
	h=To:Subject:From:Message-Id:Date; b=BFVt9VBueQm8kMFYHEWx0GCiSPXHGS1OaRMcc43w4PANIbGKxs4PYYoCbBosvzVp4wBi0KhgQ7H8znQMt6PBSarqmGaNWc2OiKq26dIlmQFACATW3YiK+yngcpMHMRo7Gtd75Gq/HCqOzKqK96LZtoI8wn3K2SZccn/BReczpdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMrRUVjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMrRUVjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A5BC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720029322;
	bh=KG+izOKI0Sl1zzI2QmrnCp54YOBw/eDHEpwSxm61aCk=;
	h=To:Subject:From:Date:From;
	b=sMrRUVjhQUZLHbNyQPNr1Ca1BPpN1MMDprPkeKiK+I/hcWS4mUbG9ENAvBNfDx9uH
	 FyNoG9T/M9RsNJWiRVuPcCDQt34TjE8eaMEaaam3qUZVhLlZninqgjY1/IPKjThZUr
	 6HAJyFw3HTZPVJggVqqoexY1+p8yUYSRJ046Sw8ksR8C0jViS7T9MYvWGz2eAu69y0
	 on8pN+3puvSFfJQjVhWXpHoahBSLNUEOtfBFDJX6Q2owz2aa31A2YUi9DozE6tztXG
	 E6LXpJiQg/813UL5FvEnHh89/Er3ImilGKatyP39iDftRUq9JPD3d2EuPKPYZM6t6V
	 BpGcNok+mG60w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1243C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002932278.22692.3612682142316610095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5249254a692e137a089b6e8ea7a278e7dfd069e6602fd5f07329285168234f3d
Date: Wed, 03 Jul 2024 17:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720029322
