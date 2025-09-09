Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD393451D5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757425194; cv=none; b=Sbc/a+FmD3pI2KPeG/X60poRfUpOxV6LxgSLlasnHhAdS/zDzCLod0sQhrMLDtmolFsmrpWwtHwp2k+60vszJm2Um2Bf0hYy6obD5VZgaQaTNYuq/Ej2OSlZ81oTaB1KoH11826l+36LEhHID9oEckzx+kQVstt46HxH8HMWCPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757425194; c=relaxed/simple;
	bh=RrTAffyv2r91nwCG3twI5dXWTM3OZ2SMzMDhGhPHuro=;
	h=To:Subject:From:Message-Id:Date; b=TxlPR/qVb3+V6zP3/vXdxn5nbP3zXP5kl/ecqH/++CHCsHOnG0wp9QG/Zaq2FzAowsm1pFChPmMzFBrAvLs+9TB4ZqQr5xbrvMFGP8s5rXruGQw0D6OXkvEUrCpasCm16EU8qgFHc6ajf7eGrZQaVH1Luv18sK+V0GvVu8OyGRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHzYx+P/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHzYx+P/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A120BC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757425193;
	bh=RrTAffyv2r91nwCG3twI5dXWTM3OZ2SMzMDhGhPHuro=;
	h=To:Subject:From:Date:From;
	b=LHzYx+P/t6B3diOqjicTXkol+/tpdFY8KJTz0CHIrDSwnRVgggR+K8vthepPUbkGW
	 aYLX5vinNxNGjp4daFzV3qRYr4bYLK78MaGPMWLhQx7EBzWZTYEluqS4QRVGS6eBy+
	 Nf3sxkFxenYjiTZgfagyWJ44/PVFe8lDHJRpTp9yDb+4RSvZrYvx/wR/Vj4Uum4XLz
	 9LCi3KlFmTQt7uw20JLCX6qkmOIMn717tRmunYEwoAehoe7gY/mganfCh5BOIQBBe9
	 K7/z0nyBa7JoBTQLiujobFj54AON6naQ5O58hZOiOOwMe1WiLsbbF9Y/Dlr2xwaCJ2
	 OGQzyzem8a7OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92980CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742519359.8046.17983479239669417619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b349ec4de8ee6933c10dfc278798e649ee97d060b4693473ceed7c4e2986f433
Date: Tue, 09 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757425193
