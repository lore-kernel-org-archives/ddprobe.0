Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E327187A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706029696; cv=none; b=KAqQ8Icy/yixUm0GG36GGy0Sl1YTLtlrUDCiZAHTaQWjaPtN/CDSejvhcvaCxXzW6MZpuhS+EPqASQNxdqlp5QDGGUm4IYIXx8xi1W5LrgwmpH/nIar9uhfiJpkMC7ZAgw0c7HKpEeFuiNmqpnw1cwI59jJEJaX1IpAnONLZzb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706029696; c=relaxed/simple;
	bh=TO18vnI0ZKfOvF+XMrMUWkpVWStN3si25fhaoih1b0k=;
	h=To:Subject:From:Message-Id:Date; b=S5b+N9Mnl6Sgzl9TAu/Au59PACWXRyKaHCRX0BBQ9ufQQI1kLg0jxJe2m67ZW8TBtI4ksSOAlXMSKu9M1vxog6dqDDANvt2DGlt6QBhNPfjqGyEBe8T2/b+4eWGfneXVV5iyTBGZLLI6WBq6aJWLuUnC8Y+wTa8jj66hnwsakRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrCr5rF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrCr5rF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74962C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706029696;
	bh=TO18vnI0ZKfOvF+XMrMUWkpVWStN3si25fhaoih1b0k=;
	h=To:Subject:From:Date:From;
	b=TrCr5rF9tFVEYW1okpGBxzaXXWHeIJOcOCEgeCETLwc8e7STcGoaRYYq88z59WeLw
	 MCEO5LVUZYm7XfhreOBD1/MHPPG+3qHLP9P8dhU5Ktow381ZkB0edB4IDmyGiBReTO
	 +/C4r4KHdqU7GGQKe2Vjn91gBoS2jlHZ+RpSiRvR/8PCVGKRZgT6+6l7LuK8z+SG8E
	 Q62tpw2Q3Oa7JNX20kjp+6WqN1u4m1iBHfpor2lC1uu9jAc28mma6Kl2WuXkt24K4/
	 PUiaCwrxwaRUZbDz72ohK4Ik/KxhabQMy62yGcIBQFPZtvpkiTeY62cQaRkKRgV9Zy
	 l0U7T3boI/K3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FECAC47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170602969638.13759.9378300921744000363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ee91c9251687679624c29600f1b37f5c5c177e9155202e49ac6028c5c77e73
Date: Tue, 23 Jan 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706029696
