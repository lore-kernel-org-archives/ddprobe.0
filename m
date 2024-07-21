Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455B033E1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721549154; cv=none; b=TDKuPQKGceaxW9QFHVMJfYlYpCurCnD6zi/QwpDnrKfI3rIZbHyo7c1fdAZxOh3d/s9iVHuJf06xERvUwQa/ORvZsyiD9e0XTUVenZv1TAXBU1HFkIchBMoeyqqAIElPmTIGgMCVG4KDNMun0JFrCp8CFQnGkMomxLfUu5TvASY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721549154; c=relaxed/simple;
	bh=esLACmfUX/PfURd8lvtMtiQsMIbbufKsp2483hg/wFo=;
	h=To:Subject:From:Message-Id:Date; b=GoB0J09bMAzzbboqoqUYdUNvLHNzNXn80s/2AMTzUajKG7d+UF8+oeLe1YQDb7LRXaCPO9BeUmmWUhbY8zwEqeBWOhvDHeND//KABb2J/xuBdYrpXLTXQPpS2djRYGPf6anTMUEjYSRsT54xCP/+F7hbOrL6Rc9dCfx9Qdut61Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seUwbd6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seUwbd6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC70AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721549153;
	bh=esLACmfUX/PfURd8lvtMtiQsMIbbufKsp2483hg/wFo=;
	h=To:Subject:From:Date:From;
	b=seUwbd6CMJeCHLt5OwKPgv/B/96aIE8WrqMfZwYi4+ppA9UkpEIVpWxSBb1XJk6jB
	 zfH0ZvcZVuVxcKEPSiMMQnbs9+p8xMAO88unCxwuAnKsGlJzDiRtjca3Pw8ZV/l5V2
	 7I86jPeeO/LpZtDtwaFns1lEtWEuVbwCyn6Fyk1vuLXWasFoq2pzUIVQ9OHEj58GlU
	 46P3ytCkz0dorurstC0tALAiN8hRxIv+kafJKO3ROHM6JuPgTSpT5i8Y0j4WFGNbtq
	 EOSzcmMIL6CRrl4f/WuEh+9zo3onYKgcgFLoezZz7x0nkhwiFmu5bzknrzg7DLRro1
	 dFzQDdeI7Bm+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8101C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154915365.1207.16429598875808962990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89d1325a91a939d3f11baf2d45b4a500865304c76e3e135086d9dd16be23819
Date: Sun, 21 Jul 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721549153
