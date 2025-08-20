Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177BD2DA755
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755678594; cv=none; b=G3GsLWW5g9VjM0QuA8ZAsllmDZ3m0oAiK4bbzz0OM9HEcp0AwZO4jd3edRDBwSAcuKORA30MlMYrYQUolar4yuiT+bHE5naTIqsWz6WqyZms6C+DKVF7CA1g6qOQsA7iAd5PV249sL8GXkJ6yT6YPAU7GLJYRAuLDYmydPr5Wak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755678594; c=relaxed/simple;
	bh=SPrUzVE7I5zOOsmnjz3u/m/z9F5XVZ2XMn5WEf55Xak=;
	h=To:Subject:From:Message-Id:Date; b=daVE3UaasV3kZChXYXGEWC65ZFO82P0l9C4SIkqPavnuB8GNLH+PWuDlhHMQMETFT7ckhfh68/+ImKtDVrbVPmWKVXxTNU1nSTvbzHR3F0fFguL8LK5kYira/heDAwSkuoWitJ85lA/lD+3Is8qAFxAnyJ/eSzH66TNuHnbeNik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM5tNcZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM5tNcZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BA9C116B1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755678593;
	bh=SPrUzVE7I5zOOsmnjz3u/m/z9F5XVZ2XMn5WEf55Xak=;
	h=To:Subject:From:Date:From;
	b=sM5tNcZfCM3d9a4RFO0M5kNVveWrs2dgMcW+JKmTSlurAVLpudHyfvq43ligLkZLu
	 cyvlNZbOD/lojb8tAVvOB5LYk9etXOgr+/pFmmzqfCbKMdLITtzEvOO8Q6Vb+nRwxX
	 WWEE7/0Dvi5Tma7/r/jP7Q7GR22sFbGJCn0OZDmAAYODRV0xNq7fNSz0/t0P1Dyx3K
	 wNNEXYpk1vqndAyWpBJFdvB5tC5YGNLe0mTFjJzY/BxzvhIwRra1SM2fb+HhU7A7gF
	 5mCcY3wEZgD5WZO8gjECcNliNIcQzJbF7x8EYzBHq2gwKtKwoeoaMA5IEfG4E56/k1
	 UfGJPRbjeIphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC67CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567859357.3618.11331353814828239321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85dcbca154d66b820da97f4c8d0f9c57df2a1f8ee8a45cc08fc9a7ccd2c7ad5e
Date: Wed, 20 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755678593
