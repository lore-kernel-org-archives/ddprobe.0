Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F964A5EB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789743634; cv=none; b=DamOt+PLi5e5k6QrGOabM5+j24WsawvPPROuYu8j8kNDj9PSGkOO/EgvLveTWs6BAPELp7FSOobXfhdKlfkvbG3JlHSlMbsXchj1smlOaci5aMSfIutwFaHoT4EUH3xeDb1Fy6Wxsvou1w4ZcTUnxDLFvDTQXMFA8a+Z2b8Gnr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789743634; c=relaxed/simple;
	bh=BfqThZO6ezn524+dGlrKwePmHOpn8j0r43K+XGrJ014=;
	h=To:Subject:From:Message-Id:Date; b=arxihGjsWaP5e7IpG5VvzRI8syBQMB8Cse5+8MIis5J3Rk8ZWMH6oSSDfCjThnS6kDyX11T8IjKFs2BgXg2MqzJVdzGVDOUCniO/k9yzGqPyVKtN1PZ2O0+Rtzm9N/K38yW1gCkNqID90CAOhow+zKxYgUAMC40ZZt7THZkurvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3uf/EZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3uf/EZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D672CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789743633;
	bh=BfqThZO6ezn524+dGlrKwePmHOpn8j0r43K+XGrJ014=;
	h=To:Subject:From:Date:From;
	b=p3uf/EZSKDVkoxOUoYuP/LoFQH12gZlL6Q4S4g7dlcfkz7FmI/JUQnd2HmgaLOL2y
	 3pV5HE69pSYzydfVqkgi4qe/a9cvoXMOzcg3Xu6oCYR1Clhry81BEHufeDyROIs/Ga
	 C3ph73J+Y1nLZh9TDXkHRlfzt7MS4g6r9Vi8hYVjhtqsUKiFRRveZiQab3u+NVbluL
	 VjL8U99PHZBT5m+BIT+DBJw5zlzjXIvbEhs3wC/7dPWncoDK/nA87DV7LwDTaxzinJ
	 B2yyARlYkX3cTvtjUUNgNq72XhF0NV1c301MPJ8IbXJ0oFrxRfvaoKRlzldL9g/fEr
	 bAtZyxUL2H4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1223C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974363369.29312.14040426847215880480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c77f253cc0342808da08909b2fdea62f1b2f75ab5cd36fe042b6d797dc3451b
Date: Fri, 18 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789743633
