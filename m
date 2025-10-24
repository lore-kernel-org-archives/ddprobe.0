Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FD030E0FC
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761349794; cv=none; b=Zq5/zFzJ/KOGw10KyeXkxjJj5cBZVIBQkdwG2n9mTGUE8jl6mMeAzOJMDYxVLKAIIKCpHO5kKFvXKc8aI6cEEc+AxGYo5e+WzdNreGOIOrMTMB7lYkH9XCi6QUw9azQ1r7Bs0luS10RvlLPmTYrAwATCsv0Bo2S3cUpbEguWHi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761349794; c=relaxed/simple;
	bh=CaZC6sc4gN4pik8KwN0ATvn+BaZ5jW4o6zvNlgszL5U=;
	h=To:Subject:From:Message-Id:Date; b=m0D4g+ZBGtRqJpnIkS39wuKOeE86k7xogMES6PB1I7b7BIJ32f3Tv2osFv3jCoAKpIBLrfsfWTer5/ZCgfcZL5AbJGky2+l1tbsEEvhxovTo7xub7d4urltRjSyGKdmw11WcxGrIpGCU1vjMDjaH381/ToxBAfsV//edD9U7lpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukJIgBBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukJIgBBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2EAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761349793;
	bh=CaZC6sc4gN4pik8KwN0ATvn+BaZ5jW4o6zvNlgszL5U=;
	h=To:Subject:From:Date:From;
	b=ukJIgBBcuswW7vnFW9zhPqHQfpDLDp1FULGByLBc1IW2G9ldVuA5L/HqmWw7ZziUZ
	 0yN/wX7KSJ4GMQQgfoVvkCHyfnj0bdlqZ1yrPCxyVoqDi+C0Paa/ka00YD5FUXbt4A
	 X6PEzCEnIYpCE7QiRa9QRMIrb1a9sVyRrGtjPEWC76BREqTzZE277telYlUkyI+7WE
	 5JKmiASz2p7GspCMDUiToTQ1VjE9oLh9yely4OIYD4oohND4Zo0ZPAdcCt/cWtcVMj
	 2JZe/oekl2WwQ0wAq25J5m9IMedDKj7QcMztF8NWZ5g1hx86LS/3o15Q2A2ZW1OpAp
	 cw5gV2ye3dvCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F525CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134979357.26760.7550427440967929400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f9705784703199f60a7d2a6448290e1f2ff31958f460ec5e43e9b21cc1a2fe
Date: Fri, 24 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761349793
