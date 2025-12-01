Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5358FA55
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764562374; cv=none; b=poYzRGAJZTC+gSPTd2FY8ZesecdOh3Q7CnyAzr3SPriuttXXDP15KLGpyixTM56HW8b+sK0Tm6zP5VHB+LNkSI80ySgkdEpCGqHDqA/CH08ewqQb+MLYocEYdrH8dKA3npw9cEaUNLslTiBejB1mHotztX0Uov82fN+eU1/0tbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764562374; c=relaxed/simple;
	bh=kQGZl6hI0V2JVyhi8jQFSc5kYj/376ROPpl+BNNwz3s=;
	h=To:Subject:From:Message-Id:Date; b=IpyzgLLxW3RigcFPvO9ag9q3WS7+C3FO6wstLB/5mNH+GpRHg3vlBvFVbV9VWCEexIILut3rVuJUG0ZicXSkGy6L27PWDqVc2cd1ydhvL5xSxKcA4QU1Zd9jiP7dmstGHU2hPetLS+A5BE2/9jPjqWTPBl3RS9VrL7ZCckXrg1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aU2XVDNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aU2XVDNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCFCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764562373;
	bh=kQGZl6hI0V2JVyhi8jQFSc5kYj/376ROPpl+BNNwz3s=;
	h=To:Subject:From:Date:From;
	b=aU2XVDNKR+kQY7Y/Rh2ZmDSacjBbehAmt6mrAsYE6ckPGYy5p5qj8xerGN98rc8lx
	 4nafYOaTPJ5mzriFFt9ay5Cz+tJK5uikN6dvjTPO6iovsMkKyWR80kirYFUDsx3BH7
	 5zlJazkXWHp1S3c8etnV8ZNiF2T1avrmvsNOT5zob3Iq7W9k2N2+66K+UsEVXAaXNN
	 GgLvqqSfSRuQg4aG10Nge8dyYdnlZIcK4zdxmv/6hXKt66PRY8bgE2WXjUoyjv6EsC
	 N++BARNB8BmQmabUPMz1wX6JVIfHrAjqNVdK4Zh/xNrEtLz8Jm7LUetzT5x6EyEa43
	 I5ABzDYL2U+gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CAAD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456237358.19562.11964755721690503819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf761b14e36e1f3a8f27ce6d4b8b3cca09831750dfc11975de990acd5beeef53
Date: Mon, 01 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764562373
