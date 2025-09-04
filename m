Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1102EC0A3
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757027394; cv=none; b=nCfqzspiwtkHdnK0mm7H9Bt17FUSPku+sCsGspfEhPjf0mnuDiBtznOEFd0cBHUbhTXE24IzniHvI+IbXiLbkVotxz57dQLAXCjuIhXqg+tAQk0iarJe7+2xzWiYaiPBXMf13pA60Nj64zUg328D4CLSDvDuzjySneNij8kNBLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757027394; c=relaxed/simple;
	bh=dUcinwmU7UQAc7NwSclitnKXr89bouM0eTja6r13xBQ=;
	h=To:Subject:From:Message-Id:Date; b=qJz8vP2wir7xTOoRufv6Cr8i3rB1BlrUx1BuLZ8okTopdDDnoK1i+DDUHYamiky0AOOMsXGQbUDh6bsbg07VeLzLKQhVT6myDQzLtAWB+2wBNcOSFhScRklD8iVv7bUPl1qZxdmD6mCuZ2tq+P6R9FqWX6vz64NmOYH5x5SBjgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U45SD2ko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U45SD2ko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1971C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757027393;
	bh=dUcinwmU7UQAc7NwSclitnKXr89bouM0eTja6r13xBQ=;
	h=To:Subject:From:Date:From;
	b=U45SD2koCjypSSiKD2lfF8Ah8KMAkoB/nqmovTa9SPr/Ul+McblfklheEupyUR0Fw
	 OH1tJF0DiKlJWMD53Ru7CAnXkGcR2M79sM/B2UvkKKSEX35YWpd4OwLWyq9LnC+PT8
	 GaS0Wox5RVYu2caJKHhXI80SMlRiy99QQJgPozPKSJoRzAjAC0Bj6cbkpAGIt6BGXg
	 TxU+ZNXWjhffPeXjIUHOJU5nNyJ5bH6iq3fG6fwkzA3Z4CSDzud6zqixJ/mHqODGq3
	 ic5jMdV3bl7+mInOJpodg8YN3PMoLaYTlyyGpafqE6wfj+eayxDkjgJV1TkZRGq2W8
	 ExUIDJI2gJFGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D0CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702739358.9172.12527845479642405886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37c29aee72f231dded001563def1b80294a234dc259d3fcb15a7909f410213a
Date: Thu, 04 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757027393
