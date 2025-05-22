Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5732D0269
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747955393; cv=none; b=C4zyG/SfOmnQU74nUSgSzF3PvW0Gf/O3Mok2s3T+FsJMW2cNcdFiMW92fv1u4cvlJy0rN6VAFGVymS6X7aiXB3d2rNB3h0qvazPUdHg3UIIlYIsWoVhdX7Dejtm7PkQJHkM9jP634tbdr9mFfI4WdOKejL5Ttp1vGiOm69RIFkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747955393; c=relaxed/simple;
	bh=Gg/CUqNxvyicMOXBaX6zRKDXI2NViPNKdjlCQ4OxJPg=;
	h=To:Subject:From:Message-Id:Date; b=N5Chwff9RUxG5L/If2XoMVFRw/vCpuycCdmczhiGmu1tkEpFcSML/rzl/VdnTGdQXF+PS2Ssy5cci0rKxyPtKwJbRTWiPq5RYawnLSreJ/DNUkdP1BLsdAntsW2obCQit91RaQTv93JpPtv5X0POIiLMI/20JwF2gpPx3GBxwx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r48q3r8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r48q3r8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D86CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747955393;
	bh=Gg/CUqNxvyicMOXBaX6zRKDXI2NViPNKdjlCQ4OxJPg=;
	h=To:Subject:From:Date:From;
	b=r48q3r8OH0yCkEIhNYDU1kC3swaGm5sSMHt1HaSM86B/npXnCtbdLk6LwUTpnQtGq
	 SEDw38DcYD9EhpbyIpBm9RnnYD038N0JBe/rs2ojNnlf6yX7mzEfVtPLuo+TPS3HYp
	 XMq5NYsIoadaxgZ7Ouj+j+hijfxLdE3TXUnEg/s0lvnPAjuOwg68EB8TSPmXwCxSA/
	 /7vQuTIHePLb0dhwO+o6LOsWwLMBgleCL4eXc/6CyFhhak0zEr9rlJS8OHxsEZsi+4
	 bp+LKPk6fa0fVczAMR6T9YpIvbsnJZhNpN0YsQOxV4XQq3qT1rmZy5e8F4PiFn4aGf
	 iLBgvvJWMhvug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFCC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795539357.19829.14963778351739016674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c9cc43eec9360a75d73a665b890d7f4e2820463fe9134db252d3ed31616373
Date: Thu, 22 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747955393
