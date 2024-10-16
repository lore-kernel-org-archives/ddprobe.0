Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2114627442
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729037154; cv=none; b=aLeRRe1QpzIjVx+v1emppxHM1/GHTIlR27KtSVWMUnxqlBJuM81ETyscAnWnU4HSGhCrsQMLcP4H72Qt9LcV+Y9lDarB385KNph1VcY2d5d4q+9M5Y4h4kWJGL8UROZcf+pYZkEWEmnm/i7az+Z2wBvIRB2QFWampaZNZn6W5nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729037154; c=relaxed/simple;
	bh=TluwfwvtAhVgvh8hTYPwF/xRBO1iAWZeLfhyb7o6t08=;
	h=To:Subject:From:Message-Id:Date; b=IoTuykZJepRXD0uX8Rz8hoZrA1cNYpi8ulwDJbQphxIzH55nr5s6/ATBPNB4+a6yVi9nKwLyB2eRWap1VKC/itXLzUmfUNsApuZmoreD1xAZjBpgkARpVYDcLO/hEyahAHXz7Quy8pHudYPY7bwliiJN4WWXvw+n93wmflwyEmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1XZkgEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1XZkgEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAD8C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729037153;
	bh=TluwfwvtAhVgvh8hTYPwF/xRBO1iAWZeLfhyb7o6t08=;
	h=To:Subject:From:Date:From;
	b=K1XZkgEaU4QdZqlBasBaGC8gsAZyJVEAQDZ0eIf2arE4aCt+hCtccBv4OaDuPfF40
	 tIRBEvh6dvlDbN5e/rX4tVOzLPeeCF/U9ptdkdVvjs2gglAzunD2Yct3ugzvSQ1TYu
	 ux1EKi+PIwJbCJg4ngU1voBZO5HGkNCdZOOyo7YtiDzMtIu60F4sfBJ3FFG6we1YFd
	 t38advMPXZyZ8hrYgzW/I1tyKHJIF8DvF0SSxJSpQIZEbclgoAJbip7HP0dnqJiSFb
	 zQHlNoXpV2hvdJv9jdcxhztigF0UVZFfyYsWLRsiU0v5QCee5ptjNcruxNWrAUQ8mg
	 j5H8B7J+Qc0Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BDFD20682
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172903715361.1982.13705245989589398051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae252eed7a2e6fe7539fab1d6d77be123b1472f054e54d6f47c01949e528ef1
Date: Wed, 16 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729037153
