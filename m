Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6FA3FBB66
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780932274; cv=none; b=R793RQmT1tBmA8UAuGJGb8UFPq3YeZRrIRlPZMTaBjs7ystJJfv2WlqOTQyhMcMHh3By/ygvRTokpL7/+ayf5kkFPWs9oITKV1e2Uf0HGAgxglG6VO1y/7dAZIyuw0Nu2rUAbXBbkmkz8wHZ0cfBH1TFILjk1nY+1Qa2n6NTkjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780932274; c=relaxed/simple;
	bh=nVIE6rerUYnViYKHDA+egq1bsFTsGpKONVJ+/ZnORMQ=;
	h=To:Subject:From:Message-Id:Date; b=ELjfzXUb77I+d6ifMVc4dFvROuZk7B9XH5RMM9gS5DykxjgqJmEzMl3EiGc/DEQYnem/i24ioGP2LX0/cND5lkJ4nNLJFgfVL+63jJbv6Ooex741/wE172AF4jHv15wYJHkfrW0oECSVbGm2LeamZjKFrBwOXfv8FZv07z9YIq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6jAW64m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6jAW64m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8941C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780932273;
	bh=nVIE6rerUYnViYKHDA+egq1bsFTsGpKONVJ+/ZnORMQ=;
	h=To:Subject:From:Date:From;
	b=E6jAW64mrwUe6+aWaY10tIARZsNUeWuAti+nNT38S5fQficGv+g3fOrtlZqK5mKG7
	 MGf5qeTP7KhUZXltqNerfH8jRk24C4Wv/Rj0CypLpekk7G8HMfm6nxAeehrQp2Audb
	 ksMjOBXI7k9GnXNfNm+7fccCjVDuXGIod6vzxBlUKDUGMHcwb1T4HsTmfEnlwHh0ZR
	 5ZmKkpJM75/ku2SE1PJcsu4k43JNUDXBLQlzf4eofhJjGeFx6+i/ossVhCJaUezo0c
	 d4e9Sf5Y0H1uiWKJY6OF0RkkxXKKcJbccY8jlhu+9AVxjRdYxSMfDDaRJOsNfbEMJs
	 MRz6PNsC/s2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF58CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093227368.19183.10531753569589049499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a318470d286594aa76700a9d1f65177ef34a0643238910617c144f81d970596
Date: Mon, 08 Jun 2026 15:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780932273
