Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61810137C31
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716225143; cv=none; b=lTfh864p6tMD1f+Gzy2r/vu5TUQeMXpz7wPwxs9Epb4u2JSe1G8arkWjGxutVfjvLk0MRcaiHa36Fg/cEn9GecNFKzKu94SIO88hHYt6kP9HMeRcu+me1sJnm/6mouXvE/QIHPSwtrxS/GUV0Il+9VOi9+Fg7I6VQ+dFXSy3C7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716225143; c=relaxed/simple;
	bh=0y3d7wr33v/Dp131uN9Rmk85a+gNhKU5/17zU5PPPEk=;
	h=To:Subject:From:Message-Id:Date; b=Q2PVlQcFhcRtnK111ZRSOso1bJv/qT61iw/8R2RWY8Y3/OeKmsdDc28NIa//BQwvWH8dY00RGjxOWUyNh2/PK6aCRICDZCkTfqSHYZePKQnvnhsAYUBBvkCHVC2YYq7XK0gxsdgan4f0XMjDCh+eyQCnEH763vMuZQ0QONwojwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFCKchzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFCKchzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3227C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716225142;
	bh=0y3d7wr33v/Dp131uN9Rmk85a+gNhKU5/17zU5PPPEk=;
	h=To:Subject:From:Date:From;
	b=DFCKchzjJyeN4IlK76JHC3jk4iXQRRt3ZeYbH2Y4Oy06zlALymikSrhbklirNTiAj
	 A5pcR35P2pxf0jVt7e1Yb3iieTWgnt18lo6WzowMLb3PcMVjrxFzkX4hrh8iqNTsWF
	 lrTF3GvhhEmF/qosC/YLMUWU1lBJ1Rqal7Kxod7MB9VUys/SbEMCHDRl4GSl67GC1n
	 D+nPtpIC85VbHnY0JdgtcWRbu0ULJySNxTr41YmD1wl9Ksl0VvWQAVoYGwWV/7Gi4j
	 /1hZis+cFsdDOIkog3mxkL2YeKR+iCyRFOIWXiXCSlH0R9rtQUMGh7i7pCNbkBynP1
	 G8XJeI+otW1/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D27B4C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171622514284.24095.13793760601063220846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a31d10825dd3b4d2af4fff5ea7fca2e3b6c2c73f2bc9be97f91c672892ad8b
Date: Mon, 20 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716225142
