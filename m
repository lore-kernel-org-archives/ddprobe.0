Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362996D17
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749105594; cv=none; b=O74UdAX+1dtknS3kHEw55QeCpCgwhjF6CAsVLaMEi0J3OOR28VjgoMrVo/6Gy1bo7e2P7SLdZ+UwGTStOuRKjRgHcFvPDZIGCMLtiweEstsEYqWvemnzksSwcyhytEJY7OvS4KYPm6/mV/aah5I1efE//5+WfWX6BMDHoHyH5Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749105594; c=relaxed/simple;
	bh=isJsemmO8DC+XkcCOKLpXZkx4GxPanypXkY3Xh3TnXY=;
	h=To:Subject:From:Message-Id:Date; b=ce+xLQK1g3UIKqgqfZOxRrjcp7qapqVzvTGXFJ/OKTsH+zPzhMtzFvKgv5Nwy4NwacI7BPfszPK1R96yp3sWyb0o1NoNdXZgjSCtb9gZEYZPDRSmc4qxx5lKnVQ7r7oOunhB9kDyyW27MdjkpD3bXhiGR+683kSrX5DzPgcV888=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2FR3Wou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2FR3Wou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EE0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749105593;
	bh=isJsemmO8DC+XkcCOKLpXZkx4GxPanypXkY3Xh3TnXY=;
	h=To:Subject:From:Date:From;
	b=M2FR3WoukS6k6L4EUn5QwDxRtXSvNeBDfGlYw9PZkFmKrqXn3TK8xULNzoVjNt4Bs
	 3Ttee1XvW3kWyjdPaAdtCEQW+Iq0tkYIAqeFeqO47PZ1tzvtfS72Ut33OdygqFKlie
	 sPyFpMv5z/Otn/U/iWO/NMBsJh9Z/d1krHgjFeAAJbs6w7YkWqFnoxptNSBU3wJggu
	 3fkgDcdBc+cqk2Pi2RG0CWrZlIhiQoG+m61J6Uk+0nWfYTQ7Rsbkw2YVpgKK+Xmz3W
	 VvPzSi3L1LTEnx+C3Hy4pq88s/GaYim9fNWS181QkPilG0M5ajZS1QWBKE1igHzJ9Q
	 zUv9B9lRpmBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97265C5B559
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910559358.23976.5029069322470276624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fab7f91603bbe31dc2d3fd5ca3b2e970424b7465f84847ba22c583961a0b21f
Date: Thu, 05 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749105593
