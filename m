Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F512451CC
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733896554; cv=none; b=aH0Jho+ehFhjnqWBaZcsj3BH0GjVlQ1FyMFKiycEukf+YUVZJNQwMQnzIkKA39gPyfNsN471Q5K95TPQqiDjR4+9g8BTcyCiMg+ZU8t4WSrmjUvGwZWYJILL7GKdueNDO3UW7JOa0wHwOr08XPzLqDHibDhQDV2GTqDB4rsugpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733896554; c=relaxed/simple;
	bh=bf+z/7Nuy9Y0ltCa8pMxMszYy46gJTBxRa5k++8IkZU=;
	h=To:Subject:From:Message-Id:Date; b=imQ7/oAUCOJaxrpLmrXE97QOQtGnl8taYlfJrGN9k2zoO67DKUJk9w2r7tbbkO00W+4qs5PKFaJhL8NRHwuIPUNuCr9twd8aV4Q3aXGLZ/xyySQ+cA6/KO5hhuFoWQVHCmxcigz0vnU9ZuooTnF45XxnkfxjjjGAhzCKMhQtGLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Se/Kru2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Se/Kru2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8398C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733896553;
	bh=bf+z/7Nuy9Y0ltCa8pMxMszYy46gJTBxRa5k++8IkZU=;
	h=To:Subject:From:Date:From;
	b=Se/Kru2KnctRewmsldiZmfOlJDdn6DZrTNIDj92IWZlqAb7PeKfguhV+tQO9nwf9Z
	 XVCOqhaF9erq5OJPG1Cd7RUsyqklQxKDBKCcOxk3nRo5g7garJXz4DUDSrDLfcvPtE
	 GzG5+syZIa8RDEfpqZGa2z9KI99R93zHq3KNoWbp+H0apaNLlGLL/XS9WhRwjDtdvC
	 y/YioWyBVxmGu1xRZozL9xVNP36yVmvvdQOhDJTdNgd1MBxO2QQMGsvUCWb/eUogP8
	 m6Ss/rUt9rRaUnvh21NYVQSNN6QoLljnqw/1T5gYtbS+IPTxDqSsOSFwdoy+f/9mNs
	 tswxUNQ9EwUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6937E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173389655365.27773.12279452395452493000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4f4918d83089bed126ee2e4c8c4fcd7c2c5a5dbe29b0c0e321eaec0cc2f794
Date: Wed, 11 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733896553
