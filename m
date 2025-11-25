Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EC83770B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764077574; cv=none; b=gvsScLM/zfto6jKxzD0NwQspBRQVyYnaC1gA/BfX1T3rSEgm+kgtrIqAWDf3d73EoiQa7dP0i009ugYizWPPN632GVS7x0oIXbdSj090Ihrgr/iiMRr6WUeYKGRcbafgBjT0xco1T+9ZN0o5dOQ/T2pAV7xZwMRobcxl1G2F3Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764077574; c=relaxed/simple;
	bh=NetcQS10BZZSQQqofkrC9aFDRzEZ6fbRCDk2hRsLNvg=;
	h=To:Subject:From:Message-Id:Date; b=Ilpios8MvfNWFUm+OvhYs+CPhRwRrYCRYx0OtlvzQ1D1jMuUMZvdkvYpR89ESXCTvvl9D5gjOUQn0hdjm6kbD3DrelNwqcblJJRLl9W5Wf+3m8HcAAqflkeNtJm1Ock3TfDOof2LjdxbGrIZcgI5WUzPnESjduoedBmLh9oGchU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/GJ5aPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/GJ5aPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10C3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764077573;
	bh=NetcQS10BZZSQQqofkrC9aFDRzEZ6fbRCDk2hRsLNvg=;
	h=To:Subject:From:Date:From;
	b=i/GJ5aPqsoAMugoQrROKV5WGDGx1hVRyVwJD0MEtDlhlhazzheFzYMJGet2C+lXFB
	 /PMtE0ntMm6soVVEmRweXTlwhxTEeJntfT24JtUjW8BmD3tR9N/W55ZLEfnDJj1ING
	 Hrnf4RLWVT9Gd/2CyAjUGf/pKD2PEk2E1md+0KKaRVN3PisspwNniNnzfiz0/v2Oyv
	 sNeps4C29wnPS0I4M8Olfs6smzr5pGiKmsQ0n670Yg6DbIee/E+i/o/P5eyv4BbChb
	 tIGwpjalK7HFq9RHbp/P3HUqbn7vPOwzM4VEbOHdBGOitJPNGPjtxFJbVptN0WtnNG
	 2YRuRjhzhZAbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE03D0E6E3
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407757360.25562.10016566511926351920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af3aacc21c7e1c4544709748b84c601756f43f23ba35cc62881b593f3784096
Date: Tue, 25 Nov 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764077573
