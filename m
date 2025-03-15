Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E92376
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742014135; cv=none; b=AnQQYHXmJqS8gCkwIi7x2DJCjRVpyH4xJhPV6AJjzlBzo8Jch9wHbshSyyO+SSgPRV7rMH+VP1bLsxZOxlkomryFuS00pZL/Piv2rLwV6RREfBAp5OsV4tyXXMjfY4tC2UHyWXxV4YXU9t9zNQwutR/RKQrggPlInGCsgnG48KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742014135; c=relaxed/simple;
	bh=Otu6Lg0n/x0gZFyp1NKnUuS87gfglkypWDpOx9YeK40=;
	h=To:Subject:From:Message-Id:Date; b=DpfC90EFujCoFjCycRV9JSTBur1RwKH5aivFIcmJJqg+Y7Gh4PxBkRVArB4yHy3ojNqeI5a2beF3OpOy//WaJarL3DuHoWzpFtA2QrW6+WCsVgYKGPEBXt3aQn6FhHOE1vrGujFiUUIo3gVKoRQ7hVWKQPw+I5dXu5l3NxpM3ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PslSig1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PslSig1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D70C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742014133;
	bh=Otu6Lg0n/x0gZFyp1NKnUuS87gfglkypWDpOx9YeK40=;
	h=To:Subject:From:Date:From;
	b=PslSig1bxS1TMra4pM+3QKME/hVyr6saWcDoxcAKwdoer5ckEuPyRHndWyxd8JrkW
	 kTtTEDgOJmaTl+GOYcG27ttx5wKDpStwiLtqh7JdhVFDh4+xwcsRWFGyA7Z/j9wLK5
	 H0Kakr+gSb3LetPNdHR7Y8fKYw9L1CihyyaAKHapSJO4WL0ydSRxExGcCpvTKtNljO
	 B3AfLWvbP6exHKBwLRohFF3OjCAN/dZYoDLD+ALawq/ioqT2vk//B3bO5ZGQRemhW5
	 01rT1m1nf/sO4n17F7q/+ZwgrhrbNhBsN7z/Gay8YU08CZrdehFghggKXzNmA8oFCp
	 QasVOXHZ+GUfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A942EC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201413367.28637.8905415418835659337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd63fc21d11ec8441838267607bf290be1e9aa04467b30cc27339b9022891ae
Date: Sat, 15 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742014133
