Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636981922C4
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 12:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717764443; cv=none; b=XEQ++tlfK58e3SBjDZd47TE7UZ5LzWC6G949gBIpuMm8ERqpy0TPRTu5Y1qIsHkaDfdioHwZz5cDa0TJ5frR1G0rxYP2Yt/x4Jmi3UiaMYvm8ICtAjl6aj9PR9c2EKTINTReRLvOC4bv+CgsX8+GLtf6P/+IGrreb/xIwY/nNOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717764443; c=relaxed/simple;
	bh=SVlheqGXjEqWk5rmwdAmCuYaWg3FXalYQxFWWQq8eE8=;
	h=To:Subject:From:Message-Id:Date; b=OgTEhuE7at9c1j0dWHg/glLcm4vv75NTx84JjpkgTbKJK/fT1AHb5bYWZ6DNnpyIT2bkTB7T4R+Ab5b6uad+fv4I+Xj4kXTuHL/FYdgMNe8lwuYPluZKYg7MrcLSX8MGWZWzk3AOhD35x9426PEIvKQRc1opm0SDRuzyQiBTEik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBGZQnwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBGZQnwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9CFC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 12:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717764442;
	bh=SVlheqGXjEqWk5rmwdAmCuYaWg3FXalYQxFWWQq8eE8=;
	h=To:Subject:From:Date:From;
	b=CBGZQnwOc+w4Gr5yDIfF7L3hb8yZ4wj6wWP/BBytFZ7JdLchGR2giMw3K8G3MzFmT
	 auWgBGIbhGImc6W+zdjTLR98ZdJ/D1jfBlepZwvqEAcpM6Ecij5SCNnC5nRIxKtmFY
	 JErsg746Admzc22Cteihis/lPpM85hSbDRvGdBvfrWfsi+eEezWYTtYJEDMm6hG1dJ
	 iE/fRHDKESu9P4OEtA0wicfK3Tg/Ao6T6IrM3CT95VcKvKdQUuHQ/N04GCFdJBVST+
	 Q2c3nmLKrd4Xu6h1MD8X+kmy4vHCCHmeB9YOdcbVY6+z4zwrTndcRTKm5IbApr6KQE
	 xyNWMM0UH3w7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7392C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 12:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776444280.19743.17152548346083662262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9555c599a4242fa8f0c21480aee27376745eccdcce44927cc3dbf216f4da1b56
Date: Fri, 07 Jun 2024 12:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717764442
