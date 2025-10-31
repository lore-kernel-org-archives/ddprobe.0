Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF592E6105
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761898794; cv=none; b=QHkBTFnELBSuA8IdUZNaA95nPpp6ZhpPV3oAU+4iRZALMRF65SeF4nJifZhNw4QCYCD9V4j0rXDmoX0bBuKbiqh5Y4oab10feXdnakAxYHD5gDNeIInSyhpYDfUzY6/XvVUkz2vAMxoajeeACzkU7HeZejeRfMJLm9/cHALjDgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761898794; c=relaxed/simple;
	bh=RLS75R+mVuepXMmzTNeu3xxN5NVl8ZASQONOUJ/IsYQ=;
	h=To:Subject:From:Message-Id:Date; b=R4uRFdLgJDQlVL/9WBsvv2oIHstgLIMiVRnCezH0be5RqXWRPmAFMpDng6OS0kjBEF6PLNEgyJNeHqlu31aU9sDFePCUoGbG2Rn4/dWsizf7NxeZmlg+im+UWeL3/m5mHu4QPOGPPsyPe5oR4eldL0RK190WRFHYpoeNVC9khJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjCJIa97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjCJIa97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56C1C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761898793;
	bh=RLS75R+mVuepXMmzTNeu3xxN5NVl8ZASQONOUJ/IsYQ=;
	h=To:Subject:From:Date:From;
	b=MjCJIa97tqSsL/zOmhKjJHAXcQpDeKILAYV90iFk7iACPaTkXEQB05NmYjFh8VBUx
	 9IycmodM5ns+htdHTCi/sguuNVFj8cncyVBlbKT2YFGoTVGOn4XYJEDQoxC0j47k8W
	 +WkhZDvBrOyJH6ObAQWa5WFa7CJST68J9TBBrqM+94xPB/En2LuRlPYSUKMtcK3KLK
	 5O5aDNqCDs98ajePc2aB5fME+ABnCI46HhsI764/e1Wfe+nxMId1gutPAR85ooXsEv
	 bsQWbYRQMD4W2XO8z7bpU4wLmm1xrFNzXntjEVPjCWoMQB8Ivz9ppIeYfwJV545cbN
	 8lQaGPIWsoMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EE3CCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189879359.21123.8634255935833156860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1ada366b192794eab2967a41f0362f011d88ae6e35da72397a2954e5a1db18
Date: Fri, 31 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761898793
