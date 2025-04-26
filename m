Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2994A185B4C
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745626194; cv=none; b=rB5A80FjqBVEPbTGCqHJ2urSybClKJMwmNvJZmRP7m9KiTsJbBOIaiaXenzCtqrKZcbAWcmWvTjE7e78G0J03hwRSpbwQ+4hfHd1qx4gcBuJOb9HA+gyGKC4O7feJBIf4z6wtFruU1hf7izyAZHUS3uqJ7qIB3jhFbuQf9AqGOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745626194; c=relaxed/simple;
	bh=g4vMmXRqaWBxBpa4YZVULXwlaEYkVFYNVg0iOSbd9x4=;
	h=To:Subject:From:Message-Id:Date; b=g09ErSSEoxAmQIdmYJzi48wPwAikqvGc7ADFk5vRXy+bUJ3tZRkkAq6toeiS7y59tAHLHjOB58+rBm8ZAHE0CEnOJ78Vdtv/yczf/FuyWKJs9zYyf7/XPpQ5gSRrO5DXagvhOVx9qD7UfOjduQtuz2PANHMaf7a+EPlsLYU+IHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWwUqFHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWwUqFHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E565C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745626193;
	bh=g4vMmXRqaWBxBpa4YZVULXwlaEYkVFYNVg0iOSbd9x4=;
	h=To:Subject:From:Date:From;
	b=rWwUqFHqNaQMNIAO93aZ4Tw8NOl6cdsPgRYrqVzMGlwqI+RpZq8kTZ4d0vS36qSs8
	 prJF1gkYHDSUoTWR3KsAHZBIvadhYvSzl9y/f/+8sHuBeoTHQFufs+RBOPysHrj/4j
	 YZn6n+0y8tgY30qdItxvlkPRxZh1XkggeALDYrLUVmKk9L5Evx9BhaFaVX46kQj1sf
	 xqawQMwyKahRmKdJkLm+Mz8Ifzysqv8VcPCraGpdMehsrztAI/IfMDYipIX7DRnNcf
	 77flvBWp82KIWxrW9YvnGfrKa7wLvoaiUDUkAWOv05yEjD9uzI/soi//nJpqkdaYQL
	 PM3lBlzrIpQIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E630C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562619357.20494.16371284360377666671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc9123d1b72d0e7e91759c41a312b3d45c6409be13e9f16d867b477430285a7b
Date: Sat, 26 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745626193
