Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348943C2F
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771005894; cv=none; b=a6Jk5dgLwxCnu8vYDq9ow0fRkhWzwY52dqNTOzS9afwywXq36BA3JhywhBwgeRDbn5RI+z5xY2Mus35idppxGKrdxIGDeYBwwel8KDY5gXAN6JiE4XzkoDOQh/p0Orzp8xpCGQdb9BqQD4f9Mdq3eppi3kFOjgNobuuYchiKVNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771005894; c=relaxed/simple;
	bh=YNVp0xNpZ2hJvEoIviCvyO4SVkoh50Dr8+gnXew9Yfo=;
	h=To:Subject:From:Message-Id:Date; b=q6CnqEY2p9bNzwjuWFGbL07C3vwPEvKZkW5PP0PLN1V95tZ5GZDBRNm5fLVkyWeqd3xcrBIt7Ow/GEiRq5DoqRKhxtQZIJeY1M+oGGpM/yMRxien/eUDnQBO3jKvrGglwEk4cMa0kn/Kxr8+6QiyMHDMF3gF3DpgdHyzIcsMdSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mH932wpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mH932wpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69BFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771005893;
	bh=YNVp0xNpZ2hJvEoIviCvyO4SVkoh50Dr8+gnXew9Yfo=;
	h=To:Subject:From:Date:From;
	b=mH932wpfAVRJNQP9/i0k2L0TZTgL2CEVwjBAccFW/mp/Ftk4eRjdt3J8o9ZmAMgCQ
	 E2yFILkyydRPodA0+N3r1KRDOX/C7BO9yVE4Yxsofqai2E071M0q0I5k+lz4ajCq8b
	 r5k+xUixvPsQznOL5YTw5MTFd7OCN6ECiLMK4JlA7lGKrH5eua5qSMUzndwf0g+37V
	 lDGo2eORFIqFWUOIL7+Nv6pk3b7dGldMQyxkADRaiwfgFz20/acIXp/IrmwXFHrOHy
	 ikf12ppbt3bOB8KkY9xYUZjs12YHm80L3Ig0v/m1+efhkwMFBpHuMtX+dnxIErSQvP
	 Ku+UudRYG4aeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAE5EF99C4
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100589362.4335.14455228974908020831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7661ae77ab94566662b4e146d323928c530f825c927441719376674d72c01bfe
Date: Fri, 13 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771005893
