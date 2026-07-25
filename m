Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DFE4908CF
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784969434; cv=none; b=n7kMZSRR4K5JrjJqnL2Kab7l+fDPZirk/IOiLr3yS7c4kIQuHOLNV+8RK847oD9zzrUt2eN4DpWQUvPXl4C18mW5pCZd0cpqevgWYBtWpJ5tKEV0U5vlhGJib7+oA7S1BokV5tZm+4FaXGWnk0oJZ5WM2sBfiwNN10Klvlf1AR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784969434; c=relaxed/simple;
	bh=1N6I/lS2MLjb+euBf150MrnOlLHcVLNcuF7PZAAFVYw=;
	h=To:Subject:From:Message-Id:Date; b=jFz4En8VpQsQyUJaQS0imjr8GrSfKqRYv59qi8CRnbGhdrY3htPkVfjC13lU/V2mLuYO9DMC5ZJP2VILjpRP/yUa3gmGApdytCjCdwhktBbyP85M7ezosHVK9swH1oj9pp5ziGIYvApr9bcPnVZYpGT+6yOGWDKIeROzTs/rfJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDf2fy04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDf2fy04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB20DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784969433;
	bh=1N6I/lS2MLjb+euBf150MrnOlLHcVLNcuF7PZAAFVYw=;
	h=To:Subject:From:Date:From;
	b=tDf2fy04kSFFPGEcH7eEbkyXQpo918N+J3P/+7fjDxN2EHFmo1ljfZT/OhBKRr5wS
	 2dv2wiIopgI1IIgtt97VJtPeY/ayg8CoecE2f1EFihNrxM+iF+bN20LdtpiW/uvmcD
	 f3/OsuEcRZyOkLiMyuAnvNyzgv/7hHGdk1Bvk6s230YB/6v1DkQhF3SNomvHLaoKBz
	 0UeGZod5oz7rAEZLQAdcHAGeJDc8YEOAurZVlkUpE6/xLJJKpeuq95MhQpcQWYz8i5
	 tcPW+AiwqkFcPX5So8lHyKwyVRV5HVfMzr3rMVeFP8PEn+nCu2Er6SE3tML1Jw+0+/
	 lrFjV8MyUt3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E04C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496943368.11817.14844163017188834351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98f8a65e3daae01ac998e223e383ce6509481374c1c693543dae41d3c1180b6
Date: Sat, 25 Jul 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784969433
