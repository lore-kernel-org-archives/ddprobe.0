Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D87F847C
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 03:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718162303; cv=none; b=G6CRGKJxIpF7y+s0HSOJiGj7gEL79vB2JjR54nKwzygOwGs7o17q/k0DD6J7ntHkwFoFNKEE5b/DvVXcrV0jNhwhSqg5XTZz95xfM0w3fIUik8gMk9U3YnOYV0JwXybrBVXUSJM1gKu2/HDN7ZloOf4Cfeqzmgyg0fCcGgwwunE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718162303; c=relaxed/simple;
	bh=uRsFmHN36plwG8BV9YVPQtJdhTFX98gBWcGuJRPjT20=;
	h=To:Subject:From:Message-Id:Date; b=guZFPx66boaJizKzMFfqim7HtS0PJpD0CbL5B3gkSNQo1e/3e1fwj8SNQI7utq6Wxq3T1Ph3FR16dBgyyXwx1/XvmuRHzlEPeKcqtqve2txx5ZMLOqonlfpLNOV4qtSzc4mPOKcL9rUu9wwU8ZP0T9ZFkYdqGheEAe96BOFSUFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7iq5VGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7iq5VGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF41C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 03:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718162303;
	bh=uRsFmHN36plwG8BV9YVPQtJdhTFX98gBWcGuJRPjT20=;
	h=To:Subject:From:Date:From;
	b=J7iq5VGViIJiJAjsUzYH6ZWu6ot4MyXjYYGAKKCCRqUfTSfYMgX0FijSAhjCU/D1c
	 3sFBHC1o/NgQvcwwHcWcO8HfuWXBEVFCBTibD6cpP5eTTIjX6IxUSkBY3hVyNZlKhw
	 Eb6wr2L+uRS4l+IVNKflfN6e8IusishWFupDxs3DZ4xdlaeZugE83jk6+Lr/6rFc0W
	 b6rDCH5l460sQBRMN8E26Nt9E5tEv1mnA8as9Jc6cxam/jRQ+Xx0kDpSnhCTPgysX0
	 oVTXOPRuCIq5J5RTXVg61ADo+l8Y68nZ3DSi0UXkEaUMaFGMkXKUnRWo71Y6+mJnJH
	 zcw5b9bzdTz1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4ED2C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 03:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171816230283.18281.1723355732613122458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a92528dec6f591cae85983ef11876c1e886517bbff0f53ce4f07bfcc1b2e8ce
Date: Wed, 12 Jun 2024 03:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718162302
