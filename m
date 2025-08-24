Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5489C221FC6
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756069194; cv=none; b=YlIRHerQubJgSeGouCven6f9nLvZwdp+RD0VeWdpkAjPsqmH5NnNx6g+vxkCiFxEqF7mTROlY+DfeRoAuJ8caFNyA98f6uxF8LGxPSZMRRsxJabpVe5iFhXA4UoFCFGFl1eJIokPvMoJWmmQLYF1k3QFif9VrFGFZQs1rwO8ny8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756069194; c=relaxed/simple;
	bh=EvCuPFqUs0LO9UShpt1/i2itcwTgJlD59WHa2HEZLtM=;
	h=To:Subject:From:Message-Id:Date; b=DDAARAMjZvfeLgfmbSI6MdOwVwVeyvhYjK5Jo/DqBV74RpjdL5N4LXS+Xq1D8ZHxd/8CWS8CcQb42XvqO+g73mbzybhDyzzNpWB/GpbumdrLTk3XMgzwF5WrbjCMKkIq8dc4kCX0ClJbMlSLdAqdhAW1xBp39EuhBF6iPxW0K5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRak2Vhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRak2Vhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9972C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756069193;
	bh=EvCuPFqUs0LO9UShpt1/i2itcwTgJlD59WHa2HEZLtM=;
	h=To:Subject:From:Date:From;
	b=lRak2VhbT/hkMxIZFVrmaN4PJGlU+tH9kcpdDjErT8AVFGW5ul5ntRt2cjVxgDF6w
	 M3RDv4r391/1TLWoh0pm1UvLIai2g6r4INGqJ/5hShniuoKULQhw3yasdf8WHRz+Mw
	 nnAG3sjiyho+1eBZ+U6/8nXKoa4OZirPceWzE96q31fO7cBvPaQdg9vQgaAIdRGZ0y
	 Ws5wanyfdZ+SqKwYn8OyitfnaLpPi9YFUhfzIhgq/ZLy4Zf8GhNTlIsx3QI/qGhuvc
	 R6GbsGo62vLnPblJK9sbnjWUhh8S/9BwwM7ha8K8dyP6kM+8faEa55jc6fSpddMBIl
	 fE4azOJIBPv9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93633CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606919358.24362.6421782576114255862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48dc9217d8864e55e838b9c1e07bf78d3c9dd3254b836b861c3aeb0e698c54e6
Date: Sun, 24 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756069193
