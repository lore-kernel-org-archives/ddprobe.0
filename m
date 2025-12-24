Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095C036402E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766584434; cv=none; b=KHjDfqyntsqR3RrPOs7LPzpGKwdMENYkGjQoOAmwhgHwKVQv/YCMdO5ORaJEvmqz68kaM1JHsDwRmGt5h/BnBh7lVMbWw0n55epo5D3RdIjJQf6/ie4FsS8TgLH7M8gGR3/tA9QjvzRCkiyCh7/AgxiAkEITSFKg8jQom0Wj20M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766584434; c=relaxed/simple;
	bh=bH6PqNbMZo5zNOegXnJ6XXlmNRTwS5s6m6fJJhekQTs=;
	h=To:Subject:From:Message-Id:Date; b=R9Sm0aKpy7zKB1Ar/9oocBmxh4UhqDIOq4n1cPBOpEE5TrMg6wrpNXtT3KXG2TxXLs0am1dYcFeKcNLpm4yX+MhimvElZF/c8Tcihxpk2w6nxuLbU6SQVlMQg/2RWyTqy8hhIPdSmUjrfaVr8nn+d8+V9dMgiGfVySFj9EKFnTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQF0rRYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQF0rRYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A157DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766584433;
	bh=bH6PqNbMZo5zNOegXnJ6XXlmNRTwS5s6m6fJJhekQTs=;
	h=To:Subject:From:Date:From;
	b=MQF0rRYCqiu8SbaDZxftLh6wDZNj0amke6ypKWVOWBZMQjK7Iny3Eboy2VDDBlFFj
	 Mgm9yR4gdpKkvMIDb2TlfwwhmVBn2LAzA33xu3tDox8rLTNqgIpEYEw1DV3DqWKXkj
	 gEjBG4olBc4cXyw2X5sNVHO8UqR6wXqHy1FIITj4bOlXKeyYFbwwIIUHcygpeyi8yj
	 j8dAUd/SNyrJlnfxS3U6e3McSdR86jh/Gw3RodreN2SZ2zYAQdmZhXXK+1gaLlV0ws
	 +tA7ACZoeZ1WwFOQYxe/dr5AAtdTW3UZnyW2S+mNsFWcynrAkRacgA/iZ2cOJUz7Vk
	 V4UxgwDh2xjqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB7E75458
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658443358.26770.15457110723240095007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c897df2ce59b27c8b130c79739f8e41676bb96b3399ab631ae1df616c7bd6b
Date: Wed, 24 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766584433
