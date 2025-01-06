Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F6413665B
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736186754; cv=none; b=AZttS0i8dYKt69E8zmjcGwnv4nZNsvFhdLXmQLv24Qw3ute+EpLDfh4BggeYxCIHB/KCcuRXNfIXy1EbG3hrWrKXbZC7CQ2wS7FTB+/I4rroTubO1OzIt8rsw8B9CW2g2Wqr4F9AoX8NiHOKzoqD/ixExb5i67K41oKmNlmIQCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736186754; c=relaxed/simple;
	bh=nc2gjaAKcIJQhYCnIbbgV8ylZpumD8CPXjVYsF/u0zU=;
	h=To:Subject:From:Message-Id:Date; b=EeKBiSuIFKmgxBidggRO4ZxXOJLwfxZE+0+lAQEF4gbBML4YPZUI4TNN7x/iT0SPD3bKND7J4I6xA7V6uW0bm2b/vbV7wgy+QGauDD7KMV11tss+T93SGI9LRhgvolVKJ0RUJh4GwQg4wy/+FTzu4UNfGXze4Bph0njXMVjXjTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1N2CHU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1N2CHU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A899DC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736186753;
	bh=nc2gjaAKcIJQhYCnIbbgV8ylZpumD8CPXjVYsF/u0zU=;
	h=To:Subject:From:Date:From;
	b=d1N2CHU5CHH+l/5gKAgxlj2MgppvGeaTkwh0FV2Lb4leBxO9JdM6qDA3i3oPoG3Wd
	 fo+NN42GW1lCGgiNE2U6b2seCyttxCOin60jEvoOzJzmiBa1wLbb0x2vANAbm2ZOLk
	 nSDccWaCjb16m//KPSpi07Ir82qSWj6ujC/Iny7XrhT9Vsk0Vs5SY66JaV5WlLpQHU
	 qDhLi9woLLtm5Ri+uDsNGeUcxdQOOfCMNv74GP8ph8bNHvmikqS0nmk/MqSj327x/U
	 OJacDnWNO4cpsmKkFTjqlc6rkE/G5Byc4JABsdd8/LiDvR8UyFQzDUxk7FRn6QYuj8
	 r86wV4qrwYqxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AD9E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618675357.21388.12848117277224179902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4636398c93c5c304fbea1e75b920654dbedc7eddd94d6c5c83a299cdaec2648
Date: Mon, 06 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736186753
