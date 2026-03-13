Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EB239D6E6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419094; cv=none; b=aB6zR87Vj+h05qFDsbRCV1roMKiv6x9kgfrQLU8oPlr1B8VqNisUVQ29Xr5Aobh1NRKysgQpWqq5dnpbbay0rN7prg45g0RTSTawwwMS0tC7120JE62mRmOH0GbuXFk64Mwo1PofOE8EWmdGKuXdOSx4Z6hYj8iBUKiIiE8tRAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419094; c=relaxed/simple;
	bh=DtVo8fMrsp2OZKOfU4hx65VjyYKDs2ijiv/8nBjjalU=;
	h=To:Subject:From:Message-Id:Date; b=ofWxKeGMPPsKOAuGAwOoXSM9HMJ7xja4oQ9WhTH5w+pVEpg6TnRZQR2Y8rCv+mRW/z7JZyYuqHcMTtaaaZ030QratL7pMKuMM0+h1ZeyQQsNJ87f4m07VudPWx9y2LF0PloIJxD4vQQ5H967nfqyGxnIBq3qGrUb6g5U1vMX1ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9fP1V0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9fP1V0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AEDC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773419093;
	bh=DtVo8fMrsp2OZKOfU4hx65VjyYKDs2ijiv/8nBjjalU=;
	h=To:Subject:From:Date:From;
	b=F9fP1V0NW831K82aPel1Rf1pLYmnVryxT3HlDUgOdMTpFchjsM7ucLaiFF2KgZWxv
	 ksdQY7nXQLiFxAO2A7OmxP6cQrRUwRVp2aWFgckoEAmFGlNgDIEMGDSOhLJpmoxaT2
	 GRYFdiHSdfFltWAehT1T9xncCJFy45mMGpMsXWS/GiIMlgJdh8OnnY4JQXNEqleuxp
	 R8zHI9LS3ZRGumvPc80P6ClRc8LIcniILlJumhZktTFBz6GxjN0F+fpXSzH9mMUGlO
	 vHHq6hNIgxfLNfGu+lodT+8gkpIca7MnOSezA+X04Ab+6vkg9f6+HCOouoXfQeMSYQ
	 Asztt5QUXKQ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FCE107BCCB
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341909361.31290.9276499506808746736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18ebe9adca24a8dee9839075b20696e76cf34b36217b3affd8535ffbe486230
Date: Fri, 13 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773419093
