Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6913C4A01
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719707063; cv=none; b=CoiijjZNQ1kb+YrjcCyzTQk29Q4BIxL4orY0g95H2aKBorcJxu8Ev0co6XBNLr0XwXmh/A/vYgr6fpHsdpr93afwyesQAg5ba4SbfEr2jwTslXoaaBdJe5Oa/r7kdtcXXv604V4ZvmAUWmZxCt9LAVM8OtNBaCc46wxrAYvbq4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719707063; c=relaxed/simple;
	bh=xHlKePFEX91Wq+z/dUT0vlu7kdPigYw+9w6FyKSp2MM=;
	h=To:Subject:From:Message-Id:Date; b=Ya4k11SEjYSGvlb60aOuiiLuUSzIlrXJlGVDAkYJyimHkGqOURTUdSOK3ZUwgba4lhT6wJDyOB/80LA5iZuhmUQYbuuYRENgjO0JDfj3Dz/wKY6Yx9KgF0ImQqj56m+cJFtzqY+7DIgVqMF0pYOlLaVU14vrpckFm4s8n0CSMMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XW1oJVgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XW1oJVgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7858C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719707062;
	bh=xHlKePFEX91Wq+z/dUT0vlu7kdPigYw+9w6FyKSp2MM=;
	h=To:Subject:From:Date:From;
	b=XW1oJVgwRrRyJlds3SBNW3eGVX+2g2tnIZ/FySEx58HngYHCJmMK0dC/Vm7EgPo1J
	 1xvmQB5I+jMObHYHcpHKvhbZII9kyVG1A8m0NbtrArQ8lYMAxW91q+ksPy75WrA5AA
	 ZO8MghMspi1FeMTeRgA3x3PyvmOXevOei9AMNR6CFpVNdqtAb/+Dp04/KmA1uTH8OY
	 Ou9ajlD6xj/9n5wRwXbCyVr2gIXiAa2VQoQ/QidUEk6BNvxv7yDtf2S5bFBOPG8Ua+
	 Bvh0qXy68/K12NlJMfu8+f+7Zl+7r2izKMfcr2K8CjwJDw2HoM4WmsbVbACuh+2Yqe
	 DhWGSNduONdyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F50C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970706275.4577.13731988368295367474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60b1910fb8c87ac85e970018071701b408bf0f64c6a47585734bdc8a96b0c0f
Date: Sun, 30 Jun 2024 00:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719707062
