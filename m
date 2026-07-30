Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AB778F2B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785369634; cv=none; b=ql9Epg8D2lup7X5QAe0WuFKf2sd2kIsq90DzSgFCMda6Nkqq3ZBJrEpRv0rT51xWPUAsmX0KTc7falv5SQ7P2oR36+Z0zKJ3/UyA6z481nTapDJ5hgDcWyaUplWTlLuLw5xVtD0aJlJVbVu1iFhLmKN2+Jz7eCHfPbfVChVCvtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785369634; c=relaxed/simple;
	bh=DS4n8lidvcPla7SBe1k5G8qx0ToqXpVDfpye7K0R/84=;
	h=To:Subject:From:Message-Id:Date; b=r1CWfUUwgRyElBenpoI9vVEtZAWxmoM2r2428AiZPcArHOt/shPIABLMw0BzAmJ26QRuSN0VAiWsAmP18fiD6g3mRVVFkNabidVVkmWYVQhIQ2Pj3sl7ilr8IFvzV/tcrT25JEpu5jSaiemNd5J0hvS6/Ogo1BTJIAC+bjXxIwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIbioI7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIbioI7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8D8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785369633;
	bh=DS4n8lidvcPla7SBe1k5G8qx0ToqXpVDfpye7K0R/84=;
	h=To:Subject:From:Date:From;
	b=cIbioI7a2sa4HGT3/Iojc4Ay66CsyZZueSTyVUm4T01SxnTuA9KLsumbS8u0XgMqx
	 PSTwf2DeJgOZsfcVgoihfmwe6CZVLu+nb8md8VKvGwGwXy4Loz7Mn1rIISGu82l0AC
	 VTbRD+Nxq6o6zsLKRleCzeeDxaHzZ5RnhMNHNLQA85I6zkTdqAfTTB37vx+MUbvzx3
	 +4HU1Q++rkmjDHrHtp0tKzQz/p9AAeq2mjpg5a5/KbU/9kz7BXjmmBkg4NKBusPgiN
	 RP+Nm4WLQyNzV0E0UmU08wmNriBkr7LH6gslG6qN9qmqTBD/MYJ86lBrqRbP/8kgR9
	 pmBAc7pHxacng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC3FC54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536963368.8105.4568096369656723567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7028dd84676fd445a80aaf116d77f88f4e39b7827ab3962409ab63026f5e0e7
Date: Thu, 30 Jul 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785369633
