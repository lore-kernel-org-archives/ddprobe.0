Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550D117557
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718442503; cv=none; b=hjUvBh8rPvdmChEdTSQKROdvgFGAVy1ykaJ15+3Chen8QIXeC2BIxiEv6uirR1w/SqaeZ30Ci1tAi2goQX5zrCEOfl4l7UUa8W4KEvKU5VNoN856MYCkZdF61PvyA/oNUT86SunPN17vzpjMFdJdc321P7SzdwYqRCmi/q7aiTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718442503; c=relaxed/simple;
	bh=vdlLRoGeW03zrRc3+99/sYRhS25fa997u4A4lslAmhM=;
	h=To:Subject:From:Message-Id:Date; b=gl9kEmLjfrqdiJhdJeSrC4m8U0jbL8trPRm9p8mnVT4/VWuHz9o+jwPQcbG5PF67PUZfhPROeTU6eYglecfJGMmLUqaEhXaiwqIP44HnX8Q+FOvkbkBlQ8ZFYIrgoiBiGdBjt2326V37xKkmMjSXlq5K/N5DlUjIgGf18IbQryE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rne2mJkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rne2mJkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95BAC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718442502;
	bh=vdlLRoGeW03zrRc3+99/sYRhS25fa997u4A4lslAmhM=;
	h=To:Subject:From:Date:From;
	b=rne2mJkz9544toA2mdi/bgxArTEx6ZojZkgYFMCtfc09AqXGZh2d1sIIRJ6i/EgAL
	 XJBmVBxKqCfL5u8tmfasbjhuG9vrnHWsg7bDvlVCNKJMGyV4WCGkCfIsB+rKymQY78
	 sm19yCCl8YYAi+9BRVHWo4oZpPNGiRb5hMB+um6eZeCa0SE0YRaazhFwuVceRKcnsw
	 HlQ7gcBrlJ/Kj/gym6IAJdBfXxyLD/dg3tEZRNrXzvdo+4KP0s5MYsLKwwwpZ8WiSv
	 S7NCxQEn4j9mA1M2NQrskTFKVtIBFsugorZN9ncvaTjhpnwZgJpkKG/xmpZwe2ynYA
	 +Wdf+ZAp6v43A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3713C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844250277.32596.3413619410110856577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d665e25c1015f977e8c53a1b7d3a5f61d709c613c5a2890f8ac88f75f6e52a5
Date: Sat, 15 Jun 2024 09:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718442502
