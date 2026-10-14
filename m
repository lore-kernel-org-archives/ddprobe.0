Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AE243304D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791982834; cv=none; b=jzUqoMdxq+KYOvrByE4C2+DMeFUnptkYs0h70liGMPJoP+h5VxMOicbhIXYWxaf0zituqsFkwFxpyiAAisQ5uS3yGo80DrSWCnHaGFZCpjJXgguQqkvgjTMpJInSuZLoRIuLe4+ZeB/6Wh0ZDCilpA7hACKV1UNQ2LIvMbnUbic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791982834; c=relaxed/simple;
	bh=LjW4taQrQTxBJOnzO4s5oZrSVxNAtP9oEKQrYexTumc=;
	h=To:Subject:From:Message-Id:Date; b=Z2RmTNxaOrpv5I8BXI6CwKUUdbyoEMutR3VLvwfvRa3Z92CtT1KdJn4+6M6EjtUv4nzayumDGTd+yPP8v5qwoVGH0dRj81rttHb+0W/g8LvRRlcN8kAuay6mYbCON5GKJzlo2Y017VSuMl8om6U5LEv/M5Yt23hauFNTeB+u3r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STwjcu3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STwjcu3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51B3C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791982833;
	bh=LjW4taQrQTxBJOnzO4s5oZrSVxNAtP9oEKQrYexTumc=;
	h=To:Subject:From:Date:From;
	b=STwjcu3COohFGf68wHRuG2OePWh0n3kJ8cmitHTW1pT6yysK7lq/QOeSeD9n0kCjN
	 T9U0+ok3hsMzMw43BgSx0MnMvF8pAKfKdo15TUYyujXhZ1fERcPRgOlfv+2kN6oTBr
	 bfNw9jxQ7whhvX0DXbra10bLPwx+8RQUz8o/UAS4CjvpAtsOSk3Jnilx2FOV+dVfiI
	 SxnKQ35NyP6mRITSE804PW9Y3IVkwCm/CHKygk0p9c8fJdfuhi1XiZTJpwQ3uziXNF
	 6YfZMER6LBcHMV56MpTBlA3JzzIVfpQH4BtrsVFNm6zcljpjOzfganfsXHW3/Ebd+f
	 68Jfok3nrLp9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0904CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198283371.18462.8957690152397471613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c87fb4a2db7440dd63e71ffeac2dc8cee72d1fc151ce88e5a1de443a59531c
Date: Wed, 14 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791982833
