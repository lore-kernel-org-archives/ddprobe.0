Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3948B1E7660
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766298834; cv=none; b=HiWasv3kbu5FFWza9b+qiCe2tieioRbRYkTWSOhFqNsQ0Lgs8k+JtXd6xl4wRBQ5Xyov4vzv4zPom4lyu7ZSj7MIzDDneFFghn934kboTe/aHKlEcr6ELZndEd1xMNvaKCRv3VCx0sZYgtjluEzeh9B6/7Sbzkwn8wY08L1ZVpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766298834; c=relaxed/simple;
	bh=kcCxX3xqFd+kF3P7h0EyPCkYHas1pVz4AxzKY40WQSA=;
	h=To:Subject:From:Message-Id:Date; b=TkbBhpGRyVIaH6ew+Sdpca4ohEufLZybVFX19uHbAflbpQuSY+eT50wCygvRXEDpJcC2PAtmEhAVLgiXF9btbQ8RPB5SXzyRe5mpEbM5z4XFukvmWUusrXU1n/MdO87uUGjE8zB9spW1F0FWP39WiO/tGLHcplGh1H5RYzaNd0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdhsOqF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdhsOqF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE511C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766298833;
	bh=kcCxX3xqFd+kF3P7h0EyPCkYHas1pVz4AxzKY40WQSA=;
	h=To:Subject:From:Date:From;
	b=kdhsOqF5BrcI6i8DFqpaoufGN4EEUzDm+ai9x4GeoKHt7QhIgG6xxUlb2a2JUKRXB
	 dR9fBzoG6dWubECb4xEnsMqfzbN8d2WsqAOQemcR0MFNybt1scobatSHWomVRxEzc7
	 VjQvJ1nRfq2azUeNACl4srA4QhjS7BTFU+mdPtUTxyWiQs5Cg+uFpzyed5CiWW1XH7
	 9xVeqBUAo855VeXsQBKIvy/BZwyTay2udLccBeDBI2ljkC6KccReOK5vti/yQIBZgJ
	 DfHwRSEDTBSABry9w1w0rLg9e1dpauflboLyhvNyfjp5k0I/M1EyqeUBUr3c2zPI65
	 T0siMW4VxnJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B64D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629883357.338.16146367682518714940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2236a1c5dc95ed6b0080457b434b4103a579c1b1c07a709995fa7f900aa8d3f
Date: Sun, 21 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766298833
