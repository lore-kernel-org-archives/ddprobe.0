Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A57E34B43F
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771596294; cv=none; b=Ge/3SG4X4Q2BBcUDCyVyCTaWqMHI87nDKy4tWYHZ3jsjztmbRmSI15N1B7EyiQCby1M/thiYz3usf5rICGm3ow77c4zG5+QJE0yBvsXERKySZCnLFZuwKTb4hl52jwut5uijIfDwWRsfgBfnfM27941eNJPC+vsx9NRpsa3wPAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771596294; c=relaxed/simple;
	bh=ocRDPKo3zhWEOG6qin9qV7Sx29KWMvmsqbCDJu6lNEc=;
	h=To:Subject:From:Message-Id:Date; b=hBOOYUSLb+eBnhrUqqUC2gbSU2Zvw6hHbDRe1dvl1DIT8VQ1IBvFObfEpp11BbmeEfIEiic92qMZIFO37Iq4ZkqPB3/jJBTHMLCySIhiob5wkQ5PvVaUNi41e0cU4J63kGE9vlUIs1/A6Gf3TqTti3D0uvwM+X9DeSkO9A7vn9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHWOhTQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHWOhTQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5DCC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771596293;
	bh=ocRDPKo3zhWEOG6qin9qV7Sx29KWMvmsqbCDJu6lNEc=;
	h=To:Subject:From:Date:From;
	b=iHWOhTQ3Da2b20nuFPX4ZzB2jpaj7fttKhkm4K52AJskxm+T+B+9byFl2inNfLnF0
	 0j2OibQNG+7IebenQGQe6/BcuZK2wpgfAQMhT+X+28g1+qXIbr+ncQx61ikuLDcuV6
	 nu3PnDwlxnONupjQEkwVoDi0RJK45WmeiwpX2PPJANXppu0OQaeMMMAsdSbmtFWuIP
	 kUX4liNK9yRQ2UMdiIO85dNmYdxk1dKk4cRbHBG2WKRak5gX7folG9oLcESNmRTFNB
	 wL0TSgvoGkHg+USWcYPCIZAhPeL1HRxo5LObkb39mz/OsNO8yy7wLZD5Yfm9RK8cGu
	 6u43Ly0qqxj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DFCC531FB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159629359.9648.15645879225701156362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586d1d701b8eac9e7b08374b979e4c030ecdda266eb214ea232d0dfbc1b07f95
Date: Fri, 20 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771596293
