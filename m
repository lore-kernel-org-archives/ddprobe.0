Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4A64E0B9B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790672434; cv=none; b=S+5cnJPoGnoHD93ponSX9fDelrCuHJREtsL5wQlzDDdYho9MPGfMhNqFtau3hfh2ImkVAQtlyekVCFKCOXaR6iwGGR9M4zctI8v0kLFukpV8tTKaa3hs3omBbvMqKYuu6TKfOkIMyJhpZ90Ym0QDRi9OOjTZWSSv5pMgJdu9zFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790672434; c=relaxed/simple;
	bh=2vi1s+3KH8BAuLBbUDj0Eatv6jlpMJYX7hC22kXlJQI=;
	h=To:Subject:From:Message-Id:Date; b=tx2n39hsmVZYJ0pFc9HoH8YcnwnchTVOpSOoPY43RxXGJtDx2Yk2zIRrHU8UWmf+ub3Ouev0h82wPrZ2aB2GNq3d0mu1FNA0NA3a1cg5eZHpjPx2GdN08X5Aexm6sbFvIG50yDU4X7AIJjcidN6/l/EbRtDsQsBSyNEOzms6u5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS4TD7wp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS4TD7wp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8301C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790672433;
	bh=2vi1s+3KH8BAuLBbUDj0Eatv6jlpMJYX7hC22kXlJQI=;
	h=To:Subject:From:Date:From;
	b=MS4TD7wpgqeULQ6r/NkffdUmQ8MeC3U6Z9nFDgIDmjgX0EmhsE2DNOkDgWjp9+/a/
	 Ddq2pG0lLxrbMMGWYlpz7kfZdDzmmZNSo6ghQGEAU8wHxEKKs8hhfCdAIP+RCj7Mg+
	 3mLYgd6IOHQ83vwDkeo9Lv/EdDycCKXp6irfadLBBqqMIvh90cQuBAV8BenR8HoOMo
	 Rg80UmNC4YrJzry+kmNepc0Ot8Q/8PC6wN3GGun/h2d9C/US5B2GZjLq0IMDNzUBGy
	 mmPxLeDqZoUvr2JAVHcHPMZYVJg8gv1f9l8+amS/HnDPeRjz27vmsmDXbdndgFDUUu
	 aGM+X4DX5phOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD234CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067243369.8611.15629939644341840758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fa51f29199cd4530c2c7f054472d6a5c1694ed9b0fce4fe18fa45668891b5d
Date: Tue, 29 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790672433
