Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C41113A40F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721947554; cv=none; b=cFpT2iWm3t5ngl21X1LYnWf/wRDVh545zfPr50QdnpY7es9oJNS3TO3QfX6wwDi5HbG6x2p0gQnY5Ics1NVRwNvN+U4sghY+Wxg6SCd5uhGvCNUo80cSVfkloMfl1UCVopBuzelsfErwNbGrSbSTOze2EpmnCHXF3G4lGdb/NCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721947554; c=relaxed/simple;
	bh=hA/O1ZPBaL6PBvWiO4dATtZnSeJCDLa59+4fi/8nzls=;
	h=To:Subject:From:Message-Id:Date; b=scAMPDupyeCIcSR8bhY73qXDnVg+1zaG4rYjXxgizg/w+BVjlxIRWlf3UkJDr5jvi9FkrcshOmUCRI3lwjjKOyMq8AnHdMj6h6IoDdbF0gcPwKcX2tgYip5NSGmOnqgppL9zd5p6omRdAn/i87R8uJ7l2sq7dMDoy3ZO7Kbvks8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE/afnwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE/afnwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A438EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721947553;
	bh=hA/O1ZPBaL6PBvWiO4dATtZnSeJCDLa59+4fi/8nzls=;
	h=To:Subject:From:Date:From;
	b=PE/afnwSBoP3rPiXnWJIGpvzAs8mWKXMnmSJasQ4a7C2iW19vDToXOou6LsvZ2NCI
	 2il599QyUaO+NIeU5OZRe9CZdJl+6aTiJIFl1pfRPkV5rKTrclaq2LevgO7YA4qp6t
	 j1KlRYpnXh4ciCo1+MEMWD9TLBfRJXJgCdK8Tbnen153bikRAn8aSvnWhYJctTwG0y
	 w27GawRXWP6DSLvTY0NZWJlTVMBHVDGBXfJwWSSfvEWYQTMQnnLtSvThue19NzoWCU
	 vs/hFxYQgrCY5oF8eBvCvUFiNXJvtiH8nrnDYWZqW+z2xSH/9+37iKQ6RgY5h16tsu
	 n7/1qeTW4y2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9084AC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172194755358.20629.3047857080641528982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b117bd3ffc40168d9b460198ed6ef03fb497a86fa8229c9e44e5d8ac22d7e77
Date: Thu, 25 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721947553
