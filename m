Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EC32C21E8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789240834; cv=none; b=Jz0x+vGDURM1G3G1EB7F5FyYgU/BBbiyGRKp/2OuOONXJetqqsAzA6MYiV34x2+0750h+BaG4NrN+9/sZ6b9Upr/slYkjAB6bnNp91uCh0E0Zdp+p5skMaxEe7pm5f9GdpwLfexPQ5b0zHWf1nwtLl65sqqG2CDGKhEhbhQwJtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789240834; c=relaxed/simple;
	bh=GuVA0Y+G0ivpmNoDU3Ex+hMmaNuTXHwWZKCgK5x7Unw=;
	h=To:Subject:From:Message-Id:Date; b=MkgkSyqaSX9mS2COAxdv82XZnWNp52dw0xIPnespnYn2p066jqpIpJjlxhqvPedAbyj6KErVYBpBolxtUq/1BkTJUc62bdDoNVSj5z03rMQV8Q1cD7UcA875HdB6YqTcAomXBIPfWhuCvtyA8qzSxtV/pbNyRREVwLitjguOf2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRMyyTkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRMyyTkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB06C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789240833;
	bh=GuVA0Y+G0ivpmNoDU3Ex+hMmaNuTXHwWZKCgK5x7Unw=;
	h=To:Subject:From:Date:From;
	b=iRMyyTkDwYsp431Ld/bQfzDRukjDNm5dGKdSr9QXyW209xFPdooxkw5tuuW/Bc9MZ
	 tlDKSQWzR5tYXGpaZFPXMeZoN/SHY90NqeL/RsuHEdwqoMy4RS8cDcQNNxP8C4qmSo
	 v/7QTTFr2N63OmwHTBUtzBuiLFqm59OApYHffypfEkXNqLan3ad5327dZLKV/GbYBU
	 YlK75bhmyf/cLdzhykATdQxiXjQhX1go5Nnvj/jSVaQsxmp/vT3egXcgGekQvPDguI
	 FbXwKaN2HpkBVzl293m0GAAonixY1CvVVRC2JFFL3ixYTyY5jDwXNTkfWg0fMkP5S/
	 kkNHagb0njtUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B0C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924083368.19443.2357784500848834166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a66af12e45c9d5dfe06cafeeb55bea9e8587fdc9155b791cdaa1d08f3a00f28
Date: Sat, 12 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789240833
