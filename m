Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFC8FBF0
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748618994; cv=none; b=Xsw5O9CXIPAUv50KCTXoWOFRWGfug7gpjz1mMDubOZflZV8vWt0AWxu+jWDNhHVmWEEcG0NQWhMgdRLRU3wvDMFeoWIYIObzyMLE3TXw4XvT3djyru9UlP/wCMwEvVS96++VqIH2i9IIDSgeifmcHDk3uAYNMj7okSsib08iesQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748618994; c=relaxed/simple;
	bh=1gIkEk96Oesjh101nCIMfIMEcx2O8InWlf1h9BGZh6E=;
	h=To:Subject:From:Message-Id:Date; b=EGdv5MW8rNPvmW9xVeMRZm5E/rkii4UcHchA8Ya2pf51ZEeBIL5Yaa1l3fBm5f0KRjcsoicWjfKA/O6Cp85SdlcoTDyUZUHu1Dc/5R5l5ww8Yih2Fs+wWMsl4Xd345wOg/tPdq3LbG5Ftr8950phjZ7E3bQSVa3TDLvLESPQuQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IagyKLey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IagyKLey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB5AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748618993;
	bh=1gIkEk96Oesjh101nCIMfIMEcx2O8InWlf1h9BGZh6E=;
	h=To:Subject:From:Date:From;
	b=IagyKLeyDwk6a8KXv1KdTl/18JRevsSgxb+PHGMWNspv+mlzfdP8whTvHePWF+Dm+
	 RWkM9k7Lk8QT7oxbcTtLs0rMoyG8oyjMVbb1/xZVEmGyVUv2SDEVpHK0ZwRIwqCAoG
	 wU5RHE6RxfDPmE7uAa43PpwA5+2IG5yUZXms2SQT5LEA2+/T36O9uW67RyJMN/f8pv
	 aSwCbkU7l8rABgsC/B7Kh+ObLM/Xnty0i1fvPDf0x19fBLHh1HZp3VlCngN8SItBX2
	 shsMM7ByaGsZKJvM+fSs+dM54J3oovcWYazNr1eD51a00snuEa4AsanrUHectBy+ez
	 rGZzqOUxPIftA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BC4C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861899361.15740.8902285280250364246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c6f8806edc36534f1fc8db48167a98f16f5c994eb22de7e6d52c8eb5223735
Date: Fri, 30 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748618993
