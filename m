Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EC01E4A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711816697; cv=none; b=pRIPqLtP2UM+F+uqMvZSg6GHNKIEkhwgCjrHQiIy/BKbR7Ljq2jIvBijByfwEcTcdgjls78NCQBvGdZFoD+UQWCeDc7NtxRkU7sEZ6GIlwS5vb4zA3vBMlh3UyE7lgW+WJNoehdfWNohtCKDVyFRUK3k3D6jRjUuvXg1eQ5yLIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711816697; c=relaxed/simple;
	bh=JJZ0Ip38nn/ox886vuU6nCQdLJ1kF5LOjivtNhFD5tM=;
	h=To:Subject:From:Message-Id:Date; b=niZgFk5+0rLM3elR3i3RfYeEcNXOfwrG6g7GZO7lyV3JLa9qd3iXLL73OBKAtMLDoZ3Q1vgEal+nXVWmLwyyutEV/DslUinSBYow/edn4Nc71paNbTrkTcwsbpcr0TggUETv21AsNaFq5zmwvdE/tg0C4ubYsjnr7t3UBNdjRDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBG4uDBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBG4uDBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B32C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711816696;
	bh=JJZ0Ip38nn/ox886vuU6nCQdLJ1kF5LOjivtNhFD5tM=;
	h=To:Subject:From:Date:From;
	b=XBG4uDBBo2ijFSf1PyUOv6hkx81cIpcj/S0pVrVMhK1WKIYAfBXZAyHnJfJuWcsUE
	 M96HpIWdlEv1ZIlyqpT12Q+ZTFAfgFrqztjPiA1FZIG8aetbiX0bUBDMwqpTxF2114
	 0FtjJww6q1Gngev6qQPOqpWPQuFch3+yZ3S9vdQKARq09Iv0yhXiSeCP9q4j5xPd6T
	 GKOUB/x4tRU1hOdY8H2SHXR0vjJMAwRaxX4Ma8yZ6N1ac7n6WY0LeQmKyBXRgwfngH
	 hYCPcAj4rK9B3yzcSVwwr1JHTT40SGv+CYvCr+bfkj86CGbPTtGW+EhAcgQa5+2UcS
	 BzHmFbj0HxthA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72763C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171181669643.4290.9320521495559454896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00494603a69f642e58c413d5cced01c7416aa38586496907cb182ec20bb3845
Date: Sat, 30 Mar 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711816696
