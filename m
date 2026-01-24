Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACAD5464D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769268234; cv=none; b=W5ZMJ96/7BEZkcV5QHGG7WT6j6fSBdFT1soEeyK3rqPy9hrSu1+9asoMQYE1ecyWwZMXngd/LBnLurOduMUX0v+FtGpxfDeG98U1ZRPPpumI3HzYugxH1uKD8plUgpONEPQVxNrdgrnuHWAq3zlfh3ilxoECXTIfGt0c47kOESw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769268234; c=relaxed/simple;
	bh=41L6KQ5w2xb1XdGizk2uIj4B/DkdlBw0A7sqiK1oe6c=;
	h=To:Subject:From:Message-Id:Date; b=UVKuOklM6190+m4DRqlQRWE+ScW7Gmkd3Km+3tb5XLJ6f6TruI123er2vPgiB9s++30Z7CsNmoIwjmj1yE5mK0+6MRtkhhjOqz+jyHKbB8hxLAdVriXTW54Q/UEWW0dw0XJKFTHvGCepD7ftbhRg8nJ6VyWYFlsuiIRNmKM0DIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq1rhsNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq1rhsNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A101AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769268233;
	bh=41L6KQ5w2xb1XdGizk2uIj4B/DkdlBw0A7sqiK1oe6c=;
	h=To:Subject:From:Date:From;
	b=cq1rhsNlLESqH9si/rU0bgZS6c7wKsW7T6s33+XlcwVPJ9kafMFuUXwWBd1MYbIwu
	 cgTh+novc0yAb4+BI9O4eRfRtCEvWxF8NqeZixLuBKTnLMXVuZlj3pOtv7Bcg7CuQa
	 kT68I2Xt73HyuO5dqURsMxWSM7g53sTwRcFw18JUs9wi3J5TQn/knUYeAH4/vqJFum
	 2gSRc87qvTqgORQgC0UO8CTrSdrPWICnfW4JXSrbmLNaM5RnwQSGIuY2e1KanU4QtG
	 N8c3rVN7tubOiHbVHNkzqpYU1aHXAWfhUwvidRY3CdFa2k3Rhhh6q6Jzv64BOXzH9k
	 4XDFDjtgsWSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD16D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926823358.11013.3335638095949824183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375657ce53492e1cb7fe0759c1a92fe5701ac5c7c5a4fc8982ec20edc508ec8d
Date: Sat, 24 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769268233
