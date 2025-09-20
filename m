Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C251E8324
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758346194; cv=none; b=hpdR31nWCldox1A//JNEvR60s8O910vwCCXpYsL0ohgbhjI/KxwaaanNROBCDj6fP1m9S4j9xGQn5VgYx8lEJbR7NsNFQEvEYzg5IW4yiZSlTBhSwpdEIiNDDBlQRdhuQrLYouUUXX8tnJ1UxB/fsTp0bgvHK811h/O8aNFL5d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758346194; c=relaxed/simple;
	bh=rgV1tx0pb5e5QAQAnop9yp5eo6yrLyTbV/iurNfMZK4=;
	h=To:Subject:From:Message-Id:Date; b=QPpjrPu+/3HAP0rBxrWj8RhngYrj7wgu55ThF6b8rEO5qJwAdg7Ya7w707gdOd/WU6CLK/QzwQEfquyzLLW4TOkaJXI48Vn/1ldi0mCohtg5qZk91+UgLFGfT7GTOSY1jU/vBEBi8LJr0mvt5Wpdz2MNarkdUCHS3M6o2x8LJPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyLuVmNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyLuVmNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6007C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758346193;
	bh=rgV1tx0pb5e5QAQAnop9yp5eo6yrLyTbV/iurNfMZK4=;
	h=To:Subject:From:Date:From;
	b=pyLuVmNj04PWwl1nRqNIb2z0e+d3Z7kAR/Jz6+tu2a/TP7EtznT52OwxxoWJ9BP3/
	 Y1YvRA9KKqTS4piP29zThL4Bqt5eyOOQkLZ14pmnqZNyUZhFtE4UsjccvAUMtBQUSG
	 e6o6p95ZaI23ebb+EDOn34g2oxkXcZj6hbmCvcrMdCFFya0Dls0dM+JDdq5HmP4R83
	 sPrjuWPnAjmiNHnMtj0mNiY/KK2m/piRpYp/Q04CZ37tLX0RUXaIBPt0+PZaF0r2aj
	 ENcMKooD/Ow5Npr4uv3bOcVDtsR2xUAOjI3XZXhmODStlKPYpiojcEa2zxRE1x4bio
	 PAMUK1DQb4JRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F8CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834619357.8203.4718792859052977211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bdb9b334ac88ee3d1c3ef058786cdd1ab25b93f8b220c75cc0f5d34b26d306
Date: Sat, 20 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758346193
