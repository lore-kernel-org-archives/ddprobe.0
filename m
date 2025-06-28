Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ED73FC2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751090394; cv=none; b=Uq9sLJnFSjwxhh6c7NKe0uq3B4Ve7Jnb+QDJwQfgNC/dNkZycG+nsByr4rOzRvSi+F9aoUHzRXZTe9wCbqCqk30b0cS/cQw4d4x4GGQaWKjpCpptLxXR+WBbQk2BgN4Yz0HaVyETtCAMJJp8ugOu3TvBaR1gmom15Pz37dUj5q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751090394; c=relaxed/simple;
	bh=EUGONpM9x5OpK34P6oY0SCBt+2IEwULhjKiVyS7gJtI=;
	h=To:Subject:From:Message-Id:Date; b=DaQt+5fG57gbrm0WZIbPBijaKucJsQuQiFHaBAA/uSSROF+NJy/Z81UNQHBNuDe4+U3aU5YCVP5C5SbbRW2TQEgRW9R/JTQ8/d2WwQkDV6ocwgJrMH9/mwRuhv+9OMrLGPN5PSJ4tuZnmLeS3yNIphHWEgCGx5dYA8Du0uMBXBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOHzJ0AR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOHzJ0AR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9574C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751090393;
	bh=EUGONpM9x5OpK34P6oY0SCBt+2IEwULhjKiVyS7gJtI=;
	h=To:Subject:From:Date:From;
	b=EOHzJ0ARH0ixmc7kkejMRYArDJPp6pMD5D6BnKERDOLNQdZ8dEubvBxz2GPvlGvYf
	 HFKFxB5zL4BnvZzwLuquig+JkQTrez2L4ZiOpaRYp1qU0lvYzc5LCAU3ei4/z1uUZF
	 250aHSmiknMkOQgN6o0iCRFV1Dy+LwO/YAk8OkvczwXlggl9uZ47X03WMpi+8vBjf0
	 uV/kHb4JQq0MSsHQxs6LwvPdoGd6xvDb6+1//vIXpHRwd1QQwBS9GJWyMPOI/8OUpZ
	 4CJhvmgtVHolxLCyq3CcLlxecGB5tI+h/uISdK2jyJ9HwDjHGhHqFSLRyXIg7jSYaI
	 Q73989BCz0X5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F0C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109039358.17041.16993587268815361913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8978cc51e4bbb154670365049e5227e55b3d0168138f1652ea57343d8e55604e
Date: Sat, 28 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751090393
