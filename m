Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D64389
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713532223; cv=none; b=jMj0t7Ibq9FEuGmVoZt6gEM8G8dpYT8A3/1A1QoG7j+ZTrdQqvZTNDQELZaYFQjOIze6R/rgUZe2xvcAh9hohV/0IGqxpaJ0dIHDiZYX+b6WvAuJDlunRSJ2DAbp+bGav8izHIxumd+p84lNmsNPUIJV6JHl06ER1ZP78wJkitg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713532223; c=relaxed/simple;
	bh=4SwkQvrbAE2/sBsutrIFt1hAxgBhPW1duQRaxcYpHDc=;
	h=To:Subject:From:Message-Id:Date; b=j7rvKitkcuGdVI3BlH692SxlUKkXU3ITiR+yVfAcAIL4H505AeZy1YVqrnxFsue7l1qlXhq7c8ZG/YsN5hkP+a+pm7usqZOi9MPkjYwis6AtoPrAiatBxRBq3ynURVqweh1aQ1OtujFvYzJhQKeRGI08fb6+e3hWxXGi48gqZY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5o4IUn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5o4IUn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB0AC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713532222;
	bh=4SwkQvrbAE2/sBsutrIFt1hAxgBhPW1duQRaxcYpHDc=;
	h=To:Subject:From:Date:From;
	b=i5o4IUn9YTMMVo6y4LVkFrC38ajOaKLn90mIyvNqRWCwyzKFTbBlboUZBXgo2M1dN
	 WZcn15j+TsTMHFZNk8mEtgfYPd69b7Pfxtw/hYccFexNQRQMmBo1cWtP4NvVbjHyet
	 KZCzghmUNlSnxwquvXfIVAVTYd8DUIwgC58gRLBDsB2g5Ii9JAsymQaGMdwqP31EeM
	 zvefM6mONXt8jVs3YHjV3yRvn8CuR3s4AlWcgjFGqxf8QqG2uexPssS+fSv3xq/qK8
	 koxFl0r1l/i9z9sm887Y4BvHN499/jYQf9fQI9skLhdcALZYTc3nyj0fBV0rDlRULX
	 xQEYs/2WDUVyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD922C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353222276.22082.8636002945801900774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67daa2b7907a91952689a927d76858a0bcbf1220ed30a41e0500367d7959eb55
Date: Fri, 19 Apr 2024 13:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713532222
