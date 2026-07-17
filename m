Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F32389DE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784322514; cv=none; b=Yjej8rFvVmDr3iROgV86LRtVCxrEQlcRUar4BtMy/FipdlsUv6Jtt0jJmG0qd89ye7VlXPEv4gnfAqWLVsXkntI9B+UNGhUTyIBJWFcYF+cjmS/Nc3NZBzHNdIT9LVs53jkdHKmUSUSAPLrDOvs1G1NP/8pWqVevcoB3lhPQYPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784322514; c=relaxed/simple;
	bh=IUev0klWgd1WwiG8R9WXw2+ccOaTqLJHYWPkaXiTXWw=;
	h=To:Subject:From:Message-Id:Date; b=owa4OK3aEj3LZ049Cx7p6zTImZCCnws45bX2SoaXHPRa8tcLNGYmOv3YKoNQ0CVLog71xgIRj+EvFuo10EvXcXgjRv/pssJ8y//LSotJsu2RzvZ5BfllFIRKoMHggCo90d3yvxtZgQdvuy72RkYgRipCPZgU3IBDNlPehsuIPwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqvFPa7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqvFPa7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C67C2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784322513;
	bh=IUev0klWgd1WwiG8R9WXw2+ccOaTqLJHYWPkaXiTXWw=;
	h=To:Subject:From:Date:From;
	b=jqvFPa7psS6X0V8pjXKPRYtaDN4JJHUMVb7HATyw7TzfJjRWD+GQJi2PVPXhnnsd/
	 9QXnJi8biVOw9EFgPhBrl/c6EJliRFNQwkqCAjq21aeD7avh+t1L0xCQQDeBjN92Cu
	 L5etaKQgJkgojfOiwEL1S6vyCwKQb1J7D/uMsmrtjQWgwxF7bgEXbGNwU+SC8vfjCN
	 Txad2bu9WzATBo1FymwcdL/7Lh0ri9V8B2YzvIpsNyjzqLMmFe10YbtqXR5oX0inUE
	 YU/4nr3JfzXWiE4rt7/+r8+2TlznkXjpKYpWwveimY7/YPuIXDlfuM9982ClsDYRah
	 Un+DSTMRHfkbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0688C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432251370.16441.3085760879761823722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2179562c4a43cf25b1b6f660b56d92165b175f9eb09c38c32b68bf1d7d9bcc90
Date: Fri, 17 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784322513
