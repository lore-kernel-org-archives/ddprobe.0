Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20D8186284
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753694393; cv=none; b=WpKDLDbaNBZvY18U9xbVsSjtLEdCSZ9ksEts/r3aqA7v+czQIYri1L4nh/MBsQUMNxGi8Gjtu/e6dum8oxLFfMpum6zGS/Une3GOniUKUG24CPiDU8fmOtWy5ilY+QKRhscWxrHy5Cm2CCJw35Kp7hBjvELd/08F/Dl1z88Jiqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753694393; c=relaxed/simple;
	bh=8x58UiZcUE+KWsUykqwOh+90Lrqd5TzaBm7YLLYiOMU=;
	h=To:Subject:From:Message-Id:Date; b=lGWTxZgACG/Dv+6gLfWeoaixzBqrYMIsy8Mk4cag6CV4aUHnYWI2Ru8i/X/Begt4ELC7MVJZDA+SXgoc/8M8toMIHPD+iIIZdPRX+yCO2PhayvB1yRr0Tyslmb9ecVsK6MQFkMQt1wlKMaFnGpb/5NitJbasMn5m/ztnmtqHBIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLVPNFw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLVPNFw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C99C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753694393;
	bh=8x58UiZcUE+KWsUykqwOh+90Lrqd5TzaBm7YLLYiOMU=;
	h=To:Subject:From:Date:From;
	b=tLVPNFw7WjGZFBWbsAaUPn530Z3u3Fnba6YR62x76eJTatzniKztQXtOS+HzvJVQz
	 LarXmDVF0GvQY654G9KvmKr9DmQFmjT1raUDhOOteQH48Xw5Atz+YWto1YvfotY/Tb
	 xo09D0kfz0BzfZy6klwTaDl9AaaV6z6xOXN0PIz6VyHZhDC4R0T7d54nQf5axlNRmw
	 VoLQ9+/WyV1wOQ5Vy3TSZNU5D77Zi3hSN8BJlZ6E5Iuk/7GCFzYea0thPBo8kGnNPj
	 e6+iNY/jLpdFY1Xr/rqVrSgqFwn0DvnOW8V5iIYV168xVt5kCEBM8E6Q/pkVAKWq34
	 3ELcwA9vYKMQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C85C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369439360.5007.10123720564603586759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1ec07f9adc8132f0b6f47486b592cd7223aaf918dfdc22bf6d1ad9945d5397
Date: Mon, 28 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753694393
