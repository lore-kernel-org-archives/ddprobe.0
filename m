Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47529285419
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773884094; cv=none; b=mYOGgRGVgRZDMYfIRCLhZVWZFX1QoHGBcPbFuZHHdmWrkIW1C8xJF5cF6yCvrSpaMqlU0Ix2pzBBmVCNqMXmJKMaQNvqv9m2OAbeUUdc8BHI1G1tlfmJDGYxZ8pIjKXGd9dCfJJELBcCNoN9HFk0EyYRq7zZ76ezcR3tWYARTq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773884094; c=relaxed/simple;
	bh=t4lq0SZQ+fI1slhPDYBiqoXxBg4MulxgA7Qxda8k4GM=;
	h=To:Subject:From:Message-Id:Date; b=EbA3h2ldMCMaUi7eZBjKcpXosG6iISCf4UQ/ImfRHS/yHweVlZJDlzCZckHQrYlN0c9ftDb4duy/Byl+EFIQMfyGzyv4bb0SEtWapW1q2+ST/sh0+dWcqxZVl4mJxdGtAYx5lfGa9VscytdIi6w6+HRCPkUldQ129scvTSPNA1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeA3uFJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeA3uFJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42D4C2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773884093;
	bh=t4lq0SZQ+fI1slhPDYBiqoXxBg4MulxgA7Qxda8k4GM=;
	h=To:Subject:From:Date:From;
	b=GeA3uFJT1ENQrzSiHnKm7l07ccrh7Y86ZZww0Kn8lXOk/LZPD+B95Nu0LzxbTXOZQ
	 ofXhy/QdPTqFvI2A5p1WRxYpE6021bI+ipjKZplcpBKVQAh2LT/yprHzZHwDGo8ByA
	 kCBuu3RI7DeFbhz1msMbmpc37+WczKsv1TVM3dxu7pwB09oQSinIdAkRinyE9u4o/B
	 CZ+oG20oCG2dQD6c7tHqm3RroaooT/j5pw7V7Wjnny4aVKiJaoRYxvCo1cX8yVmthn
	 95el4a4SJPbGYfVzoQ0FXn6bjq+mDEl4mwrTC/+kIaP/b+7kwUoOQc7GQBi/GbKHKh
	 O47SL/uzAA5eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B3E1088E61
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388409358.4320.4698557666904256499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20080db06ada6d614192fca12721ddd0f54076a5e494ffd7a191798afb9f3a5e
Date: Thu, 19 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773884093
