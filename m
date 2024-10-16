Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2120118C33F
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729078554; cv=none; b=TtGWxEN5qaRkzwCga9Cyrx4bdybU03D3P4g6xS/OcJ+eGXSKUFCPlpAmAmbtXB7QVQx4Bk7CR1sZsdLFckMLm/9K5Pxkl10YZ9b/ClZrjkwJVvVjxWDuRLdDhpFCrVKfN93wnKRRE9+3M4JT7/gGSOs07dH6O6RDynvinU/G6I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729078554; c=relaxed/simple;
	bh=k4hZapN3yfgyzsF06mqiPisLMUxKOu7mDGxnsqbnkE0=;
	h=To:Subject:From:Message-Id:Date; b=rOcPaA2eG5l3SM4MoukGiqQ1KZAIYewgKuIycreLFlbp2epVpnrG0w2T8XjmvfeHtFeIKTG12qsZGu8C9vR0vwCHHhw6bA1z0H28ZekdH+sHRCcbT906C3rNlXmSycHdjSQLdHRuMpkuah8Zy/iMOaeWci14tcD1bLhlv/6qYTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJKeIx4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJKeIx4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B5EC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729078553;
	bh=k4hZapN3yfgyzsF06mqiPisLMUxKOu7mDGxnsqbnkE0=;
	h=To:Subject:From:Date:From;
	b=SJKeIx4TDL3XW/KjFUuV/S9WAhhwsaHwxEEx6p9g3uTcRsM5HerHdj/NJhXEey1WE
	 iGa3EEILedjn1KByXNOrfGIXH+9mzR27anEU32jordhMTcwX0T0ZRCYLRY3l9fZSdb
	 asw0YdM3Z7Abz8U32Mj8dY8ZsVvMnO1g3QH3zGRm8Vw0r14dP3Nx1r4dwqLtmpi54h
	 bx0KSIiYdVUQfoiHAK+PIvoYNUKMypsUIMLavsBQp2WAtzu1FE5lN5qoWTjhCCNEaS
	 hm4yrapl13OiSN2pMbx4AeJKfWnu6RP5O+pHa3eevBGsZCjugTWzzgR2OrZ9vEFN8X
	 ttxVOMvcckkhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6ED1AD43
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172907855358.5686.856100766941214118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77861b1f173a32e55566a182201c93cc2cb1c6c25bd8a9bb78183ba33f0f690
Date: Wed, 16 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729078553
