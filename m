Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242DC34AB19
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771830294; cv=none; b=Ho8NmNS1t87i6KVwn4AJo/+D6e4RqANpPXx5ThEW+LKOhU7Jv83RRedvte14LCmuheFRv641+dpSYOESVdmLlBfphR6FZYngpRtpjIOMH9+zGDprhwNKknYvCEh+WBjld8vWT9ywBuv1OJ9U90xu9Xf7A2i6cAsA07GQMTi83Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771830294; c=relaxed/simple;
	bh=eut1vul79K6HOyvyjEHNYSYM+YhJmP/KDGFq/2Y9x+Q=;
	h=To:Subject:From:Message-Id:Date; b=LldKahhrDXMzKJUvE50i/0d0irrkPeZ8JqAZ/BKxmCdHA8MwDnPLsmQEsRplmAXiAwicHO7fJId1BXSiUEg0IplAAabQ4QygFbCSsZ4ikfWpG4ToTCrEp0PZ1KAgOfHSsnjKIomZ5R3nsikihpOoA7Joqax/HWCCpTEYklpwz6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roB+JR4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roB+JR4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A8BC19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771830293;
	bh=eut1vul79K6HOyvyjEHNYSYM+YhJmP/KDGFq/2Y9x+Q=;
	h=To:Subject:From:Date:From;
	b=roB+JR4XmZECjTdltKWmocpW6O/43EoFuq6cLjPKJPn5NYf7PUeaRI82qqHkl5rk3
	 GfdtGEtHN5xReewLYuaAS4jC1tnyCxoxaT3am4UT057WG4lc5zxhJZOh2mHPeaLGah
	 BGpQ/yE7H/6JxEjxQhNcAKjt2SIEpPm4m+FUUvlq8kK6hUIUvcfkEntcyUi3lew5n9
	 Cz8T5Y4DwQIs8SnS/VSg21rBXfA6QdwYGNkTKp/idgnq7O2k+ZWm7nhdBm5jr1j9zE
	 MfJJlghr8EY9uUdt7mRLkYAGFYGa0zwinc55fJIO4+YBOE+uMyXKH/VFl2DerQghz5
	 6+QMb0uoiZ8rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB2E98DF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183029360.13510.17977279237488674361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe6d6a0365eebd5ed98f5e2bb907c2adddf5eae26a16ad1c3d1adde99d1397b
Date: Mon, 23 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771830293
