Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2827C35972
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782017194; cv=none; b=iHc8jKdvgIiTVEYhj7v6SzyZ9VSxay8npIGNoqFeRHS1UtADmNFroofCwshl/Bec2DtxfmHBaA5v6pJMAkspFv/R5E0MFWUBEF/PfTsPKm559bQGd3Zykw6/dezwNFdnxJE+htWIlNE/4ZgVlr8fYKb10R11ud7ZGN5HGwSZGsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782017194; c=relaxed/simple;
	bh=bP+AhMB3ihacemZO4HRkhGtIz6dFpgM/5fws0RKprd0=;
	h=To:Subject:From:Message-Id:Date; b=IYYl1ZNMl1y2QI22JZJwLCFotHMnYBUfir8RBqPKdkWy/DOSoGSl/Yf2ehvHX5STDOzqepEFktqm1JUSzxPBkOSZ3qKuSSYCkzSghPFqHkNCDGmoLt02g9p2OMzAF7xgwsS7gq8Rr59iizgu1rNAlDFTD1evgEJ/R1/8lfadC18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bS6hGISk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bS6hGISk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4160C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782017193;
	bh=bP+AhMB3ihacemZO4HRkhGtIz6dFpgM/5fws0RKprd0=;
	h=To:Subject:From:Date:From;
	b=bS6hGISk7yowTZp549Urq0WkWz5vrJ6JoXPDFTbmLNZ6pAELvIQ6ry4XNbQ/Dt/GP
	 C9ZYyTbzuen4mQlLYoH760yVXYGw+GO8tkDczs3p6cfO3b1yTJJJeqeSiAB46ZVuq9
	 cYJkBlD9XJvOrloYMzgUtZwkJBsQt8Q/mq7208e77diDkeSIml4o6znWquJB/TOJNQ
	 7baoOC31hoZpAv3/UGfRcIz69NDFNb25ViISUyatRjvSU5ycUZFxuKQ3GwpT9rv+GM
	 HKjwl0GjaHJ6p47aOpO3oPtAJ7w9LdkV/rn21ujxETWvtHNtiqIVjAUS0t1xGey5a0
	 e1JYoqiW/IXyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3EDCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201719368.28208.2616886384839128420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250978cdcaa25bd7763d8f454af51495643b2df5ea60cbca51dc49986109b69e
Date: Sun, 21 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782017193
