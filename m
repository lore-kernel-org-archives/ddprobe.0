Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324231F582E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746732594; cv=none; b=tQ+nu0JRtY5NNS1kARK5biXuInfuq8ANe6aZI40H9GSept8jlhykx1ozOO6qCZXxt1DT7mCdbBUuY845LyAX87RfYYl3QuwY3ylV/ucrDaaUz25OrJqFZuLNWOtrN3Bc+FbBRirr9DQPntNh7MGf1OyhuSkKMDP2YoMuZRx8+v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746732594; c=relaxed/simple;
	bh=ajXWvhgE+6ZANXvNpNH0dW3KSCgVu3EfocdVzTjlFck=;
	h=To:Subject:From:Message-Id:Date; b=txX9gW5W2ipL2DdFgCYWMlA8deE+6ubpQCrW/kjCX5muulfsNYfTi8UYPE+zxAZ1p7jvIkyUBVM/G6S5zww5GTCN5z2cp1osYwbXSnEYiUoZOeC9vXkAk2ZugNzxmyJ9+502+YVtiPbibXsAAyozW8qiGn15N3Is9SUjlQ2gVeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DitQAV3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DitQAV3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0930C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746732593;
	bh=ajXWvhgE+6ZANXvNpNH0dW3KSCgVu3EfocdVzTjlFck=;
	h=To:Subject:From:Date:From;
	b=DitQAV3P3FtLvY5SraA86fz3rBXEtjLxErj5QHnkJHgHwWmJlpRCbgIJUI2gn8/a/
	 x0oEpD2jR0TsHxWrgR2LnjMoIJrsafajCyQbx7Ox8MctFWgb6N3Q0/KBl+gmZeWXYz
	 1NMGEKOW7MAD3rcfdbAezlJDW1HAiSRTM7bzEG2dM36u2kPK3+npx8w+Ye5onQDYg8
	 gjSYNguAjtOzbQOrnuNT81UvD79QEXG9T4gKALLJdATiDSJDLJkDFPMq1qihX57pcm
	 0M6ktx5/uTtwTTghvYt9U9NVMkOhCKywiQKA+jEE5bi5/9IW7Ls7tZXgKkn2kiKGtK
	 kJ2e8kiG7ZGKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C84C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673259358.9083.16099456584829974177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb49d3dd2bf736a0772d0f99471cf13a57cc1aad6fa0093071dbafa2069ec57
Date: Thu, 08 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746732593
