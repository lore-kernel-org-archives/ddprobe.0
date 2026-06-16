Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1B8377563
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781573194; cv=none; b=UH4hDMoLhmu0FFXC8JR7pLIeuEHDJJjdIBfU53Jj5t5c2p1C/htL9eSaqNHpNdrlU+XFtR9vYogwB/YvhZVS5WU5UVYKlDAkuPtt4NHNtgoank9U2oDPa12TBAomv4b5QzWiIin3QbyW5K93BZDQkqNWrHCIqJ0slnoKNjJIW4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781573194; c=relaxed/simple;
	bh=gd7hw+2wbNcoowA41qqAl5d18hGkULiXi64pmyYam1c=;
	h=To:Subject:From:Message-Id:Date; b=JqAnMTX7iuV+mfMD4m43CSJp5bJ7Or0NccOLf5SkwxR+Eg8yYhtzqYUVl7IYGDU907itVAdLaKBjK7OaMve77qoRcbrFFoQFZhD2vg/phsrHD/TTEKyM0/l7Ju6M0X/mbwKZSpM6v8g8y4WFYTfuoWLh5t1/3fjdj0/ewqjBnH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+qXlfQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+qXlfQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD13C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781573193;
	bh=gd7hw+2wbNcoowA41qqAl5d18hGkULiXi64pmyYam1c=;
	h=To:Subject:From:Date:From;
	b=T+qXlfQ6iSUnrOIvXqFxPUT0VmMHhlwiTrTEW6RPoiEPA4hvRR6/ThWbOzKtYgXjY
	 PjcFvUlWHeEelbmb/5SoN5t0XLicYOAfco3g3J2yFvUPd8rcwVBM/SCOQughGC11ML
	 Vfuqu2afy0nMPjBCU7OcQ2uN7+Jg4azWH+U85jTwixzTaLPyQNLdtRddK2rkVvVz/W
	 YVNYIvXbwC13heWXVyXjHYiJyHIuzwJgpOLr9vCF3uEUha0KwLPw9oKhM2Tc6F8Qk3
	 SOVjEpYM5GJ7dZelSPMQ0kfRVsCmNl+3DinCJal2ji5In6PUvdoUBRZjxqY0ErK+in
	 dFHP/QLUyoRNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC24FCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157319373.6512.3177625557155838574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef6ef77f273bc012b86d1b2cbb56b854f82231eb80ef70743065299b94e21c2
Date: Tue, 16 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781573193
