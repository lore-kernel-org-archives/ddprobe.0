Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32881757EA
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750601394; cv=none; b=krm317ERP2fL2/NWyijfOQBe1EJt2+0q0ZSS8wXwzjI2APcPTQMR0N2doy7npmpiCwdkeXqRMszJ6sXLjzHVZkVBG65/VlmtO8mmPGXs3PybhgsKloOOKtdGmGUo59VjPe+1shwc4dqEiR1xtNmpK68pSaxj7nJcVjpAUdmY2KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750601394; c=relaxed/simple;
	bh=aKEC7C/1Sg817YsUTZNtIqOsV8eSf4PgEUEpyEd4/+8=;
	h=To:Subject:From:Message-Id:Date; b=Mf+aXAAtejShkh392+XcsH3vKh8uZ5P/qKxwDoHs70tm8ciFb0j2jpGab9EjGvhX6JfU000MqxsoLvdt+WLFka+Ed0kaPvH4DCen3Ank7nzs/E+HJTkE/6hpWQeL/HKAUSq9GX/shoOWLk1LtTLHcGByMyq1N6OKRh5FKJuIjzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bK/SlFiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bK/SlFiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750601393;
	bh=aKEC7C/1Sg817YsUTZNtIqOsV8eSf4PgEUEpyEd4/+8=;
	h=To:Subject:From:Date:From;
	b=bK/SlFiR9dYcnn51WAEt+m2comWeCnaJECIsOZwXfnDF8maIKaEeRtelHuX/KEMfD
	 2jvPIEhHObjvy/F4+cm9QmJp6PoQ/vMQ8rzRwejVrZXFXMFp5aKtmsTglt5rEH+XUM
	 o/uL4z1lwh92KphzodwtHohVCjnTv6SGUR90rCIH8JY6iudm+Y3O6uiCHWvaYDe2rc
	 fNwdfL13rTsPoN/NZOXVKizDeQLQI7uq3wEqFTdscczzK9mbAMSil/WezevvdAi/R8
	 3lbTFCsxW4hA8b9T42zoKra6EdX9wmxmD6lwwlo+cQCr0Bn2GWeMMPTz95Xto1av+y
	 IcyMmaN3bEFmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D9DC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060139359.32446.7751165801518572293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd0045326bc511989d6165330d064377439e7bf1f94fc355d2e998ae4dcae6c
Date: Sun, 22 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750601393
