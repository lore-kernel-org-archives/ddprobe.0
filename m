Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F79434988
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789109436; cv=none; b=X1ajujFW6AKahsLKiTwQLZfkcKeZdFn147eBzL9UvKIWFYUHjdRKcNl0/3sR+p7T0dV/uCX6Rr+o/8FZdcCjvvLqprV9dtdhQvX0DppRSh2hGbJGJKpakUt7CpGGShejlRN+t7lfiAeOEc5mmZhQXfWj8ce3R5TU0hiVJAd3w40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789109436; c=relaxed/simple;
	bh=jCC5xp1g+I4odgbeREMw1Q/6MHa3cxZ8GMbQQaD6V5I=;
	h=To:Subject:From:Message-Id:Date; b=UqlIxgjF0HyQ+16SEJgi9adxt9Eb4dCGzySuZVcJtSoDNbUog2P3pWkVY6MHVQ4Grr/j5xXa5idSZrzpV6yR88QNfqexxBCuit8xbr3+6qok5EaEfr4gnHMmxsZIpwkjtR1ty8avsb6Crnv+/ZfrMgh9P3sV6EnhWEWzLSmXwZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0xS4A66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0xS4A66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFADCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789109433;
	bh=jCC5xp1g+I4odgbeREMw1Q/6MHa3cxZ8GMbQQaD6V5I=;
	h=To:Subject:From:Date:From;
	b=M0xS4A66QPF0fA1M3OOpVGP/bd4MBsuaoo8wxNXl+02ZpauT/0bFZY+Ysnx4SYcP/
	 Kq+2ZOj9W0xbnVKpyTonkbwJZ/piPndYcNlsaPdMrQAO6X7eGJuIrY+HoQHlKaLsPK
	 sJjQKZ/gpSTkokjiGQX1BrfwkbI6tayxVf0nUm/OlFsNVNBlZx7tXsXvZiLKYNFl1K
	 6FuGIpqag2UlCwg3M/Oo0mVxp81YtEEMvwRNbenC4a6o8mOj1vy9ZlBJbpOnCmLZj4
	 Gben9EuhyJGFvsNW7t/ydLy9YH0m4TtE2blur6Kg87EGVwpd/xIscDGhb1oMZ+QhGI
	 BEROXP6iBVP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA921C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910943374.3697.13210139489934387195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0269fb1d3d9fe329e7016e1f4f7507d7dafc39ec7fb029731ce09d936c88e4f
Date: Fri, 11 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789109433
