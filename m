Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1E5205AB6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763204994; cv=none; b=RFFCoxIZgGZpI6N61pWgvIpGvoD5DtiRBPZ/XM9FtGRPw/K3MYR3yp+Vtcwch7kEcCKKZGKWub8XHD3t8Bnjm/t1qa/uwUDmFy2d6maZ3vRciZdkKwlcGUvJtXcszVYeOa9OyQn+87C4a4+cNrRxLEaInLxq5XM4C+MPm8abT9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763204994; c=relaxed/simple;
	bh=DcOvMBX0PwCzp+UBpR9A+En86sGjzmPkJsq+3ZbDSfc=;
	h=To:Subject:From:Message-Id:Date; b=eIdhEqr3sR0Fui1RmL54lb9/BVXqOI2pXe+/uM/5LgSGCUhHx8V+6MTDcXI70mPUw6c8LA3B9w2K3dz1f+bUA8OVy9BuZtPYAEU9YB3Ugiy36s+7W9ZppWJdmVexmdx0bFE5gOMBPMKFfNtP8zbeVFWD6rQbwiwpjS0S+byDJ3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HREEqnBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HREEqnBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFC1C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763204993;
	bh=DcOvMBX0PwCzp+UBpR9A+En86sGjzmPkJsq+3ZbDSfc=;
	h=To:Subject:From:Date:From;
	b=HREEqnBwBJHybO5yJ0Lgnccj93R1+UUSAUIpcypOdGOboQdEm/YWvs+CLEWiZtm63
	 uSFNRPZv4VG+NjFxTtpzWd4rVKLCFUgheVz2aiCH7ovA1wpHNUw3dh6nlYAOAOZbz/
	 tp5O18+Pll4B7VOVrYxS1jg4D5sVkewqyyNsSeQ4GPh+jQZr21vk0NRNs8ZF4ClLer
	 jDyvCzwzHKMhor+d7vFQPJFQfEGi/C54SquDIwJJwWPxaPEDoasS/6Lo62bhKOGS7e
	 276QK2p2tNUE5/TS/1VC803/AYvrOFaNUQZSVWpfatpmZ0s0ScPRmAvSHz1AL6xszz
	 b2xVxQEjkslgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F26CEB2CA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320499359.20388.14407409901084768902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9971d84f9704efdfaf099dc77cac1841de705ab2718c5dcb15f3347babb328
Date: Sat, 15 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763204993
