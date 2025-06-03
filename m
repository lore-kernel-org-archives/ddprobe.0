Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE78173
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748924394; cv=none; b=ZhSDKc5uW4erIo2pwOF33FgpQ8VvRwhOHseStf5ILyJmVdtue3lofuYMIbD6S52sHYL/k2DgiTade/bp9MpyToqfWcbYMlP0wTGXvJY7OsiTA9jOzxagItrRNgFP73ppH3JUKZgusd0Z7SZ2NPcx3gmKAOwtjyPaty2cX/5jn20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748924394; c=relaxed/simple;
	bh=lOSJy3ci+o0TT+oLwMemWLHBF4Vo2wrSA2ya3IgmnK8=;
	h=To:Subject:From:Message-Id:Date; b=nlocNkOZ9P0kTBAUz43A/K0Bcww/3Wj39VvxNt373PQS0IKN/6jy7bzavmv7qzrDpDL6pDsDSaNgXX1DnaeVZ+9SRjG+OSvhsuC1qpBUHAxMGvRPS5dO8andBX855ou2daNTkHuxJrskIT5Y4DzGqdW491wM2jHWiGelLd2B03M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFOOTuRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFOOTuRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E77C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748924393;
	bh=lOSJy3ci+o0TT+oLwMemWLHBF4Vo2wrSA2ya3IgmnK8=;
	h=To:Subject:From:Date:From;
	b=aFOOTuRO4o7zPrqgBX1miHW0oOwi2cJwbG0FXOpzFJF09QY0KBYNW4MPC/efTteVf
	 6weHUTd/rmU02NojuNy5/HG6H+Zre55Y7pjGgs3xjvIEVDmytCpJ9e01gNAqumkKAN
	 vPnxEYldk9SPF4Gk9AxhQr5vV+WLvVzx5IgnlV9QMOQIf5bAQ2PB2xJhhH1X88747i
	 P8JOfSBdN/YI2WAf7n/tvfih9qeLRFzqx3fJCFcrAae9rpv4mwzwKOaosEQvcIeDG4
	 MkwbqPntRasc5uOFdINY2Tv5rA1bq/S1Ti9vnbJDrkxGWM2XGlDS4a2fy1ACxyWMUL
	 vZlpLvT4BfDOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F85EC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892439361.22557.1006342109205819054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9854528e095784922ca7a485c5f0a6dc95f17c4cb89e09da7a4c9ad8e573e778
Date: Tue, 03 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748924393
