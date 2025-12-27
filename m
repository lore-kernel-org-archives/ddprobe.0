Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9FA20FAAB
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766795034; cv=none; b=giuJPQv0tuvs0pzFb/2ORJR4N2/ATwccvVc1iSBLpZVSvk44jlEqbICjR77MXzbhEJJmr6N1iHA8VwgErwIzPVuH9w28UH0BsuNY4TNIiPelyGyZF5iOH1y+DYTpCCvQrdwaEQNtCsoUBYIm5vdUx/74B82CoJf0gy9CErGQqZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766795034; c=relaxed/simple;
	bh=3/iMPvk6A/dJ7exjfi5jCyddp2jIGIxleUy3olIIwfc=;
	h=To:Subject:From:Message-Id:Date; b=B83yW1uH94rGoiJO/dQ2G5bwHggzydnwtJUAEfIqdL9J2FYfzxARbuylahRZoToj2OKhAdUlvauLDFLYygUTOYWQTUM6TrGuEzb3f3vvVAKKWaDB66Pn9idUEfs9rQugYe5u1KG/pVIiohLZL4wrrZr9TW/QAT6rX79Sv16ZrvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfVQelNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfVQelNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C9EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766795033;
	bh=3/iMPvk6A/dJ7exjfi5jCyddp2jIGIxleUy3olIIwfc=;
	h=To:Subject:From:Date:From;
	b=bfVQelNBRnM3V+/KVvUcNIT14BSX1rW2lRwyh3Pi7wfZKas0s4db2c960he6Xi1Nm
	 wG1KJRVNXwY/V2QYLeMn1v6fXUEIhH25E735t2ChJXYD42pjwAP9hHgxv3/jRG4F6l
	 Gvt6OIOkUIswpOAjlABrrYZc0A5FltxWAQEok5RooZLGREwYLxPay2d++wwtS9UaGS
	 fUgaADT6bgAV5Ikzl+2YlhsCpf8PV5DvFPuYZQi9Dsi9Qnbd3jq3Z3BGlLGZyD7aNi
	 m7RjbnY71vaqKoIwEsBnu474bpg2Nbl234M5jcE3kyBgOLBNTX/bVT4+QpfPbxH1Dm
	 Fi39IgBt+GjRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA71E8FDBF
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679503361.10658.12981525867188047322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41cbb3f4335b2dfc26f81d074379d55753f3a58c112b17914e84117b6234d2ae
Date: Sat, 27 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766795033
