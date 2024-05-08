Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D899476
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715157743; cv=none; b=J4lvR0XsXdmItrjLGTWInR3BVKxAonqHye8VVPSPyTtpAooA6Rbr8igLqAmtGg9Eoz/sL2AQ2H1lwCP58CGQm4U4vlZW6PreDbIHtteAYIpFa+KSYERWxDTwsDm1EpJuPwoFA4JKoxL+qNSrLxcUrZQjjUFdwCPkzV35eC7kcx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715157743; c=relaxed/simple;
	bh=+M5LZF1px+7PyLtMiLm5PcC3OhQcdRm/nLk3nvcWgdo=;
	h=To:Subject:From:Message-Id:Date; b=CCAJok/22neeA7RrBJosx7p0xKZU/1lL4xyAM0kl01ik4mB19BT0QYxN7XxELO3lD/I+wECYmbARBEWfazKNdISNO7ccbq+nXJLm8cbsbyrT4Ky1IbA5LZ4qIc+XawvddL5hiPefBTBcIms7Xcc/k72ARRFDEWPBPEhTa3av/9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/zCYTTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/zCYTTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBF1C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715157742;
	bh=+M5LZF1px+7PyLtMiLm5PcC3OhQcdRm/nLk3nvcWgdo=;
	h=To:Subject:From:Date:From;
	b=t/zCYTTk+OQ5vGim+K6sxYCy4BkRuqohiw9FUbR7MZmLRcCf4183FMQVtRhj7ceZ6
	 m43vzHvFuuYFBjLkwIqCwTYqReHqM7aNaFnc8Dl4KMgQRPzcPERC5YozfTZDI2b0xq
	 JVM6L6boc7jXwdUjRIpNEGqqhUCB3tpAP3bBEuVh1KWWPNummMlVFjnBMczJ/iXqF8
	 fLEZxNzED3jEM9yn+1bo6CWHPTXgxC8EXA4Ny9XJ61UmPYstwpkL7C4AN+d+7gQah0
	 7ye6AzI6gXjTRKi2KzwZZ2Su1HrN+WfR+vyo90RAknq16TgaipWIXXiHQkgBesUzVX
	 VKiyif8cHsVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA61C19F4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515774275.25857.14574820904387748560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a125aafacf5271ee8630248d18f921293bea38f1d1f9d66f4d9a304192f73c77
Date: Wed, 08 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715157742
