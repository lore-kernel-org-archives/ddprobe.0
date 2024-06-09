Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B11663C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717952243; cv=none; b=N//rBaTCr8kcGA8XjfGujWV7ZidbNoHEPbxSLFTNk6GCP5lmDg31NOsnwmYQEWeTvG6v5TKjlsUx+05mRRUJQX8P+POrUEdajAXC2EH45fw+ST53uCq5wiQB8NDdgZqVm2oT1uB4g60/geEvxFLU1KNPA5IKvAosUVq7T6NR0dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717952243; c=relaxed/simple;
	bh=aGmRGnaeQ8Q3vBx8C+V3uVxF0VlVnnmoJ74OA0iprJM=;
	h=To:Subject:From:Message-Id:Date; b=Cjfw2IUq6UjjM56C/99zus59uU5qvFaDuld94G5lpiekt4PY3zYTBGuWq0CKUlfQdwGba2gQiMWP2aELWkV9icCylZiZv+5teXZokC2oINMN5f2amIaRuP729cfo0Fiqe1jjRcAcHsRYhajrE3F6ZkWlEdQDdvcqr1QWFu2wTc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEHMe24n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEHMe24n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DE0C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717952242;
	bh=aGmRGnaeQ8Q3vBx8C+V3uVxF0VlVnnmoJ74OA0iprJM=;
	h=To:Subject:From:Date:From;
	b=AEHMe24ns9bllzNQpe3BGi/Dku42NA4dyYziwm4Q9YSQy8klCaS7DqJiKdZ3+UY2V
	 sVWrOmCOYamBv4zS0s4JasAlzWDMfpGz1AwC52tLeH1KehUWYT3z2oZi6ulNz175/x
	 jUbHvSARvydyBk5zHGW8DljeN6JXUsUjOVJ3jJVU83RNeKI9lDrDWb0dSjKYMQtxD8
	 +VCsp04fZ8WSNwUTkHyRPj9VR+o4yeF9+E6V/tS6BTtEaPPdsqb3VsiOYin3Rt80q8
	 ZLkMvBV2f3JKFiaHFdReiNvbDNaf2y7Wr52tZphh+sF3oR9G/TRXSFFQusRRDQk4dr
	 OAHyehioFhjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FE8C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795224275.16812.5908388570128313900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9aff05a63ecc7ffb0265f01cdd8a5f6ddfe762c654cdbe3bdb1b9bda2ca8d7b
Date: Sun, 09 Jun 2024 16:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717952242
