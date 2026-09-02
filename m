Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7211437880B
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788307234; cv=none; b=KqoO0HXA/L1REFL4zBZnV5aN4sARvt5cFc7SXb/is5k8sgouPAKVYX2OwlSK+X1lUnICX2j/IRG90oZKdHxUPo9GXgdLHYwTm6H7YOYFgLPZLuQcMuZTVNQ7VHy2woqKSz6N2LZ5LDg9Ui4tWZ3nsSZEQZCO6d2GlDySr4arE28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788307234; c=relaxed/simple;
	bh=oU+2ra0bo2dxJY9zBi1OaZj9ybqHUMj0JWmzqqhDDW8=;
	h=To:Subject:From:Message-Id:Date; b=C3B6YOGkNRqO4RWVNq4j9u2qka+AglGWfX4TliYMfhaqXzz0bjGgGzrS30LFt0Hr50UEGOlrpxUdOIRPiY8K2VdpSUlj7tEIXD19rmPYsfOO9kLHUa7lf/6WtL8DkG/i6qQ60iWXItrEn7uvbJ4BYTNPCnXvVfGQ9+Vgoz+0qyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URnsv7Zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URnsv7Zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95A3C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788307233;
	bh=oU+2ra0bo2dxJY9zBi1OaZj9ybqHUMj0JWmzqqhDDW8=;
	h=To:Subject:From:Date:From;
	b=URnsv7Ztyu0EAIz60TEnohAgDGF37EkHDC3+QRZ5tSUiJG1alF24fq3ROLr2hWBcy
	 OPS3yBgprXF8FjsrLSg6KCxKbxuzdA9Og9gdv4P33w/S/XihWE4DhUtnvgXWLr1fn8
	 G5LYqgr0p5ZywDqcmCQhtR5Ebbpiya8aMHuwstjyXb/7cO8v+U5o6rTzKYW1bh8C1q
	 SEc9KfIKnlA5Zuc9og5IHff9jZLO3eu6JcyBMtokF3kKefpfh42AqB2HsGNArFSp/s
	 5ecEpSKQN4ZeQp1gkMfWjxOi+urfNX9L6Fl+Q3dyYM0o3896JSgLXcf+C1JNImatLa
	 7SI6jxuGz1y6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA30C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830723369.24882.9445981640225698745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6442197db9880bd9822f7b96351485d5f4011cf04d4ca7daec50595cff7f191
Date: Wed, 02 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788307233
