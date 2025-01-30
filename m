Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D79819
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738242954; cv=none; b=RffIhJ9gNNpqIdX9fu7arCItYNQrL/9pxQIR3Vwaithn8Y7TTDDppGD5gQw2HW2oPb7aWF+8dSmmneKzVfzTMaWMwyQRiB/YJesJ6JXp6m/tEgY2Ah5/vGz++qZCZ7K7XLtO4TdZUu/eiouSXIW3/QQ0Ygsr/rCoCVPS43MoDkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738242954; c=relaxed/simple;
	bh=oun2XTRk6HysQK8M4X9nChhvrmiP4tkPUisnMXegyBs=;
	h=To:Subject:From:Message-Id:Date; b=Bnu8du8LycUYyFakrVtJjPYB5yg9Ery6WcBnbPx5zwzEfk9DLTXq8sIsZJfP2boX4+/DtqfBKZK2dMQ350Kj4SoZDCkm7OwWboXBdrw3Ef8NI+LIwbjmt3ImsfvLb/20KydOB2uKgu0VW74/nFQCOu/j10NcErCKlHZuO6pH6yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKi2Gdsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKi2Gdsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB150C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738242953;
	bh=oun2XTRk6HysQK8M4X9nChhvrmiP4tkPUisnMXegyBs=;
	h=To:Subject:From:Date:From;
	b=bKi2Gdsh3hH+q6Q1sNVk5x/hyyg3p4+Q+rDQGLodU05HWGge6Mwy7TOFAO8AaSnAD
	 Pfa6nKMwg3scyWlYCLPAazcD0yvXUEnzuZY4NaFnu/qlof4EViYXMfT00N7L6PZ4tr
	 mG6MIxQ9cEWgSQ6QdHsHEHnCgzCi93yi3QFXpP+NojhICIyn87y3D52VV06LmsQ99E
	 gVqd5e0d0/FYrAzcwWyUhxcH+E2dDnpIpw4RmOFtASoAMk7J2J4ol/QKjxbEJj8DPv
	 1UEfsZrTgnrBAIizT9vewV+uLIjkV8nBnkqQl+6uT+bNSZhWdYwj9/5uMFRiTh+v4g
	 mLGf1qHYoz3Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A9C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173824295361.2977.9520765485800844760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76d5d6e0dc9b2a10ea2d1ecf8c380b184d4312d51c2320c3d1819259c1875cd
Date: Thu, 30 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738242953
