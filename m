Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352021EDA12
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746046194; cv=none; b=hZFkLmKX/sYARQWIsxU2PI4AZXHRjhD2Ln4/ysdn2c/tgEl7DkN6JHwE3ubqZbDFZdpbc4HE6DmQzjBLKg5344wKOjfc+z5yM4+s55tTRL/mMP6xUjKRM4izhZ/V7nLgwmwYXafLVbpKnTVVzSmEvcMhcypyfESlAcqejT1cazw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746046194; c=relaxed/simple;
	bh=h0RYjGCTEJJDT+1QwxtIqwAd01J9RGGAfr/S51GVI38=;
	h=To:Subject:From:Message-Id:Date; b=mi9hHi5mywxAOyp0Zjex2JULJbWNUkjsMD+WhMbwFy4hGbnRYt/F7HJMkhm393fl+mZ0FZ6Z683UdnAwwW745qz4Q0j0f5skyAAba6bhqcjGwx6BVFnKeZNSv5XG+Dav9O0uY0k5yLnju23BrL119X7tcpdPwcBOGM8GCgM/7RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reXglaca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reXglaca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DACC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746046193;
	bh=h0RYjGCTEJJDT+1QwxtIqwAd01J9RGGAfr/S51GVI38=;
	h=To:Subject:From:Date:From;
	b=reXglacaZG4Z+lAKn7zpSoZvALU2ZiDHLyfbVU2NxmflBniPPUyR10LrZzFOUmf/s
	 I1vjn3jsUeKQSuL6KeUHgBcUnwM21gocorM52gQkNKEm8cBNBsmVFyHeabH82JaGMS
	 Vz4xDlPyb8P46N7JHO8rCk9dXLvVeXh6sUQhk93ioVSoR8g05vX0OH2roA1Yjhv9Uz
	 ZzuV1tcOvYgMEwsZ4lUd9Nt5WkTEQIKnCSqDx4CsdQOnilPJpghWd/deI84h3SRGKo
	 RNAD92427WC1qy0oQTOCVdPm0v2iFYg2XzRvbpshmndc3lgztjZpyT8lnwTsO5sXhO
	 Fneiexf/MC3jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A80C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604619357.29866.10940477145522381003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd366b1d5d4c188e0ce9e5af51a51a289300ff5b069e3da7c7ec9a99446aa353
Date: Wed, 30 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746046193
