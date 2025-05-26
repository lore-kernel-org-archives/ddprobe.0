Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481226D17
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748299195; cv=none; b=RSjjWgKFL2MQE4oXrUCWl+IwTa9L1GDXRUNNIxJ0zsz+2v2mzNqP2S3J5JDehgzJR/de7R8kWlCwt4aFM5E449J08wcwrPkTPTIQmPUft6v9vxdSMUF42Qj5gFq1Lm/dTxrJDfcfLKOaL3gt94EkdHiHvbAzrVcLghD1pqNyjQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748299195; c=relaxed/simple;
	bh=HYDzrYfI4NsXl79stBbUflBq5DYhiSLYzRfPVoMhZi0=;
	h=To:Subject:From:Message-Id:Date; b=UTAhQzhOFX9Mt3s4h9xXIbgP2X5nGh+Cz6ENb0m9fUHXQEnO9WTl+d/U/S5txKDyIpqisHiQch8VnYC5gNILwCt/Jeo47lv/W7t4ALZlhr79/RMoguYWUJubIUjaIhPtvqQg4BA7oBrVEFoJeA4tEFf9FjBB8pY0gRejBS5T6C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNRgCMNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNRgCMNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A161BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748299193;
	bh=HYDzrYfI4NsXl79stBbUflBq5DYhiSLYzRfPVoMhZi0=;
	h=To:Subject:From:Date:From;
	b=MNRgCMNSYrI96Uq5JNXSyniR8QOef30v65s9GWsKcxPhv3fwjNn8Jpa64sNI3WuXA
	 gVoGxm/pBZNetV1eMqhOq/ZoXxN7d5gXD9EFuQ7mtQI4MCC7pyO9SVJ1ANNe4AS213
	 5hlPIsMQcCnTYp6gQES6eiHtmSyKGhYeXtV4RbmZOIjq+JzXSQ+7Qttf1UFgJca6vC
	 jEC/f4surxLrghfLKhmyUSzsH96ADcc8OSf3leUIYmI1XwqDZN2NthVoLDegUE4a3t
	 dTxHFcb5aCqR5in1Fo457arBh8Tj2h30Awhe6S5fQFLt79eQlYmSm3FMZkCLt8yMTW
	 6CnF6NpJ6ZZmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD83C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829919358.22197.16916431715751512667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9810003453882bbfb33b3019288a0c69e8b1a7bf784a9d89e93859ba10deecd2
Date: Mon, 26 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748299193
