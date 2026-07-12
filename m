Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4609D1A680F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783844314; cv=none; b=KnNod6C0alNaaTMWrv7S/1zDZqIz+YhNy6ivoIvzKYZw3icSyz4toox8eVjZyvL7P8ANwzJ8vJ9peuAceMiqhXL+IIqgTLVW8DBFhSin6YD4L1mxEyhcJwvK/CE3x88/f7CM8BiIoVqcbvAzUuYIor5NR65+U3Q1PBvlVWUyUS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783844314; c=relaxed/simple;
	bh=bPuSNYPLC0Zf8vcV8Zq6YQQhnU1XtVA3NELwvbzKAoo=;
	h=To:Subject:From:Message-Id:Date; b=B/TlKmD3+skhlg22rGfi9Q3hM9a3+H4VsR0QeH4j16DEbuTtNLt7+sdBm8LbQ3ogTosTM910h6Y0UMcYfxQkxIFjqJ9wQwjsAM2BHt876oLk1PGZjxxrkb0rnXgI0BWYHPqiDiL/K692+7/HUZa7jL1bb0VdaJeUd2E0Qz3/0ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRfaR98G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRfaR98G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFB5C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783844313;
	bh=bPuSNYPLC0Zf8vcV8Zq6YQQhnU1XtVA3NELwvbzKAoo=;
	h=To:Subject:From:Date:From;
	b=qRfaR98GDfFj8zttJwGcB3mEYUGmyUv+QrJTwkgmCok/YwaeenkdGOddVBXYfabaS
	 xFUPtenA4sd/UMhhGHuk86vxfF9DJzlOdnVLjQ7VYA5Fjyf+5yCJCpyou5CR6kzUev
	 1h9ept/qRWzQ5EKK0QmvaprFu7JFWD1//ctbRI+muiE0W0Vj8sFteWEEozh0L0wrRG
	 o25ba4ELU6Ky/NcGZa2QDzigNua4qtT6I04N1mlbwiEMa/9zLJ/QhKPCXZStRFXZIi
	 nkwT9QWC+puIsth7YU/TQPUB6ZJTsgcAvKhB31juzBBi/G+o2QZsdwu+2KJPEtn/ki
	 dDAvW2SMSLohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD907C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384431368.17560.4689127208230733700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85adf5bfb7a7d6184f31b5ab09284c5d60dcd4b6edd12e737fa81c66ef8a92a1
Date: Sun, 12 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783844313
