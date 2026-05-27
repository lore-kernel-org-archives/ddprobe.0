Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4947D31E82E
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779891154; cv=none; b=HkW0kX0Sl7qKtwaVH8oVrXhbXKdDEgKhtZaSIuZPDgx5t438yHtBev5mJq2s6JfxkUcoFhaUUNYPCkmEcK+mZEXO8k4Qt56MFbw6dlbGVlOf0eLcHFRH4KObEk7BoUUCFA2UzdgWNjMqN2kwsCIMxSnH7j5TF+JD7L06ViVbY+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779891154; c=relaxed/simple;
	bh=aRzRXpE7vArs0T91msYc5XqhGwgZPAcdfHX31BMx6jo=;
	h=To:Subject:From:Message-Id:Date; b=BPa6moGgq5F6g9V9EDLzCTJSnxPmraXeIze8ia+8wqBd88bwLKYLZr5vj4PFQwnaLhfd2NFY3rjBcB1B/VPx6+2Uo6JMzJ4b1NYxz5G2NE8uvbNRzqPmlzHO4t+hlcC2o2bmWhDyizds1EWKjBaap3ppfrzZQhfIJ/hLW6ubVBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pG3XPCL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pG3XPCL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B93C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779891153;
	bh=aRzRXpE7vArs0T91msYc5XqhGwgZPAcdfHX31BMx6jo=;
	h=To:Subject:From:Date:From;
	b=pG3XPCL/Zusl7eSKS/j3y54461OZFfXdJcd64TjoFkE1w+wMO1dBlA/TylClkZiyy
	 EdiLLq4OGkaIv60o916F04IhE3qxwnQ9MDXmJrqJ2yLCehRj/m863D+EptTVD4Mk5z
	 Uxew0VX33kKHQHXYtRtBbA9tjDgDMdVmIFGbEyB00kmOsXVzK5xDRpqdFqObsKQpE9
	 gKwLyWrqlGIcUwjnDdtjU6mzu2V1QlKuYPRTy7EBpMmz9xujOaBd1GGYqDDEJkoDdS
	 IkWxMPeNnUw3YRmu8/+aapAtX+BQgIk5gs6U+4ymWqygAZO79RZbhRmyiuVsvd0RRX
	 +kBEdvBOsFYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0507CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989115376.20405.6474401248841790270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4daeb2fd4e33e8aff117b5f6a726385b25d37d14d5fc353335c86f844221ad4e
Date: Wed, 27 May 2026 14:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779891153
