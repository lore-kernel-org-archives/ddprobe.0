Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384B21C9B62
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736797554; cv=none; b=ger1WUx7o2VU4qbllCgUjVYltDeN0HKMzS4F8nhQkmr6HcO1N+mv4hjmSTIuuWhScf+Tzp7IFm6lmG1WXZdoMZiS1Dh7ITgXujelBVPUC/tW3w9X/E5EgRRaAQ3uhFd4cJhSJD6jaDJMMNlyJY5In6OBpu0T3jmB/5bqhXRbflg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736797554; c=relaxed/simple;
	bh=5nsXjp53SlIGdx9Cs1Z+CgVuC0VRIrV3UGT/CGMqvn4=;
	h=To:Subject:From:Message-Id:Date; b=WjddSJhMcZWgky2f92ubudMDAQ4E/fDstUxcnfwQxS7Q06JZE4Vivna02P8t3GJ4HF7a5dFUbeHzrJBPBIvOqQQFE9Kbcm8kvzmKlgVo5iCBJ8nKxgAcBVrPlC8mj+21+wmH8rl3gGrIj9ZXGKJezSXe3b037q8ENpZ3J6B+DT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEyIOzus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEyIOzus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4700C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736797553;
	bh=5nsXjp53SlIGdx9Cs1Z+CgVuC0VRIrV3UGT/CGMqvn4=;
	h=To:Subject:From:Date:From;
	b=EEyIOzusH1lGbe4VPPrzdUIX8uwCMCXmmoYHJXqBwJQg49Ti9+b/C3B5rDyaz64Np
	 CXn3z8/4jvCDze06pqWhSO1RK+6EykErRGQt3AbVUlJCQyVS+EMIthQMaHFG7l0kib
	 7AMBDatQa7RQ5d5EmcR+q/B90ZMI5xHP94EgA7oejez/fHp7a3BWcp46gcNRokW+9y
	 cmAatqebWOQcHO9br4U/1/hgY4dCUw0CNBKKkBi0JRAR0lag9WCN0K01Sl4gdA8aqE
	 eeflKQd9EPQ3blgx7iomryWmFmd05rAPbRihK/jwU4DdOST9vZMZvl1fQNvYxnD/ff
	 IuBYOMQSMiJ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C2DC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679755361.1352.228639814718131003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e954c2d23ce47cfa3937bff88c024acce565ab0135b1fef390c002efff6c25df
Date: Mon, 13 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736797553
