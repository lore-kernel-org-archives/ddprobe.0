Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E193229B02
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755260994; cv=none; b=Gn3iR0lB/jqNIat+kmWhNt+F8L4un8M0zZYy73ZQQ0AuFFQ+VfwoIaNBmNr2/xTW1APFoRsQJ/ULtM5fbmzeumeXUZ67R5+rYvpFLJrl9WhtkWMNTZOTVudjL4J3vr61dueyKoXZjr9q0glc6O7TWrdxmPbVOKxT9TZG7XfWpo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755260994; c=relaxed/simple;
	bh=ulmdZCcIDIA/R2+1UHlar3URt5jWZ1jneH23UvFHjRw=;
	h=To:Subject:From:Message-Id:Date; b=Z9Nfh7+5JKZlmW8Qaaw0kYnlpBa2FU8va2Mxnspf/K96AfB8D2Sphm7tjj4s12vxdUKbdJJCPWGsLtn+u4YyfdbgFaGVeIlyKCYOSxvLZ3BoiKrfJLCuP8MBrAXcKMBS7AuY4ZxZRhF0zebpYvFv7dHliDiYweFiImxQ/G7RKrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTpGpvXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTpGpvXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC5AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755260993;
	bh=ulmdZCcIDIA/R2+1UHlar3URt5jWZ1jneH23UvFHjRw=;
	h=To:Subject:From:Date:From;
	b=RTpGpvXS5cMg9I1WLh345uwifN1kYytk+/iYmJGuVN0oEqocOXMG449BFvu3bUL0w
	 LJRvbhosMA9L14PhiRwrCJscTiHZ+vlr0qCbKWHMBfmLrYyduLuYeAl0Y497fp88gp
	 VOLPfvaZO4FAvCOB/h+7JedmCS5XGcyEDs+c6w3g7IxlclPDVxGCwxusabyf9l48+6
	 bDSlgvKSTF/aXH8dtH8PH43/ggHxHSJYnZxFrSh7f2u0gZ/xeaHjJndYA2Vaph+W3S
	 qCfgTybXYSMDSov8wIs9zXKT13knIBqYBXuFhfwQyHHTF+NystTf42sJ/ustGmvglf
	 XVHLVtsEyhQGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96370CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526099360.25408.3384306568373212079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad395d326cf1931c5730a3226781f7bb4ec11fd9ec5b8ee7a747e3d1b025584
Date: Fri, 15 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755260993
