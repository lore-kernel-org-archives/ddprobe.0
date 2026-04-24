Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C15178372
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777048654; cv=none; b=XUyOigIMCscKzv0IQZvzzuj2kBfqTrvepkFj9FeSZgSXfx3FqpmhEa1hVqQ9U7wDy+Yj/V6SBpu79sBYx0imB4ENgLZgTgzeRxC0OcMABx8edwA9dQ/sHOPYWMALpotNgHIxUNjxfPAbgtCDVIphXLOgz5eXJhvJwAUQfHkI1AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777048654; c=relaxed/simple;
	bh=9ZF9Neo+6FwRn/v9VmFBN5xSjMDifOB30DhPih/xZ5I=;
	h=To:Subject:From:Message-Id:Date; b=ujF4VIjiE881U2RTdn2Z4nh/Gr5XyA57dtBOBjWgkxt193yxyf1aqLwoEcntZjkMCrC0XGNIMPAeoInuzbLQpq8ZDhbO1SdA1QhV/ymxWURb8LiI8WqBkExCBjmtqazWz93QrNB9higv+MS6i4yMLnSgEN94aptDND3aicYpd3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqqLMl3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqqLMl3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BA2C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777048653;
	bh=9ZF9Neo+6FwRn/v9VmFBN5xSjMDifOB30DhPih/xZ5I=;
	h=To:Subject:From:Date:From;
	b=FqqLMl3//WocsvtCwXR0RYwEkZC7+X7zomOf5QMWTn9t6JwfZ2ww1sGRhFRJt6eud
	 6DCUUa8+dDNs/zN8tCSTHrAhZCURNNgQWpm2+Jh580czTqAN6E62ncEt4jawAyx0cP
	 XshuEG3+pzL782zw7bBdZlVp7pogOlWF98g6lbTRaXQ2c018PdfN0h3PesbAiaMHxx
	 MwE1/uQafvaKxuL4enFT4YeQSjSNgw/s28umGbuQwC83Hrw2iNOVVO1tQ/hVEr8AyC
	 DViHXoys5dP9EekTt8DMvS+6NGePeuTPmbOecU1Ul5GXE65pGW1eanPBtAFVx0DV9J
	 GBYc5jYQlAcuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF12CFED3EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704865368.20126.10148068891540686411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0331a880117bb21eefe77b97295c5bd423dfa7762dda6fc43f4f42a009508a97
Date: Fri, 24 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777048653
