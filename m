Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B23137CD45
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784314714; cv=none; b=FuorwIyz5IoNQ7qkNQg9MVL9D1qBKogQwMCxJXGgyVg1BAYEpljIXFr/SDbYAUeLPXgPlHxAUa7hwQADzdhNouLLaEsvVS2h6AskXUVWSMMmTKKTGBZAtCOsF3qeT2vDCT40Q4yfYK57fTdZk1/bvfRXW7IjRTqvOrP1fqQjWlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784314714; c=relaxed/simple;
	bh=JNdqDECXs3mgLX4dtI5BLcSsDywom7pu5e0Pns7gdnk=;
	h=To:Subject:From:Message-Id:Date; b=cyacWGTkNX9LxbMilVtxHiQEemzzJsUv7nJjd5YuXOBhEA0aigQOKLHc0N564de1Ttb2Y87vVQ9JsvdqJsfCtiCSL4VghaH1509Bfl6V362LONtFkK1mBBLPwNQwkXDRwQW6P1lS+6aPCrrsUs6P8H4YXRVH2/hmZ3C3h0+A4cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6JQYROt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6JQYROt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64A9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784314713;
	bh=JNdqDECXs3mgLX4dtI5BLcSsDywom7pu5e0Pns7gdnk=;
	h=To:Subject:From:Date:From;
	b=Y6JQYROtbbnTi64DwRcQhBhmt61VGrkFPiTgf+NbODOrEMeBlEtF2/tj21ie/8OJK
	 YYlngSzCseZ+CcZtRIJZS2txlLgJ1gGN5Aj1b5ucE2xgFmmUSnqXkGXY3volKpOu4d
	 XiloZ6amvmr9lhOMCCMtFqODZAM87rW8W4BNq1g/T3uwf6UCLeU3gr9de/mIVhuLre
	 RwA7gEjzSJbGDHeWJaoLhDw/W7ek6AoCjEz/zX68jSgd6BBJ4G/q3rYu4WesaGIv0L
	 OEe9okzPXZ2zf4vt5aBhv9peyh6ydOmPUJDhs5xlz8lm81OIVt3Kp8I1kAAHrJdzOL
	 dwFzFwwqDRhqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3367C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431471369.22981.6110753375653234458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2885632e8dc429764cb882fa7e75bf9a5fd780ae09c5ee26dac3766e7f3828
Date: Fri, 17 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784314713
