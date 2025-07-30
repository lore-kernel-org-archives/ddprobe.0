Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF12192D6B
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753888794; cv=none; b=coT9AqyA2hpn9BxPpg8fqY/zmqhiYcrFJAhqGBBYdRuQ81bs3VNluAncLSvqDJFDlI1q5HqS9ut8VR9uyKZIzzQAlbzS5ldY/JMciZ7cjteMKlDuV5x0lMvJPnZtKQ7kYldKqID6KnQKeyzrjIvez4NyqTKaLQeTzeoMu5IBLeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753888794; c=relaxed/simple;
	bh=hnMoEwYCFpIJX5AO1uOYVeIBZ3nGaiOW05FUQeLWzp4=;
	h=To:Subject:From:Message-Id:Date; b=I8wtQR4ko0ljHXQnspE8RNPo+Ia0BPiIkdBUAoWPVfa1fJVtxcWJzwc5PucrdqOdeSqVapE+k6crhgQyaU8kJqdefmfDW2z3vhCXRp1yG6aO8kjExmUvVbAxUVZqGKi2MkNh/ah1p6t5OKMVoOkt5lKde/yFx+StHDWDWhbtqNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxE80MKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxE80MKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A100AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753888793;
	bh=hnMoEwYCFpIJX5AO1uOYVeIBZ3nGaiOW05FUQeLWzp4=;
	h=To:Subject:From:Date:From;
	b=GxE80MKrPsItO1UpqVeRCrXrzSiMFGPsSZl4MF/ctHKDF7tFwhHYO2WVwpuwZzL/f
	 5fra9EK+V+cme7/3QaUv2vacFElaE4nF6B9xEOamEZv0+zz0rdOdyQ8qa7tr4QAF31
	 YsCuLM3sGygRMYv2NkbcZyzNnZz/0Xp93x6nkqt4sMu9trjq4wFyNlOvix/v88xmnW
	 66futOUruLZg1MxNQjK+GtyC3zRxRauXixpywMtK8z5D8fnuOSGpxvW81/akLOhEg2
	 1ARlTqYGVSszZF6R8PpB3ZcjbXTE223nAd1np335szditiDFDy0sBqvhQfzWUPjseg
	 SygEkhXB/U1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6AC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388879357.11235.5165519390244939178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe8c057b95957b267e6540b66f3e92094ef4107f414fd779f35bed57555caa8
Date: Wed, 30 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753888793
