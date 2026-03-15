Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C05C1D63E4
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773534294; cv=none; b=qpuIJ7VxXzuUywZp9h2C65Gpv2LhuBpd7ZWYuNREE2sYYgacD3MgZXnkY+OCHp5NofU2u/wmHpgN474DIMZdYRG8evo97V/91dcOV7yu7bUiYtEGYXg+J3AB6CfJSkTymLPeYCyPkbwZ/RsG1LXeT9jg21vQm6aLgXmLAtb5HZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773534294; c=relaxed/simple;
	bh=kWcs4/cyquPAYwr3hRb9rjvdGrasZpKSQplGu94jzak=;
	h=To:Subject:From:Message-Id:Date; b=oxNfqzzDj6nVSz1ClThjYgoEMal/fHoS7k0Sxkk4ZnUCv5r9oqitMhW1uWwEGYma86K/VUfNOeAv/dxF1yK5AzmsZTJ+PLymWDa6yIjiiMEGzSx6+9KSJ++rYoDITDr15iH/FSdQ1ZuNc3FPyoNxHwiDgyv+0y6Z4YDT5lJXUeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdciDpbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdciDpbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CCEC116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773534293;
	bh=kWcs4/cyquPAYwr3hRb9rjvdGrasZpKSQplGu94jzak=;
	h=To:Subject:From:Date:From;
	b=UdciDpbFUnQo1pRgRgrD8dqKOBFB+8xnfpHzi8aaEzuvLJTgMT1L4yxJ/Z/2oJE1T
	 /o0G5IiFJ7MePJGjJsw5Gai2eOEnjcm7S1RfFrN6bvcc251NOIeP0ccMBNjKF63ZyH
	 ugXF8Qi3jq6lwZhJ+ioxQox5xg6+CHWPQaFTEvjQZHh8wY68phy1+3oWdS040ZAH9d
	 QkAE9hORVCcaTC1ODsfc+v7TSr2u1d1la4VK+VjaQl4/YWzRcXVFkVy1ImGQE1zS+W
	 cp/owfjZIjp93DYhcLfqU0yu7kpX/mpQqzCo/5DdmnaSrR0odTLaZLmySnJtR1XBwK
	 HlPe/SXisGs4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A4F10854B4
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353429359.10269.10538500107923223857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493feedbc044810f16069daca5c90e2fe94229828c2c8a73f123f558b7f8fee3
Date: Sun, 15 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773534293
