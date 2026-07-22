Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E2C43F4D9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784757574; cv=none; b=vFZlpIL/vn3Kp8iY7LbC++YHsPKd5sty9pK5CXqCV4L/d5y5VJB4EaMPgwGdKUesE1qyRp66mdSxDWh010a02Cskdi6zMgJMYHTD73f7iHjBgIWMCoYNAsqu2rU6MTMxYBI46VFOus1p7eGlTug6pX4sEWqYzjURGMjU2tpW0J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784757574; c=relaxed/simple;
	bh=303TzKJIv1KraAR11ob8ZNgy772AUmERrHzI4Xc5vwY=;
	h=To:Subject:From:Message-Id:Date; b=bJF02W3h5Q33MIoCqqf27H3TASHKB0NOpce8DBJ4Ng7oYHwoDEQSGiY4A0uT9KYIO8QzL/w9icLPNtClz4Zdr+ZUCDKr5lxfLCI6BvdtWghw5CcTXXL15QjJkguWGd5twKgitJf/0Ktckm+3vVazpFR+wTNpMrxSg46w6fp0H/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fM5RRl56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fM5RRl56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0BEC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784757573;
	bh=303TzKJIv1KraAR11ob8ZNgy772AUmERrHzI4Xc5vwY=;
	h=To:Subject:From:Date:From;
	b=fM5RRl56EkiQ0m0wTbgpEecg3DFor8JIaSiYxd/4BnoZyF6Xo+N0ikBEOZYFLOJ10
	 BzCPWInxkwu7TzFx2cIrosXpq2xMW5vF3xyptTguAeWoSrAESMXkomrtgaFs4cfN3r
	 hXnGDqOK1b0/vkf5i067TLNQ7WIotmXYwnFeK/rcprMldKCUopEQNIqNvJkK+kJanI
	 uYwNXJn5AlSw2jlF5Pydq4HmpCpSsa7plNtnsWGKemvlfhhE27HSfnIEGpHYceWI8O
	 P8x1l528ZicMFehhBCyVpchUPQtxlCZVL9eKWBTgnQO2kQjaXTnaZhxFBkr4zU45Zh
	 nNCB7WhG8y+GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9313C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475757373.1324.1794201286130412327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce2320adfeeba5432007c131d1cf88e48f1d8c57e3e3c8c8953d029ccd851bd
Date: Wed, 22 Jul 2026 21:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784757573
