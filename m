Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358DD194A74
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736099154; cv=none; b=G4hkkJyb+bPby9SLFC2DP/M0UjXu965B7FKKWGSALSCS4mw7AwVLIpBlF2t8qbVBju5Lgeum0mjuOirlqBpNjIMLqwRDMjj5zOeWPUP+aACBkWMVEpmTFZHK0V7i3YkKjkwxfVWUInHBH8DVwRpfYHwkzPTsVDjyuk8nz3TcIhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736099154; c=relaxed/simple;
	bh=r+zLH6qS9n+vIn36LNeuWX8Vf0pGAdJd9o3/g52EFxc=;
	h=To:Subject:From:Message-Id:Date; b=jBLBtwLUeKUcRtVK+2vyenQBSRm9HyJ7tcyUH/xMoHsZyNG1UkGM4HTdSjFT3Smkn9L9GFNkh3WRtm57jaTvVzXV8iQO8jEk61vmead4IuP/AcRT0hRP6MhpsMEj4bRtvoY5BRSdtAxRgnljUpr0z+KReZwgj1cvYPKwdm0rf3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJ7T9tv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJ7T9tv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEEDC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736099153;
	bh=r+zLH6qS9n+vIn36LNeuWX8Vf0pGAdJd9o3/g52EFxc=;
	h=To:Subject:From:Date:From;
	b=XJ7T9tv9cjsgHPtGkmLW8cSwupQTgeWKnbCugzum4TFPT18xSLHfex/cCnzCCYp4O
	 B8g4pJGuCRDASUNzkX0UbaZfSCkxk11cndSe2J7KeZh9vNRLf6liwZqr0L5cdVz00k
	 +Y/3SnIgr44C9C0HNfVR0c/klpKBOiVC1yaCACzT9oiLa/KzqWx+lGdyNjUcmKBN4j
	 zRcHJ/q0PlVUaHeFVq8EzjdhV0vd39Eze5OXKMJCBYbltj0MsuMciyfFmRoiE7NE6N
	 KP4emV8rV8qyfpfu51SAZW3b9UvpWuN4k3nerRMbpMeuKVrt/cjr6gRuzmlbx+/0bd
	 yv1Odtl5PGYIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98070E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609915359.17248.4449985436255305263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f6c1c6edebef4b93fa2fda912d311db6b2723e80a6a2722d7135c0b5b6e013
Date: Sun, 05 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736099153
