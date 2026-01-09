Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2882311C35
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767971034; cv=none; b=uwIsFu1LzcX2utqQio3FNU7yYf37HgDxqq8w/cQazvbqSr00CVJCZW1ZeKrUAkottjiL1e5dgh2TLCzm3sBAf+/9g1z4gFK4mfRM4aGS7WsMXX2r/cohehip06BI3x6eQ+j0EvRiXOXFS2nS1FNVYXOCl9W0OEnbsMPk1oY0qbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767971034; c=relaxed/simple;
	bh=kLo4bnADLp5yaghGzpxIsAf7VAVN8YR44BPn9GjBr+U=;
	h=To:Subject:From:Message-Id:Date; b=rOFnTNhtxMLhZVhbgn6OI8JwtuuF5yNazXjqbb4It9rWtDK7O2186+ID4SoErg0sFw9iaAKzWK9UdAVH30jFd0/2caRaye6r3VFOn5z8kbNVXORoO9ps3OQY2e+rF7mFTNICyhsH5rGxilq35YM6lhs7+ISTTGVeM5ztJBSuPzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjVKV8/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjVKV8/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBCC19422
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767971033;
	bh=kLo4bnADLp5yaghGzpxIsAf7VAVN8YR44BPn9GjBr+U=;
	h=To:Subject:From:Date:From;
	b=KjVKV8/PVgZGvRU27cqXBbWu/8f2M32Uiasgk0Kl7GgzWTJMFtQMjj8IVe1H+liPD
	 Ay/EeZKHOeNACpV87X2HwQkerqlzGuzdcEWw+CW64OosgPGQlh874HgNa+28FMi6N9
	 QTwDrjOe09nd6xZkYiOQcFHt28kA7PpjXl7r1vkWptaBRWIpxRJhf+BTNb3yvpfPa+
	 2cq88seFTEXy/DyVWkYWNtYDd7b+5OOh5nJrwcha25s2MxLQnHlO//xYFXXvCl7wsV
	 czBC4u25sGTLswucaCnkHJN5WYszat+rNhk/NSnRBYObro+utqiz9wzC58hyu/nBxJ
	 XX+2OWhq2uceA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96179D1A63C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797103360.3975.3804743773604498900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11612219e772447fdfaa1ba734525eb45e9a2728f87a8f0e032a23c20f13bd76
Date: Fri, 09 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767971033
