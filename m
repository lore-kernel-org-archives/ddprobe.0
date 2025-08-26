Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F62E2D7386
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756227596; cv=none; b=DEERk3hOj6FmaTi/Ktubcx2DJ/Yw5B9x2G+DfLb1Gg1Egsw1YMuo3wMIkArx437EDuz3S3k1USGf/cw+MLz0DCmGPNnRE5/q2EacpKbJXGqur8Bw5DVy30UccDD7/dXhZGCTCjJfTknGXw4a3FqYF3qpTQhPFjdCO3m3t9PIIjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756227596; c=relaxed/simple;
	bh=TNrk4qM8GVAYjgmuHSBH5yVC9h3iJMixuDa8OHeOO0w=;
	h=To:Subject:From:Message-Id:Date; b=dKejWx9y0NzGsmUlvqXYr4cs7DDdi/r3wSFCes633Gah/mHr7cVMjNoL55Xk7ulMd5IgyHgQif5taDsexEQvufVb2okcCYswhkm86vyzrT7Hi3PgqNTKwZeR/yO11BnaxlTNn5YcASpus5pVJvZKxTnhnzsBtdhFta9qlmTg7Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJQnkJZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJQnkJZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756227593;
	bh=TNrk4qM8GVAYjgmuHSBH5yVC9h3iJMixuDa8OHeOO0w=;
	h=To:Subject:From:Date:From;
	b=bJQnkJZOJ9zaGhasE3oQKwAu0nastP01rqjPJKShCvQUNEksv+ausTEgWKfrligzA
	 Nh5mONRXmLvZdd2i1xv/m0FsqhbFCqbBZa9hG1dgXYb3Hbe6adPYjVLJMsxb0tyKvo
	 xrdS73X2YPL3tLJXc1HVAusLC7OOuaZyeni7U9nmCNpenwQXoudhJuK/xnSgEAuQym
	 Zso6Aguj6f7AP+0cuaBWDFrnwpRyb3rFlNqv9usb9wpKl4/y+1tZQCobjtPdahpzS9
	 rwqBAaTTYiGVsm4dtEge49k7IZEvILFSjNCCvdqA86LwSN4XCzH4R1Ent7496Kf0TU
	 /d9k6sVQoEX8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132CCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622759357.13105.18178422129487701903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5a4026b3d81541ac23d67d52193acc1493d7dbe3c7ff970d6d6af777898821
Date: Tue, 26 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756227593
