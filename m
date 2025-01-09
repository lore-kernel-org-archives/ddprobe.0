Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70572040BF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736434553; cv=none; b=DJolzKWnVQhJD0C1FPK+xh6FCHbZf4D2LeaRRxZk7a1fh76PEBixx05v3qlxGp8iOAolqs8BWSHlmHTOqP1K0fklrJKm5cFu9m/JCJeG7c818PRHdGpuSQMDG3SfMXUY1D+oKowGtrc77R9GXti9fL8g1QddM2gPh/KMyE5DoCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736434553; c=relaxed/simple;
	bh=DojwzRWPWA7/2L17ioIr9ZkwtCLgcGBdSObyrTJQj54=;
	h=To:Subject:From:Message-Id:Date; b=jWGzoBj5IEU7dMvSZFeIZm8mcrwJ7QgfDZIodTvkrA/8X5kVUx9iUIP0edJ8ZkEP1MD93WaCuW1sGhVwYqQwArYa0KEKY94G1wztRFg6A9x26u+HTMwmN0+Do1ZyztEr47H/urDGviHGaYPL1eSup3Qu3+SPJPZcluyeIFWAaOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/yqFuuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/yqFuuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A321AC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736434553;
	bh=DojwzRWPWA7/2L17ioIr9ZkwtCLgcGBdSObyrTJQj54=;
	h=To:Subject:From:Date:From;
	b=Z/yqFuuFlOmisJfb3jmwuPR1x7wg4cVUkDUkRMHg5hBS0BmVesPCOnemw3nP1SvKv
	 cCOYs47hmx/oDW/HCkdlNbuk1mlBhpkeZCdx4lmYtCwC+N0A62t5Fh6nkaf/E65wyD
	 l+bbKk2WtrS9v2TRM1M6lxud8GZAMapOCDeuLfnYujC1WBiDvmH7sMMFa1pHIfWpRi
	 bAWhqR5+GWxQXMYLrui6fkeDHQfB3OHW5xVXJdPTygNZ253tzK3PCwP7DeeET9Yij/
	 yoJutLxaEaHNWqAtlKPrGfE5KeWxYD/BlQQFfVcY15IOl5XZta2WZktv/y5SQ841NZ
	 hVFw5goXw3oxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93049E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643455359.26187.2147559585509960224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda3daaeae1cfe4784498d383881f7ff62e8dd9889ac6f3b1160cf28debd974d
Date: Thu, 09 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736434553
