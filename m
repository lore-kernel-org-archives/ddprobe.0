Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221FC2FB98A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764772374; cv=none; b=bQqDfKsywBdo7xLYq7XCs8jFhhuOpQtEum9rjMcw98eIQYcmayRSFwr0d8Fx9egEoJEKGnzbBtBd/LslLmsydmfhtFQwaM7l9KHBQ5PX8Lye/YvO03bHaq+QYkbgv32yfyJxCFH1t45E4VQ/rN8ln1HisZc0Nti0F8kTLpZn4/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764772374; c=relaxed/simple;
	bh=JKkU6pd4kW8KBfYQqBJT1rjBLfyzc5E0w5VQv0keOu0=;
	h=To:Subject:From:Message-Id:Date; b=r2DX7VtBBQndu44Fbxb/sSRXxOtBPolms/aIBM+MzXxjkg+d1vH4ikuRHLOXsuG0+wt1nR2pVJPRRg9sdYXdzftWdF3L6kxDsnQcLGL2kkQR2LN9M2SxHzVcRxvEzPZeLogByqs7ECIlTWUCZcvodxcyiogyCGXH3LZPscd+v3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrEL4XEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrEL4XEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE7C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764772373;
	bh=JKkU6pd4kW8KBfYQqBJT1rjBLfyzc5E0w5VQv0keOu0=;
	h=To:Subject:From:Date:From;
	b=VrEL4XEI6cvwU7Irjuz/yqJAVH/Q71sSN45658xFKBbL3b2x9DviihD9zItiD02aA
	 59xC6PN0ks+uJB6vZUmj4oqPzOYvAWWoNKg3z08J/ejZtg+UlVwYjIq1U2W10FLG38
	 /d1Kx99jKAOTzTebyW9Jxh7r9jYZRl/TMuMFyb9aCKM77vI6j73svAGxRnvR5oyE82
	 uoexMIU7t/i5sduPA5q2YjQxFLnoHtjBv6EI6k+LywYSNSOOew1FfvN1Zh0/GX4Uep
	 STyRSsgsoCjOljwKhVDa16VR4JH9W1giBTdCwwSOg5LOOQJj/1a8ow0rL1UDhHjSeg
	 WXIbqKyBJ5oSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E6DD1268E
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477237358.21699.8731941584243205878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3533f29ab0a099dd467da6ee49068c3ec9db56eb94d97b639af6062dadd6b2
Date: Wed, 03 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764772373
