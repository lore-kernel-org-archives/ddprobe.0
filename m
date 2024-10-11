Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41007207A0C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728635754; cv=none; b=CQYyQQiv43MKedylIVaDyucjr0sAvjJwpFMHD/jd4qYSA3NSGi0wQ29X+XbAldMMfimIwr2+1H0IyB1D2pPtiV7nQqcRR17mcW9BCKRMccnD8iMJtOXiTuFH9s/wl2GRZi2tIDOC6obPMgGmvWCr0JDIQKrQJxxOfGPKNYu3XeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728635754; c=relaxed/simple;
	bh=iuYIZGAs0L6MpMhQEk9XrHbBq1lw3WxsO+hfjNcvyXQ=;
	h=To:Subject:From:Message-Id:Date; b=QFdii7/kdsnDUrrShasnvdw8Cbed07TQu1OrylKJkTwIGhpL0J07l7YQSPWRwyehy4KOEST/E8oPYVDl/d9jjx8RLfPJkLXgDxWDgm6Hq62GYhfAbcyW9uvbwDMHBwvRgII9SHJ6lpGbFDI6+yKfrDPoiIu7bK+bDtBiivtCFSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kflkGlKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kflkGlKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD826C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728635753;
	bh=iuYIZGAs0L6MpMhQEk9XrHbBq1lw3WxsO+hfjNcvyXQ=;
	h=To:Subject:From:Date:From;
	b=kflkGlKirgCn0CKAyef15HFfiMq3yNgBKm6vE4rdSKC+H4dbvvfSqPtl94fKzUJ8Y
	 EB7oXpJ1x/tXq9Z5t+xeEzCVMHmS+/NfVqnvOTIKxXrRtlX3dWPWj2yZQLcwGs8wZR
	 zOiI8vcdN6OoOPseEVcHFr6jSPVMSR2Jmd6eImkrO3lAyi4h2szFcuGMGZjiiu6ho2
	 v0o6YKlmFOf3UTqf3B1HOwHSwfYr/G9jIzkxkV71n3+ZzMdEcPbcW728o1H4wF4TeH
	 OM2koaZZGPMOLRAEBcyK0DpYdcs+MeOFsqibn5Y1+55lRapdYfGpg5dp4IoMo+fxxZ
	 1XLYbqbavy1uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968EACFD2EB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863575360.20694.15176562497177280019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d7850a9e9738baf6ee14e231ee94a93e7dfb892955589c28ad1ed6acfaff05
Date: Fri, 11 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728635753
