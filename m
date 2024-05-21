Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3986580BFC
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 14:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716300203; cv=none; b=ds73DBpx85JrfInjozroU3nwJQSkd+IvnqpBoa+/CIipKv6iSLHMw8lfi7Tt/+shb/SrTjcQROEJPAT/iGIajFmNB4aU/YRKmeb6bbT8g4Yes1V32/9c4pmVmehjX65mC5kKcNcl+Gf4bq9GqxOl8wroCJqlXEkerUPa/WuHNOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716300203; c=relaxed/simple;
	bh=pWdq34vKfdDkShvNk64j4fYMiY2yUkuD3kAbiC8IpFg=;
	h=To:Subject:From:Message-Id:Date; b=DYBkV7JPbdVmAHANb+r1aV+///n5Sc6JKQ/sUXFCKsxXidZj4sVqVsRyWGIpJw7MLTY3Cf8igzLZ/WLGZ4gGt0uErU2n79vO7AIIdRHJapGtCGtjYbELsxThDxxa13yfg6/lZZKGe91SFLG9wL9ox5eOzePeNi1aknTBE0mQfEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeGbvVt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeGbvVt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B58C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 14:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716300202;
	bh=pWdq34vKfdDkShvNk64j4fYMiY2yUkuD3kAbiC8IpFg=;
	h=To:Subject:From:Date:From;
	b=KeGbvVt54rbJMBSbZ7wGHIyBxAqrxEnAzyBjtXU86hbclEkUTsCibTl8+tnqneisw
	 JL6z0+yUyQdk0cLk6xW+4oRm0WJxp17mzpm6KdlK+c2rMMBTS6VSdFprmZNpnViokt
	 tf5NQ9cYEXC/Hk1FZuUlQlnrhT+EmM5Atqpi5rwVHzExwZ7i9k5zqUvxmhNm6LC15P
	 nBJUrxVtK0QLl9kBGmBqmMzh1mogsBpWKmxcE1FL6VwJTw3R7ZVwug8ZeaHLI99zfj
	 +nZ1LDO0jTQeku0IZrPar4WZlehm54UT7AhB0Fa28L6Jp6FK0TArpljnqLLrKv2oBI
	 xpkwvf3oGBmpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E61C25B7A
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 14:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171630020281.13524.8182563206816271978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3036abf9f12360f8bc7fa94b3b1dd43a7cfb76f666f0efa1210a65a65e41859c
Date: Tue, 21 May 2024 14:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716300202
