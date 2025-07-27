Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B2913C3F6
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753625394; cv=none; b=Fk1HXDme2TFR6foJy2DgjaEM3kJ06LrRbXKFTlCG3vAmNPO4p0bL0NksH639Or+RRBo9/1fUjsME02B92KKVnkDgX9LaGi+gkx7UYhDkDVOXsKBAkjTJC84GNkL5MwyDElcLK8w5IOm2JhQnnYnONKHOzUCt8Oa6oyGpooD+Nhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753625394; c=relaxed/simple;
	bh=rxifAyTGsEpnIWK3PGZIvdRv8JGCnHWXA3rNTGzLDuU=;
	h=To:Subject:From:Message-Id:Date; b=DZZqIdoZynZNghZE4t/d+SCZk20WG46ZXeadIxVA+MPnaWWLZIQD3EP3Qi5DfZWQHr5WtlskFQf1Ds5fNqIWDp7LZvt74MxPfUiWo6UJ68QYe/NjwUaN06C5P1NldKAJEJdyGAAfoA0zy1vg7kJBa77+Wu5J2QxBAaqbqpBG1AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7yI21ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7yI21ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A434DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753625393;
	bh=rxifAyTGsEpnIWK3PGZIvdRv8JGCnHWXA3rNTGzLDuU=;
	h=To:Subject:From:Date:From;
	b=S7yI21exu+2sHhFrjTsx9z2dZqQyXeS+bSxB2dmw6twcHe6aSEomzRUNYlXxc4uWP
	 AAGGn+cSNHD5eRGeTvzswcgwZqAWZsW8OD0toB3ochK2dYRU9tOYioXxJe8FQnvHVK
	 vEWjOoH6nlmtDgRmMcwngIOlaXHbEznp6F3BY4+FELo3na4uYLGABi0rumJ3/MGxbp
	 rQmreFinQ/Rl3XryaOrMXE887jZk9nnrToBIquH8yNg1sT0g8p9tYtXjUy56PsCzRL
	 apCoZBIpj4P+LVjwlMsRbt9WVYKFDYbw7N5Wg4U3ujLeIz63JpZ6KgYr+AhI7CfkUR
	 XEQP8FGMeMQzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92726C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362539357.26502.6692493947114437625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d519a0feec8dbd12f4149501a43e1b8bb2c66ef40bb9d55481acbd2cca77afee
Date: Sun, 27 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753625393
