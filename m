Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CC1353A69
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788706834; cv=none; b=AYmyoeI/UUOeQmICMLRwg9yP3BJCZrupon9RJPoXrXAgA5mJDV/sERDYgatT6K0ohXv5sSrkEVCpT2FuYrRf+wHKMS7EYNweYSR48xZ8cav06yGKUO4KTMwMf233jdJcwN0ArNToXfONCVY5Oyvjsw3CYcpYVLX4S+AuW0+dgeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788706834; c=relaxed/simple;
	bh=uANftCdHEaj4ttLwqc3d3KElecADh4FCX1xlVbh1P2s=;
	h=To:Subject:From:Message-Id:Date; b=dlGzjpZVl/nvedF3ifSa2r3y3g41oweXGeOyMVs+jg+/8uE1p2zBAEvoD7+bEnDYHQ/8rvLtmp2u3muXDim+lpigbkgtIBSAPeBAqCdn6pSj/em35Cfsr2gCxe0TZ6TL771m12No4Rl43qFGH0HMlnzWVFH0wzrwmCp9OzxejHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mj6UkJhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mj6UkJhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF1CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788706833;
	bh=uANftCdHEaj4ttLwqc3d3KElecADh4FCX1xlVbh1P2s=;
	h=To:Subject:From:Date:From;
	b=mj6UkJhYvUz2z/DJ3/W6F/UT7exmm37zBEXYnNsfKDQZmS4ULSLqehAf73vD+F3el
	 XPppH/HmAyS1xUU91/fPsat8pY7Cii7Qcqsq45bhPWXAdrgmmrTwLCsotx9cGLCCVv
	 yO++E+kaYOCbb9RxMQmUk/1F50fjPtEVRTEdPX9YebnkPcGMUdJOIFH5BvtMel3eyK
	 IckIL6nW2MVg7hlo93IDBzH3n9xUEK5gJcMNBrwSgdfJ5sgocaDRJmOQofY7GP31i4
	 RVhjhfTbydjdObHwTx0/aUCYBylEJ05eVmubLBXXtrSnfc5vh3DcNrCA4U0lsdHtFb
	 22VIHg8a1rTPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD224C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870683370.32633.1525165107012687188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 779c9cf509ec229adb1a950e9b760be0af33c81788db2c6a0b62aab60d2882ad
Date: Sun, 06 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788706833
