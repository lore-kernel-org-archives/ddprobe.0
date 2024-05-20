Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9281FA4
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716165143; cv=none; b=sOVMUw4ZOCI/dVLxwfYtrZ+UQn6wtD+7vkoN9BeZdeXnFMidJFxUtiGjTRlXBVQoQyuXB7x+HJLDuunRy7/XpJCR8l00C639mZCROQQJL+sgz5rRS/dELL0v70HZIeITAtwMN5ZsO+tMlUIjppN9p50VXSRNtxFP7zVXjqHBhUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716165143; c=relaxed/simple;
	bh=rRXGky5tykf72gMaQeYP3WzVNF2bVdtY66FhWXIrgxY=;
	h=To:Subject:From:Message-Id:Date; b=L7/7OYtnFAyH5IzH7B+OB6NoTlMnSqjVUNUp2Rjd/JeebmaiFsr7Cd3USLGi+/3l2zNMoDUj6Ei6fRYZLyvTBv0WxeVUnn7s3bXFyGoVv5SwcSdC4tdLLdehBjBBfXVRu6dcy4reQwVdJz5BjFGMz3x0y6HX89777ViVz2wkPbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H64t5iR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H64t5iR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC24BC32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716165142;
	bh=rRXGky5tykf72gMaQeYP3WzVNF2bVdtY66FhWXIrgxY=;
	h=To:Subject:From:Date:From;
	b=H64t5iR4yvlcnwcDJZx+/QYpMCVKCAlfgkDbSHEzJDK8+6Htuc3mPGkPFU+7mQQXO
	 kR2LViIpT1mkHDyDQFjZrv1sJeyQJxocoGnQSaRx+NCbUzH0kLcPV7Z3ke5vkKRHVI
	 u1NS9/0lQJmNVWthf0d3xqvjoNr0aCxGEmALkf+glAYHJwiY93f6VKBAxErb6S+6Ow
	 sdcUMJ38JfWYA1qbjPojrob5h7it6CU4KvhzMDeyMgPBpv0KF09QQ0OplCokuhO8uA
	 djx4VeLv9wV+h25NwwpUxvJ5neRbIm4iRc5LvLdKYsN3WNcE7GSZb6kju0+0Qyi8TW
	 y4tlJ33V1PwEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B9EC25B75
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171616514278.2116.17010724678155313121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e279877d5bf071069c2a09fb608e8c46c84cf86bee7511cfc9d94e91343f2a23
Date: Mon, 20 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716165142
