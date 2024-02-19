Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2E039855
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708355896; cv=none; b=Dv++16eh5GEPMdCyVy7839xMgsftCJGKb1csxx2MX5y89K8qirOT5M2S61m9qh2+9UUIrv/hrDb79vAusCi8ipNVY8MMWGOGl+o2VqvxuogpBereWcXUeOQwuUyPFTguLGb/wRprABdvF0VlMgU92RwLDPaeTTTBE9S5275qb5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708355896; c=relaxed/simple;
	bh=Lx7K9RsTWuWQLpW168NqcMudspLl6i7pQNY/S0NusqQ=;
	h=To:Subject:From:Message-Id:Date; b=pBNg+7lF2YTpUX4AcQX82oZ2dBbEQEwLWqi4LkMc/tpW5SxdEYSo02IfVpF/EU2pwNkJnXi7CXEwNyP9irDdcNRkcIIZfxP9XhWaxiHM/gl2z+oDXfIm6wGIgcVkGFUV4FcwBSwqJN5+fBF/JJ7X95cMgEwoJOBXcrcNPKUFjDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCeQA9gQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCeQA9gQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD16C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708355896;
	bh=Lx7K9RsTWuWQLpW168NqcMudspLl6i7pQNY/S0NusqQ=;
	h=To:Subject:From:Date:From;
	b=KCeQA9gQXkrTdKMmXtnwU8VfWWhlJrrKXbSed4QIB57iaatgYf7ENvF9fk148/khQ
	 kE3nYuvvnbmXL+vHjU5N9ZxPjowmob8686zazTQoRe+Mxbtsttqd+Ev6ikJd/VY4iS
	 bCF6HHG7kN6UPSNndRnU5+Tjm9oCdBaYq4XngMyRs0XjqCPAHMpfViPUF4aZFQumG9
	 o3DwU8ZZ5OKyM09enS8SZc5WZaCNnNd1UqQr5ApHfr1/MM0ezvKJVOGJJVoRVEVOEI
	 coIaC1Vs+fx5I6q8yjGBO2++r+RYt6XQ3pS2wLbIns6T0U+N6mApcsuuy5P6iSQPg7
	 b/Au9bAj3Kf3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62003C48BF8
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170835589639.31235.8809139280235275167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b796b560433eef2fbe7b3d60c02f889e448b313d229d340b263c8314cab4688
Date: Mon, 19 Feb 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708355896
