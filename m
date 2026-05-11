Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1646228A72F
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778506234; cv=none; b=UgzCW+kiaZCKvYH/aDQU4MltwtJ9FddJxd+E+RkH/KfeakLYVx+g9fSFMZNiL2c7km0IyhtNaKwX/P+08r1OEm/pqLfhc0pb0LCxx6Y2fJqlRD/gIDAIcMFzSNKNOGrq2oXXdwyFl3CwtDHFesbVYdT1tdI/FH0bGGuSD1ScC7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778506234; c=relaxed/simple;
	bh=DnCMdD2FbQNHS9sgDF6ui1GNts2VBlAiUuIrdKAbrbA=;
	h=To:Subject:From:Message-Id:Date; b=B4oEcIdeEk9nNKMY/tfiEmVDLzbAPizA/QVFW87tPUIyRTh1RKh4yMOyOPVqtDkMA83tF2d7V3EEdJxz37orP6Vk9r9XbK1K+8O8OBjxdvda75CdWR0TFf18gNllM1OIkoVZmgi23YuTkx2rjXHm0NMVaXb2lz4NdA93TwGdFZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UC6R3d65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UC6R3d65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92F9C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778506233;
	bh=DnCMdD2FbQNHS9sgDF6ui1GNts2VBlAiUuIrdKAbrbA=;
	h=To:Subject:From:Date:From;
	b=UC6R3d65vtNpnv5Et85BNdnni1adgr35zMimQKYAn6YCQRvFYsLmGrKy7ivloayjv
	 PWYxTXYf/lhzbBtrI4tJW1th4bBu08tCXeGlkSnOQOpTUpTWvG7f2VLH5Ef/uAxWpb
	 skYaqk94gtkVG8py1Earwl+CsqluNuc6j/a1H2kiFlzf+hSMMSVTnJC28vPfatv+/N
	 cgbAGpVfowlrbs5X8uFd1iGQOO4XsBvk7Oicn6kAz8/SyherwUbDyPvI2ojy54IF1U
	 mESccfTSPiQMoP4D3MvIiZpEIXab5UyOmLsAp28dw3yfEWEq+pG55RGWZ/3wPsOkJo
	 BKFxYjGj8UrMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB8CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850623369.6665.10847354480620999496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f0cc51e557b83729935652ce41932e51e13ce1caad0f2122f91c77565733ad
Date: Mon, 11 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778506233
