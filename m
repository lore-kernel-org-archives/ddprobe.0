Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E5E33EB10
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773852293; cv=none; b=ZaL0u0McbGSqqv4p9U6SO0EZ1KnzAyCcCgtCjrzBBG4yhZE9M6MyP5f7/VOei2LBB5Tv5F9Zg5L32p1CeyJ2dNOMauNApMQ02iRR3RlCQl1tBwyN8bkQp1a2Dz3srFwf6cMXzDNaBCQ0jpRrgAZAorntH1V8JbH4wrenAEMCFV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773852293; c=relaxed/simple;
	bh=0SUVU8I9p9BTdepJ8e0vBE79Mk8Q3GUCOQlqGmxavcw=;
	h=To:Subject:From:Message-Id:Date; b=JhLreTK7BiS7nTQXDjUvxvNi1taRiEKEkN89hBqeYPtFJXtG0Ck5cFLan+LNz+8rkFD4fWXvZmmvGnZjWT8KUR8HkwIW8TQJfStKGFJLFRcnXcQCkAE61nP52VZ0Qz5J3qfHSEfueoynhWmF/+8Thhqhb3sng8BDpmNIb0YsrZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eg0Nh8ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eg0Nh8ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6C8C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773852293;
	bh=0SUVU8I9p9BTdepJ8e0vBE79Mk8Q3GUCOQlqGmxavcw=;
	h=To:Subject:From:Date:From;
	b=Eg0Nh8ua2QWp0+hhJ2cBdvCBv852xkehyNIfDw2/jas4GpifVUUU/OOyTg3O4Kpro
	 x7inX8gUGPvL4b0BHhPVtvvlAJnKYWnB1gFFf34Y6wn90DCfDWyf3IegiEy1Erypns
	 TPchu7eQx7FNh7rM4gwpeiLkJ0hrWO15IYBDQLH/MMLHaYpV5Ka8PpgAFHp5hDXi/d
	 h4u9te5Nsm9G/AXozF1OEt8DTcv3kHuMd6CvDqhtqjBkAUbbP8lBxlUh1PvpBLR4Sa
	 6jcnSmcp9ln7pd1OjSz2Frhqo+0YGk/OQSyYn+wj4bI81IsvNX3zPP0xuF4DnZxlOh
	 EwQf++sPJM6yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF110775E1
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385229357.11391.927585450291351078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7786c621c3f925e1905d87aaba49dce671c1c8457d229155e78ad810224db6a
Date: Wed, 18 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773852293
