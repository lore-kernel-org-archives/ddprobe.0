Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E398220F4C
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753760394; cv=none; b=nq6gM2pqft6+tWMJulVtPcuQKgcunoOCEtfWKmhtdOiqIqQGTQyS2iYW3MOVET5SMz9HqmqUhO7khUyDhm/MvG+NerkTQHX2f9rlLVdBDxSnkRsfWmeJGqpl143wL8yNwc/X1ydPKigWzl4cAR3uggeIvzS0+bx8cdsOjmXm6yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753760394; c=relaxed/simple;
	bh=35G84Ap+ZNKTpq/nfjN/20P3SFPs9cXfNX/zljLF7qw=;
	h=To:Subject:From:Message-Id:Date; b=nBTJKjSHua4x9TXfn8mkQfUgjv4HRf3kuBH7HbA5LuQ0S6J7dGD4deJ0nGjIjfpDiWVWKEnNde7IoxGujA6yMWOO5uSSUf/Zao9BYQFb70K0p9j3yY1cjKW1UAbhCaXfEQMImU224ZNCFOOQNSBFjLHvim/H2XW1QD0m1q2G3Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuQ8hHNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuQ8hHNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B80C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753760393;
	bh=35G84Ap+ZNKTpq/nfjN/20P3SFPs9cXfNX/zljLF7qw=;
	h=To:Subject:From:Date:From;
	b=AuQ8hHNY/97Q+dYBV77WB4El/GSmy+HP/OUDYRLS3ytfQ31OEXttPjDdFwKQ9hBeq
	 RBRwvDnR5Kh4jSrcax2GNlCXhbABhXf5cA/w4JBr0sgvjvD3NRdi0WM2x0F4wxlMuR
	 otMgDHFU6rZE3Omx1O8mVw5fMq6N0f3Vd0R9L+eS6hzYlV5K1Fx7rMgGLulbgZlUIE
	 55l/PoSvOSPj4xPbK/ioAQMxNqtcWzSIWOuxNlP9xJO8I1tTTt2+YEGEodlPpFfh1M
	 4h6blga3gTWa0CEgAsM4+hvxlz1fxYnvlBrgATRGHwq1ciR2MRO/5hOlsSEEQa5bZz
	 /FKnoynEWnr1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94098C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376039357.23873.412171289118945119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6af5061a5cd198ecab4eecadac1982f7972756a2f2cc1b8ab62a1bb12f37eb
Date: Tue, 29 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753760393
