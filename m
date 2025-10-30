Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1EE337BB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761809994; cv=none; b=PnoWkqt6pqAYIkjeYDSPQ1uEkEhoEBBZ4yWmlQKFg96DULtucL0o83lJRUuBA7Xe5JV1OZMsT4mLU3xP7mzq54+ZcHUnKW8zzvrYRcDW+a/HEReFovkIxzcGiWyH28BrFnKHhEqS9boM0TESbOtCTyIHmHIHU9q65xMQs80MKwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761809994; c=relaxed/simple;
	bh=kzn9YcDwkx+bS5gnn1l9v6EqOIIcQ3ng++bWaFtE10c=;
	h=To:Subject:From:Message-Id:Date; b=ZExqTzHylbpY/w3DJnxNIbURg1ZzICZ+CC9W+R0sY++6U+FG5ig4TLMt58z4l2NGcgHZZow/A7XX4GJfnVJ7cJbewOFs+DgF53DKW+CbBbSeU5a931nrHf6iC2y2F00ZTCUHLyPhSik4mOBJTHr4xGt1C5xlpbBl7kkrF/aIE7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx4iehdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx4iehdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80A1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761809993;
	bh=kzn9YcDwkx+bS5gnn1l9v6EqOIIcQ3ng++bWaFtE10c=;
	h=To:Subject:From:Date:From;
	b=nx4iehdpspvVfltX5hE74LzNJwi41+RJiGhySL5uRSeq3vsyq5zt6LeUXcZNBN4ZB
	 0m2UzrEsgzFSE73sHCNzgl/ZQyNAx3lObOn+MB6snm1E4HTVcgYZiMnQzNMcvtx39d
	 Roli7UBtgRZRvlMzr3CBFhfJ6208X7Ezqq+mbbDy7sT9lqV21usosIWwxi2W3uE8kv
	 XusuQj5ZgVTP6sx1Rs5c2vTfUkx+kkAVw8IG1e+GyWcs6HutlSPROgs17NhCH66KMl
	 W2jKpj5Llm0rtmA8rLusgNIpjKpIcAvuvFj4yTiiEBI/jMw8aPiMzCNF7JfoD0DvYX
	 518tN7rW9xYAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE36CCF9FA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180999361.11486.2578267899603105784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc66520f1c55eb8caccb5167e398fdada300bfb3357d08380cb9c57cbd1f283
Date: Thu, 30 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761809993
