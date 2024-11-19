Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29E01BFDEC
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732007754; cv=none; b=qybYNpoicfjXjYevqfcxOs17V7n+9vymKNMxqHmtznoqcTG1WSiV5cPvLGDfLsB5BQLT08+eJspb4AISmtU4rCenUW4uyrIvD1DqhpIXpPFtAOYy1oqV0cyuAaDnBFcO5/YwP+CLcbvCHpZbkrDIO7CarEEcJn3UikFHSufUQBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732007754; c=relaxed/simple;
	bh=772L8faXHhMeaZCLN+9D5L3XckLZCZnxzyFkKBdZrrw=;
	h=To:Subject:From:Message-Id:Date; b=Pbag18X3R6/WhmYFn3Lk1fkWalNvZlh7oqIcLEVcPHrULy87XAfRljHGaRu53FHwE9/omcR2E+3kSjYiKYyalkMWUpH36kYG/kN251xs5ud6+0ncIwhToN9CprHARd+GKLlFsBIETgGEZVmEwyZx161FbyuUZMgXPRtCSt7kSSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6o3kWlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6o3kWlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26F3C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732007753;
	bh=772L8faXHhMeaZCLN+9D5L3XckLZCZnxzyFkKBdZrrw=;
	h=To:Subject:From:Date:From;
	b=k6o3kWlKIt+E3dyVQyooPY4yMbi6uEb+89ciF8DvNDofKNEzgj2AWHTq8tW/ryLeR
	 R9TWvjThog1v4RO5B9NUFWzG5dKL16m3U2dZtoxF+HK0qNfhVyy7XIlY2pR9W50IeP
	 veUcdhAUbSLGGNNF0XWKO+uF9JU3vKM12z9INIllQ4Exf8Kdh8RECmJjYYpBlMrjOm
	 /AE7AFmharlLa6H8lA3ymxGZyGbNd1lhImRCVoyZts91GQ4UDArMZR4n9SA5/BZ52q
	 g/JZ6R54dZlxHOrgBVCISArZtw4N2DlxBBS5jr4nBKBllQie1Xp3w6zUqod7epVzF5
	 3GELvvphuOJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92202D6204A
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173200775358.17824.5798491346651157739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da21e02ca61508d7c1d7d0def38e06822e1eb62226cf0a0d67f54608818be176
Date: Tue, 19 Nov 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732007753
