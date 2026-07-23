Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDB2305666
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784774974; cv=none; b=cuY8WJPk1p8uiUzpRo4YTFSv7IhQh1fRTf/JDJ9GEOx8pGHZEYj53CbzN60LGnZj7pm2/n+FVbLAJ8Jtr549SpJ2sh5GRpjCXTUJOw5ukHEUQx74267HD9NeGlv610dmmKZk8vMx0b/uKF4OIZqQxqSzfM7TwqnVZUiu2udM5Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784774974; c=relaxed/simple;
	bh=MgcVCH5SxcbRxsbWaDkyJ4qAfSoAHGLKTq+fZLsLj6Q=;
	h=To:Subject:From:Message-Id:Date; b=HNpCZrFAVRcl/20qJidvhvOjL6VYWyw1mYbauqkCCS5kYUyah5x8TVcKwvqqW72RpNnu6kdZrsSFqoSRoNXubTfJaITZbp9Zromk2e/a/x21ow7A7nghRYDmpMCm7cJxYyli5xYP2+l87SkCTyNxFHvMv8PMi9AllqA0T4PQePg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfaUK3uU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfaUK3uU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D380DC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784774973;
	bh=MgcVCH5SxcbRxsbWaDkyJ4qAfSoAHGLKTq+fZLsLj6Q=;
	h=To:Subject:From:Date:From;
	b=GfaUK3uUgt2bCXfMqPBN7lb9Gwe+8wi55jU96Nh8QbEK6bwp0eZTyNtJkJw7O0Chb
	 MNlXgeqZR0fUVrovgbefsC5Ka89DNw3qi75WjnpuZgv/OM5TCXJ8ymDJzq2k4WjSdi
	 sqzDrvOr7UL23xUKhWwM9sZBN6wrPCXUUSZ7CHZCukJywlQmryo1LlA18D2KkxkMHl
	 Yp3neAOxgi9PwPqB6VvRvkd0w9Twyjh5EjUgwL28CN6ggNKtStPS8TDP3OIPj3cjF0
	 kbcw7F3YA3NZnA0QaARNESAyJG4v9xT15Wd9VsPWQ00Tw87pcv0unl+xw0Qp2Kk21L
	 p1EoLu867VBqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECB9C531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477497370.21274.7054998652775661145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a559b5acf55e0e3f7103260cc7a6d8388e81bc5225fe789ad98a5f20070256e4
Date: Thu, 23 Jul 2026 02:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784774973
