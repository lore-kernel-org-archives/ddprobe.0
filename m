Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6562785C4E
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716653663; cv=none; b=CQ+VWCFb7bY+EpA+0yK7So1QTaauBBe+Ui3xVqvQG6gnE+s9AbFs9SQyoJy8pPubvSZm8jiI+6QcTLHvr0ovHHIlhWY+yQu8XQWdDGsXFLtNoH62oqD5AdA32SNvjg19wNgBu/MmvRxQSPd+HuOHr7+TpZfunD9hpz4rAlnT0oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716653663; c=relaxed/simple;
	bh=EwFesTTibIGizYqLf4CPHhuSFFkSq4rjlv5MKB0suSg=;
	h=To:Subject:From:Message-Id:Date; b=BJPo651nVav5xta9lI+p5frbzLhyKDrE1R1Fetyk/GuaIOKnpEyytUwzjs/6X19PyWBwpfSYwcy1JYurg2liUMX5j4OcFO5VfBFnJojRzfWAY+UlYiZ/GihZbOWOZVtL7XH2Kxj1a7IyqPgOoWVtcRN2PYf5QvgvN7lo0ro/XA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgcPpgyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgcPpgyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE32C4AF07
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716653662;
	bh=EwFesTTibIGizYqLf4CPHhuSFFkSq4rjlv5MKB0suSg=;
	h=To:Subject:From:Date:From;
	b=QgcPpgyNn4o2y9o8aizf7yRh+BbM29EsrT/CkZ3HqaSHVH32fFJMeOPzMHk14UUWU
	 4JlXMRzB1b9v51q3gwu8MTAQHcpZD/13GQhW0VN1L4BnDiesPywueEDSXBM+LTe1Ed
	 9PQ89FYxVy+yv/IEvcR2i05UYQgcQ/YIqxNdk+fUh+UEAbJylMkWCbX5HZhpH5O+FC
	 8Xv5EDfBLRhGVUV8DMHDtWrVkhaIFSx62h+ML4LoAuxH4WplMrjBELrs+SZETSJImz
	 9oOmI0k/IGoqUx9Q4pQmJtoQWlHVC8j0/FvleAZoEqSCgdrEjIB9yblBEr+5lKMotM
	 LKGYADkfQPWeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FA5C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665366277.7648.11205517008471090583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fcc0fe0288448b8d4bc573c15563643017bfd15b46c76df9d0cf1638307e13a
Date: Sat, 25 May 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716653662
