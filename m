Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0181EA8F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719643463; cv=none; b=luTO8yQEEUiApGeodIE0V0j8hf82mu/6nreIFXCvXBZzKXEv9dKQti7GJWHZfVWwFSBiwB3q9bnFBTslPYdy5Na/xf9Q9SBbURKMM+9TjUJkGsnVPqZErb0y1EbZY0ytSPoffc2tOq2vFReZv9R03eBmGgM1kqRtaxbHt+AkFhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719643463; c=relaxed/simple;
	bh=tVqUTiDGGmwItADGuBO8whpGVXsX+YBqYcxiYg2G//Q=;
	h=To:Subject:From:Message-Id:Date; b=ex9pZIl2LXeM8b+yFjD/GHXJgGmZivbjn4WVxybKkgUmuo/KW6cijNyTwlMoGXlvJeyTA8Wq0/qqRFOBKRVKeKkl8dO7w0CkvXA01FztsWwnbLTb9me9ryB230YjxErY2wx5yoGfRecYXEjpw5mI0M/uC8akcLEv59tVrUdJIMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcqO7c56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcqO7c56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBBBC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719643462;
	bh=tVqUTiDGGmwItADGuBO8whpGVXsX+YBqYcxiYg2G//Q=;
	h=To:Subject:From:Date:From;
	b=WcqO7c56kHRf17QkrK9/sJugwI7bNjpBHSpXC6NSCBuhEX/gEBkyFh+Y3Xt21/CjK
	 pfhM3G7g32hCAm61U+xs8bNwKZjsyeOsnmah6Cz3HNYpDNJCJ8lpDk42uqiNZWxEOb
	 VkVjRg95iQ1rSVzczzx7lwmlrU2emmjo3tpkUCIGxicWFWRrYvNtWf04/gGoIGSv09
	 +5c2wrA35qeenAJXO7WUYRCAv6OY74Tt8jVdx4uTX4yY3i4XZMB9vZSINW51sV9Haf
	 f+q1J0xCT9Yaq6blPdfAq5Ndr/CBbG9XYQptIc+pV9ucAz/nOpQOxe5bi+bJKb625e
	 ubd9up1GpVsPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C677DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964346277.10742.6326342016955007273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0612dbeb2e57eee1628e9ee1d1dc81a327917a9121b5022781a7679b1e1fbd
Date: Sat, 29 Jun 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719643462
