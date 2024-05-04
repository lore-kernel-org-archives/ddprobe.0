Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2CE185E
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714783943; cv=none; b=jJJttLrsdaw48e9NFm+ZR2pdjOT1fw6lPFIKpuKW6ZXT31Au97yHpvKF/c/daarDJo18RsKYh5AYWPPltUzY/Uz6ub0RZ6++jztVDL/+weEAURuAxosaBeQF6qv8qlUktMVio68bvIsE7TkDAOYL6XYDnVoFKrp6RALb+ie7f+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714783943; c=relaxed/simple;
	bh=M2N+03sabgaLVNHDlbCsDpPA3tUyIi+qWBw4Mq00gq0=;
	h=To:Subject:From:Message-Id:Date; b=qD4tgOh+ed+6G7nHAyPfNdCNw8zYHsg6+Bc+4WpEPoD2NqbpeK4YwFTgMR6JlUdgNojyPR+AlxqG5XFo72/E9O4PSmaOFeE2bnQGBko4yyPvlFIoyOyUc9VBWY1iHzm0I7y9cHB72qsU2DuKRN3kN9IMwuWNtuoUmOUYZPbTwtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgpMgyFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgpMgyFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6474C116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714783942;
	bh=M2N+03sabgaLVNHDlbCsDpPA3tUyIi+qWBw4Mq00gq0=;
	h=To:Subject:From:Date:From;
	b=hgpMgyFpkZEM2Jv3JdbtKBBrE6S0InoxyOiVLfZTqUmtTYfxNnxR+eWSDwqwp/+JM
	 Em8DHEQ4tegRH/88b6tgf5o1mcHpwN9loTTgeClQBv9f3nCUM6ck3X/LfUQ6LeUr+V
	 3sEcmbDqWMDpJvP/4U11W+Tdv/GEXdO0LezCDFyuc2iu5CPXlGIUs8MNVCwKZiSe7+
	 9VukE7hRNZUROX1CttiNz4FLnlDjroQk3RbQ8SqaxhXOXHSI+ZP4C42y2zFNzxsqyb
	 ym/RX/09HW3jcOp32NFWXH/0fPqcad7jYMpQeKdBn1ZIEKke+4U81cM2VrWr2TikuJ
	 i99TVcXP7tC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C32C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478394278.20627.17861700568768832132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816083cdd12499ce42ff0526b0d194f4ae6184958c1cc59422136a0dc5117d3d
Date: Sat, 04 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714783942
