Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34077469D
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742753997; cv=none; b=UshiX6jI4UN8Iy2zHRAybfeSjn2AGO+YBqqdi0bg6NbeTPxfS3JCynejHrDCAEEYkcsJZh5dpwEoDpD97jYIdwu0hs2/KbH6BeWnH5ylLqQQHu54Gi2rubboIx7ulv+oqOMeapQj28yee+kLxixhOTTTLLuXNud9VOI01DzLb2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742753997; c=relaxed/simple;
	bh=dSBprk15n+JK76gTDmR1ONVQ2QwxZoprRpOYYhT2LUg=;
	h=To:Subject:From:Message-Id:Date; b=jd9eyzJvMDMZAueijBsMHl4I13f4yaZY1Bfj88G+7nRpi3MXO0yK6dFwNRMw/2cj9L7BjeLc2lDqBfzAY7JlveacBm2jSGHtb5bH9N2EVLaw5PSJTtTHEH0RIW4h2qrk8NbdvtNReto24XxRN5uHOIAUXhar6ud80wOxSpPFhpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCBM3TcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCBM3TcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A566FC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742753993;
	bh=dSBprk15n+JK76gTDmR1ONVQ2QwxZoprRpOYYhT2LUg=;
	h=To:Subject:From:Date:From;
	b=gCBM3TcFfM5q6fI1SR1RmdB/Z8gxQTVcHrIS0MkeVZkrgFJf1K8DyOB6Fc9hv/bNK
	 Z4DEPidj/AgVGtIXiHu9Q5QKVHPCUt4qt2LTkRnYtMvkv1ZKBlUUnrcO08mgNlnw7t
	 7J3SdVHRKMfwzqpUDh9wLGXm+wakSo4Z2amTRli9zsUYEXQ3TXO6Dpq6z3Mb/r8qQV
	 vLFkjikxtwSso31AaxErvR3Vy5u+SqR84xbJQeDsm2szVX3huywPMyCcJTSDNWaj2j
	 iXUdoRFNnKuFo+K7ZwYgVh6wo/YcAedeetb76CNsjxZolq8DgouGPiqO+q6bWO28XA
	 N2uKP5NJ4Z3Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9590FC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275399360.3418.14934494482357918378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aacd2279f828a4ccb6ef7245c6c416af6954cb235dc7cadfc9361e7aecdd6d4f
Date: Sun, 23 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742753993
