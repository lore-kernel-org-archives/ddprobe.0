Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D253D4DA9C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789648236; cv=none; b=bd5r5t/JndBE6pHvDZBIRuYYgJlETvzps1H+ikcO48hsVUcQMcAI8ZfvagJg/ShKl+uKsz3+wLq/byqMkdwfVo5i1NULFEPKHBwERE8TfYYSjxuZhTNHeV1AADaMjqSQkFbmHtX/P6qHLm4IXKPYf0rnOAYwwMpY6jCDh73dthM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789648236; c=relaxed/simple;
	bh=rYlxKwo/vwMfFBUFCnHVvuLSBq8kadRZXMbhW1LFJsI=;
	h=To:Subject:From:Message-Id:Date; b=PSdyYhCPNgnHzuSbco/K141uvb5alfWUOM/LQvrboY7PkgUkP7EIGnmg4f47oLpRsC9xNhKRiwIOPWs/vv/jiNta/T6Ah+RBJ9Cleg5vCpTdntGjPGUT6JfYiAtx21rCrwLayf6TqGqZ5vkOJQdeTffK5FMSP/vvnFLVsYgnW7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDPI5Rj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDPI5Rj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6360C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789648233;
	bh=rYlxKwo/vwMfFBUFCnHVvuLSBq8kadRZXMbhW1LFJsI=;
	h=To:Subject:From:Date:From;
	b=sDPI5Rj37bqZpMdkxoq78atYrTtq8QRQ3Z2EtGFszpx2ohdCDarFtoNVCqR6qXKws
	 fsr4PiJhbLzmc9zJ3JTLEGEcrgyQMUKsrqG8Lxz5mPU9sdKCQggGRmzsjz2mlBHs2w
	 1SZfEY2bR91bYM64xr3jvabbfVBPz9CJWZ6yXQJJvchbvU97FdhcR5px9gZPdTFYFk
	 bLuP5XUrqHxe4BsTSYGw5RvO9EejTYLj6g8G8oRdD2qSTst+XIobd95VM1fcsg6rkQ
	 rLXPuIuIFg4DAu9WnLmjG0IC7MvpncI1IzipGZF+WHmc5zBeydEUlW5ZfNqf8Ux9/p
	 hQi5jXgEp3rFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9994C982D1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964823374.25285.8635412999717588595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a01ae0f0465895246c8c60ba9c6e8adee065cda26e641754608a95ea694e4d3
Date: Thu, 17 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789648233
