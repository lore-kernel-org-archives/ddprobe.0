Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D42640D573
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781422594; cv=none; b=kmw32ssw7cKUm3CUcJqqmH/7BBpEV6wLsymxkMmaf45fwH2Mg8ofuIOh49bPV5uBwoUwUHARd3Pn9MI4OW3U9P2tYYsGXsM4aAT2zTNOPesuTmpkolFvK0ykwxLGyUAyV6vRZE19xi45l+KpNhFNq7Xx4eIpDZzVl/3onUmAm9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781422594; c=relaxed/simple;
	bh=h3Zx5t8IfkODWh8K+3a6wWCcOjlaukwFggumyCxf8Qc=;
	h=To:Subject:From:Message-Id:Date; b=Axgovv09kPHJ/Cmv1dDnosqMjaoeQCaqXuuJAJAMXL8QtHNxZI71T8m0pdyLzBsB0JDV0uebeTas0JAsSsNduK3rxMJHLIeoXzkh4ykDt2y4+VgbwPlSCM7DVLs3r5cgzMUl2Bs7VSxhkmAYK/XDIbcSWIqG2RsJ61l7CvGYBXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGojC6XP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGojC6XP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC80C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781422593;
	bh=h3Zx5t8IfkODWh8K+3a6wWCcOjlaukwFggumyCxf8Qc=;
	h=To:Subject:From:Date:From;
	b=gGojC6XPFfDsY5bgz8aIRaRHV/Qjih6VI5cHzg8Qx6XdgiAwJOwpQKYTvv0j9eQb/
	 gyNbfvqt68OAFbpt0j+Tx6xtJGaSAcDEh2aOCoypmMEwUTaFTsFP6Y5mRz88WV21aX
	 med76YxGaV7a+bydcIbeApXxF0cHGOxdCySwQLg84t6/rA6s6cbSVi7qD3h9wQXadz
	 /URF7cKnbiZRY2LvCIZxq8BOWGAfQq00iOFsOyay8lELDTLd6pbk1T+f/7BEJNIKNv
	 /1ETjCTrlzQgNKRSKGctsq16nBn03R6GXE7atWoMLov5smQ6cEN4CvQmdGbEssAbb5
	 kxBDu+XqnFdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1619CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142259370.10144.14156293050900427819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a337ffba2688fc488510fab0612d6a3eeb6c6764c92c23f1be61a0f6315fe164
Date: Sun, 14 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781422593
