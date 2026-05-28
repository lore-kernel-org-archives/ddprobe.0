Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CFE30567E
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780007554; cv=none; b=INRdcZr2068f8VVla6T9WFMZmRLDQx2sDONiLwwTZ7Ml5B4YVccJ8y6WLBog3PVuvWzDigbH+7MM0Gstc1K2EHq1jurv1L0+Ozx+j81Phi3Hy20BpQsOxiB3FRga44F5EFtbeSUJCsJSBAgL6AvpaEy+cTHs6p0JHNyXPBtEbwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780007554; c=relaxed/simple;
	bh=/KTAdDu8TuhRX+PLlgDJq5d/mxtQO846/WA3fiwGAK0=;
	h=To:Subject:From:Message-Id:Date; b=DsFlJ5SX7wNf8WoHxrmk0IJAg76iMHcK3zy/hGt22ZMK3zyIATRlfQbumjEgPvX6A/WfbD/DGinfD6zvdSvTDxCLgpZDh+RCP05dx9AyPe9gAIWyT7DWEYYKEedwM53Jl36UiPvFU4UbZwcGkFCX9DdEYP1Tixt9qd9vdSe3RLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TD2N2SUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TD2N2SUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C503FC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780007553;
	bh=/KTAdDu8TuhRX+PLlgDJq5d/mxtQO846/WA3fiwGAK0=;
	h=To:Subject:From:Date:From;
	b=TD2N2SUw/bi3AWsLAIdimCNk+zT5xPFGWrpEy4orQRU5Rsjj0tsr7ZlMXPTCaoS/4
	 n5Kz75jU2VFP3iPgv6UzGlG82snl3L8z9WAA4nZBK/++TK/M8I/qeEZgfHgblSZYc5
	 JdpZMSBjYSYeglKi0LjyDhvos4+Szcb+3iLYVzyfrRwEjSKKskhubCvw2SmHtLvOM6
	 A+x8BfHeZQKPTTa/dReRbm86Jk/SaXfZ5wa+hHEmUQU0ORZ/5flq1MYaq+34TrZpDv
	 nH2NRRpM/piWGCiVvt906VRMsOgHTJ9EHvP8R8OAm3tnxmv36kOz6RT+7WcBjzvhS6
	 fB2+bu3PgxACw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA27FCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000755368.28015.10589499464654139273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec28f2259917058717466240857550a250e0d8bf98fa4ebf6bdd3d00f7879006
Date: Thu, 28 May 2026 22:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780007553
