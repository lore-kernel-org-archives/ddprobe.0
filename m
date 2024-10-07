Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68891BA29B
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728296753; cv=none; b=Sg1Uxdl0HeWCytWR/GikDOIocU1BiJ9FhePuVasB11O2xD1gQe8vdOLw9njO2C0K+KKmq9+E4oOdFlZBsCEW9q85kAh/C6FDWmKF+YFIIpu2uTqrxwSzxbJSvNFLQQaikLwBuCm3SN0ynXGSq1HWBKpLqTo6PQx3lNWaUGuvgaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728296753; c=relaxed/simple;
	bh=5m70jU1rhnWrNwTWefRArkWeMjWKas4I5XUUjVDj7zk=;
	h=To:Subject:From:Message-Id:Date; b=VyoL2pRGC2pVZn6dy/q7c3nrpvasL/VdQR2nTLzVD/TBHEV8Xkyu53L/mA8zEEodyJVD4MpOEk3QvOQpIU8YqEuRdyW1OCLXnZJjxhsVPzWGHO5m6cqjaYZAc+StfDiY0Kqm6l9f3hbyxJQiw0zjU0elgPtwNz393ME2Aempt5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIGnk444; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIGnk444"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D37C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728296753;
	bh=5m70jU1rhnWrNwTWefRArkWeMjWKas4I5XUUjVDj7zk=;
	h=To:Subject:From:Date:From;
	b=LIGnk444SrEU41tK1gSUlD9j/NNrrEYd5M4oppPgLZduoPQqEOugqc+aG37Yz3Js1
	 U7NfU7D0LYCy19Sctn4Ru4ctRNv6HVLEnVh0l1DMKKH+weUKyQ9BtAJdVbjfhqufcI
	 jjQX17ZxobaGMMwUb94IDYUaGCI8Qig1NBYXckMNstCCsfB93m4j/f2ixxBhuTeqoQ
	 kPlRJItc14KIunFWH5VSI1UzIaAppWMKvq7roQFzhZ7oNajBY65y3Q6brWiGqgDZSq
	 YCCEF1EQZcmVS1ycST7QYQ0IYLBtbAdilBcNfioJkD+mUTYEh8ZGriLlmL00/+E8fc
	 3KqBjoKMvSFGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B84CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829675361.15043.574641395387348574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb1dfe23e3db546e9873492dcacd27106ee29669f2d23286c870b87fcfdeeeb
Date: Mon, 07 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728296753
