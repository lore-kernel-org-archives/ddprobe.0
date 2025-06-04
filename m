Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D322C3251
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749014395; cv=none; b=Fa/4pT5o0rdlr3w+K7guicm8WS+dcZpFW45Tvlb0ipw8IXLNA7Xm5uKaex57OZVfnREWZOKZQihNolBeRpbzjoM5rnp2ZTPs5LcsaQh+aBRefbkJ2/S4DY8PXChqatUeg4TiQgF0h4PlzcRxlVp9WeVGVX8w6P91bIrtlKpBmDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749014395; c=relaxed/simple;
	bh=QmtjIze2A/7tWZ9eeOeo/fO/65pmgoujLp/jqFWRJzU=;
	h=To:Subject:From:Message-Id:Date; b=JY3YhwlrwY1J2wYLm5KuU9Aw4dRH3raxsazerq+wRGg55OCVkDCTxcXW2/U3lEsNdI8OhFI5TliENlZB2WvmdMzFrXtHjVdNFpIi3mAMdXawVlZMnA0UzMKsQwxhNZK0Vqswyn4DJ6bMFs2FdnzYZpjuV5fXfzWxkXVKO+T7vS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVxWvs2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVxWvs2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B117FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749014393;
	bh=QmtjIze2A/7tWZ9eeOeo/fO/65pmgoujLp/jqFWRJzU=;
	h=To:Subject:From:Date:From;
	b=CVxWvs2DNc0MwB6AtDX3rBXWH3Nm/EObovZ+F/K3fFHlJBI+CTEm8r3K3w019yDdY
	 7mu63tTTmw6GyjREXHtpJ+4HESrL3W9fAHrtELc+L1wtqd9C3CM3m1274b7nSMNKhU
	 ib0a2LFIHF31zR9vn3Fo6tyOL3zWAf7JunUS2NjB9wRMcCPHh/Tq0XlmQae1BZ1Gsy
	 Bm4+GU+H9v4TLyaq1T1Feo9iLwOYPjiIR7xeHIrTXb0ylzTKEBRrWe6xJcC9vLwNs4
	 Y/9L/KmsC9EiOU8Xawn+i+HVjdBRFHjQq9WiIaOXareNwsfS8ePvS9BOp8hbZP6kWQ
	 BRK9/EEdax64w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5BCC5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901439361.21412.6099418775842486550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cbae2f86085c455e2d3d8148abb43c02718d6b23c0b06a8d61b2a74f36fb9c
Date: Wed, 04 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749014393
