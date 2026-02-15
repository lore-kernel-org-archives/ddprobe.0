Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF61A136E3F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771134293; cv=none; b=hZx1T2xgLN3cEJGL0liHc4fQB/TBZzxQjeoIxyBLiJU/KDCGZxq/HLUo1H+qVKNS7spdFy+xPpwGbbSCjvhYocgCcvNQ8EgFAK8sofYHDbzf3wnE3ezilpI1QiW7XdHj/+6qOdoT2b3Mv3rPHebeeCwIgz7PW3hkRVPZybNigQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771134293; c=relaxed/simple;
	bh=1Uywuf7u4NVXJV/93jlju0vgUspVwV2RbzfGlsV6B8c=;
	h=To:Subject:From:Message-Id:Date; b=h+Hm+wfktarcvW9hjHANNmqgSQznfB5Dx9MUlf5SuHDEv+M6YTFvwG5uGrj9qjz9Sn7VCwv6uIZYz/sOtN/5R+B8xZJAy3gKmi/5PgEfRDGITtRjR/akDH5feNM+RguHhUqWHYcR053Xry8t/JQQhs2jyzyWIGpBbCBnHlOJKt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCWtXKxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCWtXKxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99D3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771134293;
	bh=1Uywuf7u4NVXJV/93jlju0vgUspVwV2RbzfGlsV6B8c=;
	h=To:Subject:From:Date:From;
	b=UCWtXKxemh5/XKC+dyMzp8zv/sc+aswSrXwQoBkbqjJynijOsJ+CUtHWFTfyVAs7D
	 HqVfopKcVwrZ6zrLeZiYFeRfD9w6fdZMrhcaG/pdmK2BUP9KeHcMlye+yhw7Dup6i2
	 Jc2x/Luypu5rvm4Gi3z3jBF2Yw7jrd6PwgYHHr5BEF2eBe29TU6lvCYJ5it61XXDOv
	 M84PYc6octHH4G72VE4LdGeyt4B5DgrJEIAGqTb3cdU/AQ+FJhYBl9mSMCHzHxtaRW
	 pGAYOhcz0ub/I3meQpRu3tIcr6bIFj2Tc4xF1zzfsgK9warbHzWS4+3KFb/iJDyLj0
	 tuMTXIUijKoYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E77EF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113429358.9915.5144515599522154415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fe60530990f400b4890c099a1a9cda81904212ae82df3705fed0f501976ae1
Date: Sun, 15 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771134293
