Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5499144C89
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715541143; cv=none; b=cQRbcTF5eL7GJkHTSTz8Pf3WzAEA29aQWPlMYAdvjMcqcpH75ZoBajy10bxBrbylSk4jUJ3ahIZjjGYEkEmAu17GiMU+FbIMi+gjUeTGnIQZFeEQzNKaeIJscdxkWDSgI2o+QQ+Ot1LfwQo8lLZYy3kDRVReSUMdj6H/erDyZgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715541143; c=relaxed/simple;
	bh=0VPNwF+XrM4xBhPQdwY2vd7eFMF0aYql4jMK6ONP7Tk=;
	h=To:Subject:From:Message-Id:Date; b=plc01nhZxgouhBBUjCTI6Akb187IY/ntlAJ52InJYxZkqWpIGsAUlMWyIfrj8Srqof+hfqm+xTPu9pIORowf1IF8hcfw/NJWVG0Am7D1eXU9u5tsK/zAisYMTAY/kXseELT5GJ0dULMDCwiVj1OQknrmqzx0tJoYTnaL6y8zLEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgDf676V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgDf676V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3179C32781
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715541142;
	bh=0VPNwF+XrM4xBhPQdwY2vd7eFMF0aYql4jMK6ONP7Tk=;
	h=To:Subject:From:Date:From;
	b=OgDf676VLFI8dejTLvtsYbaQRbLKYBk98dg2MjP2bTgZszMCAbUgotoA/5yrFsgW6
	 FKPl9RR0uoRPmm3ORStxvQvjZMj+DhfsdjQOFty3BS6y/WGpTPNZq8rPgXjcNXku6/
	 GQEByiccp4/QhC0iidM/nnwAeh5rCSY1ooOcMHoTH4NELy0ifClTfNVXfmyl5eoGE8
	 uya0pTS/9FQdQHM6wbuiLGLdcDbN710/NCnNuqWjBTQSEXJIpZ5K675B0xO8szDpPz
	 TMgaj5W32HrcACR9VExIAaFNG2fxMqVNbAk9HFEZFiZjMTLa6q/bDrP9C4ts9FOIP/
	 dKqtT6y8//Srg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2238C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554114276.26463.7561731376509738640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadd16b7668a67ef27df58ebaba1503d728a85a7c7995e9143e76efca608ff5f
Date: Sun, 12 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715541142
