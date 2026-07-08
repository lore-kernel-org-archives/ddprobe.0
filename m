Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4544B233948
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783548514; cv=none; b=pcdl53v4bDa74Viz5U2sL1CCUX0OH7dVGy32ilyGYVm48j1WmqOg7NAhV2nbQGtHMQLrC/jC4q2Z1a3hDgyoESVVHGLYINTFDc4klCZ/sPGo81udKQ1x88zQzSbxQPctUdSH/p6PWlCCziJERWvoY3oaUxCAfWnRQa19TpG2D+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783548514; c=relaxed/simple;
	bh=fRmT6sPi8TChS1wnmbuNeVwgJZsiFnl0EZp4hvcJtVM=;
	h=To:Subject:From:Message-Id:Date; b=tsFIXwE3K5HUKDBbiegZteds95FJf9ddYXid7y7I9wwcob5ilmK9sldkPMOPAzlecMC3a2OUDz4zGUaFQ0Z4uarL4Y9zg23nt2piF/sVbuJO8uWdlAkzZQ2nlIO5O6KILR6k79Ay6bYO/91cy3QoWJBKs0krVh4hg/nu2C86i/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvFRH2Sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvFRH2Sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADA0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783548513;
	bh=fRmT6sPi8TChS1wnmbuNeVwgJZsiFnl0EZp4hvcJtVM=;
	h=To:Subject:From:Date:From;
	b=RvFRH2SwuPBkL6tVZl7lV0wx4D0CtkA8cC4ma7t0GniuUtkixDM6xbvazY/UMgIbK
	 xuGl8i5CZ6GDqrgj1g5tqDCIpGdQSMPur2TJNCd5I+HmAudu2mwEAvPk2yVX0Spb7j
	 068BiGffqzUDbVtRlPg4XFPsGSj1KOFyCI4IUDm8AmzjVP25ythvsR9JhTDDA+Lu84
	 8es+BYDOWNDMKQENg9FTUrQkXY9PtgESdjB+CcO4+DmhMnWyHfls23u3SFPKkSfdZR
	 E4W9uyhGeTkeKxhpj10xC6e1cHsOGQUYgQHHhJP9Lkf33jJRo2Qg5caiYhg+ygeeAS
	 OYBaWw4aSgD8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91C1C44501
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354851368.26300.2810024220458154507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddde54b21cd7ae077024a1cbc4ece53493242c1beb68a278d6656d8f42b00d22
Date: Wed, 08 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783548513
