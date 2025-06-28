Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAC822FDFA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751141394; cv=none; b=RDRAjBDtSG2d8jIlV3k2qdKNEN13qaIMuBI091WrU3/Z3z558cDuGLi/+AFLDfOASbH1mg8S4puL43rlSFnxXKZrb5MmQXPCPPh0+bMBnBAY1wpKlXxheBJ1gF+mmPHiDH1F8txiwussHV2CrGYy/Pag2pR02Krz4zwoQ12RxNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751141394; c=relaxed/simple;
	bh=UTtm4X5/naOplSPLTf29SvprGac8Yj6uac8j2TNuuDg=;
	h=To:Subject:From:Message-Id:Date; b=UK65wq+JMLtOIR4zENYOdGkzNSoZ4mxEiBXMn8XcIEdY/fQnE8+ntfkq7erlJj+2Igc8JO6pfkyol2F/CotZqdaGjSC2J0dSukPOZXtXH97A8PNK9W9unRXE4OHkvV19+ISyf3aaQ/c9+akNl722onm/K51uq9EhaOWDS0duw3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT47vng+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT47vng+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E540C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751141393;
	bh=UTtm4X5/naOplSPLTf29SvprGac8Yj6uac8j2TNuuDg=;
	h=To:Subject:From:Date:From;
	b=iT47vng+ZHzATYV2hWTvOSw3iLwe8A+y8VNDJX08q5MAI9oa+8pCXnWmq/sIF3Ut3
	 oK6zniGnv6BzS5BpYccn/gESwKg2182AER69MoaSsUSeyxTfVSpxwwBnwttGyPmvGs
	 vWUlbdoDLm2HruGLf8rhbRNTsyAt5LC2ZCocUhQTu1hWGnBmwg4REn/MuDpzvt64DD
	 eUMBiQKkPcIphxblylH+KE1Qwt6M44PTAdAp9H0y7EMGUwxA8TZ2rJJqtBIgpzhdXS
	 96MUcNRGMgSy4qWrvZ78tlhpbUpF+RDSvWXBsBXx1WgQDRKTEzm1aAQhcajPS4RsXo
	 NLwDNXqJv054g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E04FC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114139357.25320.7274751278406090998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a2bdb1fe729ea807151ed56dc2af4c91e2e7b837106f113f63a1529b7405d4
Date: Sat, 28 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751141393
