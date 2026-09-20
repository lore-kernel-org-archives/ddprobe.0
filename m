Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5731035C691
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789944034; cv=none; b=RxpIXe99rCA3PcVpehV95HmJ0nZLMpEiMTE+3KIwgYSgSSNhnFsaDgqRDvVh/az4koAKZhvb5cdNfMQfeB7XK+WvVgwcpxIflcQ5SBWDe0W5YnlZTztRZ1kvZ/++muC18p0OgBHCC7ld1srQvpDA68DHFoZRs7McaVQwOpXtiek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789944034; c=relaxed/simple;
	bh=qM3U8C+Lq7ziUDJtDpgHPT0knkt+JEyGwoEICt2Ie78=;
	h=To:Subject:From:Message-Id:Date; b=QvLK8nbztOCLES1aNrt1VP6mlYcwrbdoPg22on8m+4BWOpWc+4eo9BzwUgZ1hxX6WPxCKHsUk89s6pUxkkuLrEMbI84C/52EstE5Ff295YAWDEQ4bkrz+QR4K7SQLLXvHe51BPWem8kajZQsrfhyM4c4kABiMd5YPpHI6rUFQ1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMkVaI7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMkVaI7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D152AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789944033;
	bh=qM3U8C+Lq7ziUDJtDpgHPT0knkt+JEyGwoEICt2Ie78=;
	h=To:Subject:From:Date:From;
	b=XMkVaI7qhq0xfAFYf1VI9PF8Jqrt3V1pe7Yeqi7NeypptyblYJ4E2JducLHNOvCVt
	 +7shDC5kzcoX21NXgvt1oOy+pX6d5goOULxavvPpJjv+bdAimG11kPyI2zg9rzvOmA
	 wzN5P8uQRpmxISCP4DZhrjE7rO6HEcCEmoyrmiLzwcVprbfkgeEiASSNUKJgG23cst
	 lTK5XWrPejDm3vjqER0EeyBBHWNgO+bHITWHN8Ee5p0t8XQyG05H1jz3NwE8U3hwPc
	 T9RoKb+Y8ntUZaZQ4ILY1eTL3HqVqu0meqretLg+bKRe19yUaRDLAKY+vTVsTO9RyD
	 sxUXYBKOFswuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB326C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994403369.31380.6942431736559455511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1a69e44d1987d657ff6e97873f5e267d2a6e5bc2f925007bcbc46eac794c0a
Date: Sun, 20 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789944033
