Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452B92580F9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758853194; cv=none; b=oKxjAqZXREVL8nntNW4Ka8R2Gr2lVNLrKx6YiTmcMAgLPRY2QFZCudMGXmhXAw8si4OlvTj7M0QwfVqQHYB12ymZ9kS5KdLp1HJPlGddZxh3vKm99UP9I/+szCDUKCIYAmy+wwRq4aVcEtDGr7+quIpyWpOns4vKfOOXc7P2g20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758853194; c=relaxed/simple;
	bh=ALv2yIC8GpuSmQ8MW2lbTZXdoab0KBih/rdSOlDtzGI=;
	h=To:Subject:From:Message-Id:Date; b=LoENqyf8tx9ISh5ttHclN+zd8kkmtBKYGcucVfMw92KL2Oe9n/YYVxwn5kemjhRnb6tNoVzctamF0WzeBAC1CkAiNxuILXyK3tH4Zl9gBGM+Dsm6ZbH3IuHDF2FPO//iH6HKRx77ZK/IbSR7mhPE6bR78YgVf1yOEuxZ6kx1IxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhfsdJB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhfsdJB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F6DC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758853193;
	bh=ALv2yIC8GpuSmQ8MW2lbTZXdoab0KBih/rdSOlDtzGI=;
	h=To:Subject:From:Date:From;
	b=MhfsdJB9KWCZdK1Ts/TBx70nQp0AyEVI/h4F1OXxgqJGKXjuqDFmcuZYpjzJVhWlt
	 T1RCvrTeF5PiS4mXOwAKdpCESPXFAzv4FwWm3IwoftcQyY+bl7iTnMx6lUhHjODDkS
	 76r1quzxpKz8gasM+iv4wv7DTheo5wReEtvQQbQo1/4VEOozqyQNe02Fl1g5UoYUhH
	 sPitZeQC6t8xlUtnaujmYhYaK/JfsY+sJ27qZ48REoKn0Vb6veQvRwWZp07LRcpxIa
	 pPMI7W18ul2byC9DbYUTSE/oX5rlxdYmFlI6XQLezEAadn1JonSh+JJrxERs+49VaI
	 cZv7AB1aFBfYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14CFCAC5B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885319361.3484.5606033212744039954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74fd61bc33e56e27fa3c579f7c387bc4fdcbf669eb9286a4793aef8196d37db
Date: Fri, 26 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758853193
