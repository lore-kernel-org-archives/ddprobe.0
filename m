Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C9C2AD0F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753034994; cv=none; b=iYQJUFvrKLrrj8BYFv2/RJRXgvPkHACH0xCHj22JnjNM/fNtFRGF288O5/6Stz0DATZq9LO0NMV2jPlj7SPLDQ+GuWBCNX97IFNeE6p/Cr5aISfc3u+GlvNLFXYGewLTLM04ZPLk0fHylqciphygOaOZqXtamzORGWHL5uUyua8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753034994; c=relaxed/simple;
	bh=TWEjQevf1+/7K6q8r6ryM3Rl/k+LsRmr5j+fyhZ2rmo=;
	h=To:Subject:From:Message-Id:Date; b=tlAuMz0qU3m3qh6aMDYPMVYxVthN7vM2su7Kr21PG5CHdegxZJCbBAu0hJr39CH4vqhJqRpZqNWlOWuBpy/SZO9G5d984vPd5H0r8NwzZRSXTcLuekfK/5M0kcMLpNjeLL9t9O578kWffuJ3Vj7doRjms02gT0/ev1yGu9b4t3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAtd5zee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAtd5zee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753034993;
	bh=TWEjQevf1+/7K6q8r6ryM3Rl/k+LsRmr5j+fyhZ2rmo=;
	h=To:Subject:From:Date:From;
	b=KAtd5zeehC4h59yq1Yxjmfu8fCU7VAQBBJd9+PDRdmz3RL2J5SmRZt2TsQ6IoDhbK
	 aqwH+NF1cJkZBm/+yHwm8tJ0Wg8SDZ3Vu13iy0P2aTwCmMnmlpfpKft6P53LRIK1oE
	 50aJ7th5GKPSd/BScK6bVgYfSn9h4tSe78pbIwx0mlZy710fxgMDp81rmknWmvP85g
	 pi/GFKgzEHBhL9ncyOosxlI5OxBXlX0dXF0muMY87yiuWDr7FoHkB/KZ48R4H1ej0X
	 XVKBqVGelFA5N5mdRutd/2eWiP31N7ZZixfNHAZYMNz/aeGOk9my8BFE6TeqmBdChw
	 307XWQaTL5bRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90443C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303499358.7837.18389013488166237076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b4e69495327685ad16214d5acc76603bb2614cf38a38236295a25dd5e41bff
Date: Sun, 20 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753034993
