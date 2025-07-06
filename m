Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B3717BA1
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751767194; cv=none; b=bfuJsPrqH0zbB6OnjAtt62DDcjUZWnYZkge9+x4yf9BBTVyAFTexIU1p9f9BHEYU1AnLQ/aF1/GzRcWky6TLpP28mNGJf/GWVjvNzv/KFLOOnWrGS8a7y+ydPoyyyNhKmjCLteopH1ydo42xRWf6D+gVr8V35BC5j9n2C0DqI24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751767194; c=relaxed/simple;
	bh=NQUxYAb/gT4VBXIqAR3t2YVBKpm7YmQ4ajM9quEu1No=;
	h=To:Subject:From:Message-Id:Date; b=EFtUY+zDFW90dOQBJdlBGvCpgRepLF2ePAY3Ahh9vw+QIISEEMZpk2pnkFO4X2+lRuHDjh5aGuTp/KQeDC00zRrynhYQHZipBWIqMuTYlAM9pnwAT1+xLpWz07lO+t6Pz81fKNXOFh/pXUSe2RKPxHpMBFjo5Wt6/YheBvChc4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=df4+MTk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="df4+MTk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A87C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751767193;
	bh=NQUxYAb/gT4VBXIqAR3t2YVBKpm7YmQ4ajM9quEu1No=;
	h=To:Subject:From:Date:From;
	b=df4+MTk54UiAhr3uOzeNBL2tKF+SOWYGr0c2NL+21ts+nROaoLGlgkyBK/pVkOg93
	 aRps9gMWTftQB0qm5k4bnXk+vGBqE/brGcSNgdgK9pUHCEW9/eu44/LMY1QnbV0WA0
	 yF9x2bRw1NSqe6bT9VxTzPcE8DQsXoa75SSkKDAT0vqj9vAz/++xpe/Wt/j8myOaoc
	 1IzeC8ugbMlEG5mTIFTt4TzNgCdeuyMZHiZG6Nhpmt/0jOEqEZ6enAieGV6ck27NB6
	 c9YU1osQzbwVoWg3b7eKa14lUJDXkznFYIl6uIjdoyopfHkdxgJ8+EDYREsvN9wa0l
	 NWRxR6eCCBBzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134EC83030
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176719357.32404.14331495439302579315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e15c0b9aa3fbc85715a66f5d0bbed11e1075205f2b7306068edbf3a7906979
Date: Sun, 06 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751767193
