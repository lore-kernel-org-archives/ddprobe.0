Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511BE28E3F
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744604994; cv=none; b=jByWMuTkWPUxMXK+5CIFKLEvZURzqz4fycxu/e8h1hmRbBa9/ldcZTVAHXYiuvCAJeLoYh26bRl+pptK//GGN3qpCnP1fVfjdGnJx0VvIsJJbZMcVtODlEj5enumb3WlMLsw90OrjpHguXgVlfPNIqRxF3wwogk3pJWAN0OWe+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744604994; c=relaxed/simple;
	bh=UgAmQlqmosPCCb2hNQwSnSDS6UQt1ay8+NiyOaH6br8=;
	h=To:Subject:From:Message-Id:Date; b=ZKFnyOrhzcAVKSbPip0OnZjmO1InnSZ5gqGF2qUrL/wgzN9JiPPGV1zutuqlq8Ah63l2W75ry5bJvM1cBXZBTNwt+o2WY0KlF6UTm6+gyKIIuP7tCWyAztlsQ/kMJkmfbK9JERDnM7nJDkCtKF5bMchJD+QAMM+ktDZwMuVUP9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6zGO5NO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6zGO5NO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16F1C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744604993;
	bh=UgAmQlqmosPCCb2hNQwSnSDS6UQt1ay8+NiyOaH6br8=;
	h=To:Subject:From:Date:From;
	b=L6zGO5NOR3wHVjP/Nw6Xc86VeD1XST2gOp/PUPjSkFPG55pz9T4H18hkAQLwvdKOV
	 dDJAL5Ol3SseK915ort5Z4tlO61iLDHetIenkhrqr8EskQ2aqwyns8gshvMeyKd1rb
	 AqdCopB7tpQIo9CnJI3qE1xPsKyD2ujClk+bVojniPhPxlm/IJ4X8qt3GkkuKNgHS2
	 s2LCVw6tQdTYVpInJPGTo5SPUcYDcxCgZQ/ujvGxyldwC9NTnILIpZNyMPLgeyn9Ii
	 q2eaVKAAZz/YbEzKINzj06h2o16Ggslh8DSuw7Rzv6xtfSJoHr73ADMX3yLjJCsHvq
	 v26n6YGLj+fQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993AEC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460499361.6005.8673707062145000484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd30d8c748189a9dcb297565ae6221eee6edff3c1e0275a8332da1d1a09f8976
Date: Mon, 14 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744604993
