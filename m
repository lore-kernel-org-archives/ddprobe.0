Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DF6225760
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744009794; cv=none; b=r0wATKYFq/lbcHAGBV7BahJ6lBT+t+g0NtYSUzWK6U1SZdXjJc/9Td3M/m7mp2k9U7D0zbrtDyJj7QQztcm2+hbSrclvJQv7AZL5RFl19Uxl1uV6cemHa9q2zTSVaijQyOjWmQ3etRuydEG8udAW5Hb95nb5MVKq/ZnlaPCEvU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744009794; c=relaxed/simple;
	bh=+Mxfc7duwX8FeRn/hHm0FhIzjSKgMfYS1jg7KJq86WE=;
	h=To:Subject:From:Message-Id:Date; b=XHWCzaNKSFa5FzUnkZoNl9ixQLG+hkwaUcEsMtPMXh2k3avw7W7rO05CDiCl361nUX49FhPNXrYTjXVQ7DG/ExWGBduLqWxbKt9FoXMMzADRnbvZSc+dh8LoWcvMHVRjGW/wrxmGPpkM1LJe8HCg+Firiju+NELFPi9B1NoUji4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0Avo5yS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0Avo5yS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BCCC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744009793;
	bh=+Mxfc7duwX8FeRn/hHm0FhIzjSKgMfYS1jg7KJq86WE=;
	h=To:Subject:From:Date:From;
	b=k0Avo5ySOOFMgor5dsx1gfR1Xdbux2SihtrTGguzqomL61UwyIghXvJwHc9ORXf9j
	 I3mLgViAPgg0gTjqhugP8N8+/rs9FD/LVQt/Fe+/QbElm/Lo3Vj80p6CGo+zdE+Hlm
	 WIwI5Aq/FzgZUSabRwIkUo4MN4JAT3vWe+UJ6XCM9ETb19qYalvXmifdculxuthp4L
	 +ZRmqGK8Py1VfpNn1RmCTmGLuAIsV+KgLnAxQzVNU2B+mxgMbzTIsA7Ajeo45ndaW4
	 iwdpdsgxbAGOh7KKmq+WdrrReaBD+DCC5/pJkt2UiicvGcNRWXs465ns9Krzjngy8S
	 X0VgPaaT1u5dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F319C3601A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400979363.15605.10429844908048507756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61487e93b6502c97c3eb8e22ccf8dc4d4b4dcc8ec8c6d061239fccc59e5ed44e
Date: Mon, 07 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744009793
