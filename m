Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57617175AB
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734144354; cv=none; b=Z0pQuTkyk4G0F8pIQiFABw6u1ZCAHE/PKdUB4TtXJWNawumy7Xg9q9xe2oBznT8it6vsA6C3fkNcE1bekMNM082705ai5fdU0c8o0gPT97xQpjMG8Udmioa1KyuRMKzthK7BLu4/JyqylodTtC40Ka0JKmJTn57tuHmzpMk8nug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734144354; c=relaxed/simple;
	bh=1Wbd2ZH+NXwPy9Tafq3dHVALZJWdb888v569SMvorlg=;
	h=To:Subject:From:Message-Id:Date; b=YIxw5YFtds6rQ8APCiFB1IGmt9sKXPy0+PSOC/HUkqdUnRKb7f2cHWGzVtmFu1tQjiQHOZGk+uLNGTj316DZPq+0U21ZsIap11bDcB3cSggbSkOsTsZOruulcIniiumrPj9eeP2od8BMwfXtAlQzJPp/HUx5gQqs2RbN4qO5sr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKuXuNef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKuXuNef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDE0C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734144353;
	bh=1Wbd2ZH+NXwPy9Tafq3dHVALZJWdb888v569SMvorlg=;
	h=To:Subject:From:Date:From;
	b=jKuXuNefT/yAm4tLF6e65jLpIk0YoAfsPE1OFHsz4x8eTxT6ByHLXGEAHQclcpF3L
	 zMkmDhxgV5xegRlVeiMsHiNPRdUg+Y/lGlDUsK9cgq4hWyrIVco6eQUF+eUeifYfph
	 /5TuteRLISSaJ7c6Wp9C/u5WK0G0TTbe+00eiOQpqOwVhFdLxfKYn3jSpTPg5hJOOG
	 Z4X9vGJFieg7rQXCxVQQKY2WaVR9Mx8tiHZptd3NM+6KYEg/6r9u7yv1akiH5W4QP/
	 LwM0K1bNPG3eD37lr+s0LxV9W89RyuobT1uFsu3H6gy+cSBe4O+2uPMWnNA+IJM8Yx
	 2oS8iak9TB/ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42DCE7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173414435363.17643.7172320648941099082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083dbebb0e56dc56209896c25fd85d77acfbf620c9657835dc8e8d6b654d7e87
Date: Sat, 14 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734144353
