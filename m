Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225037262E
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776439054; cv=none; b=W1qkQeaC14UN8wjcfBt8bYc4IHGJ16KC3nqYtklrO06DFqywG1MWnmLnKeupSgefAgndnuwlofgmVJ+Iakqv2gn5fpyhMWSoMmF0o9wAke2Eu1hxFWRu2OyIJ7ne0JB2+x7I62n4utmyZF4uB91tg8lhqpm2uBZv9SrYhZhIvFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776439054; c=relaxed/simple;
	bh=7H/eb+efvzQYpJdqzfBiT2D6ql8vYd6bb25oxYhWtDA=;
	h=To:Subject:From:Message-Id:Date; b=LUmpiJ1FkpgjB77rWcZ/QC5GypJ4NZpfF6FloXISqUccKNlluBz/OdsrwpewYznXI1J45unFXovd5eVYBceATXixX3uEH5edYRpw0L7Dcj/xbqztPa0PFF3kFr4k82biGnWpjknRQK2kSi8WcN+MPah1pmpxJUaTa2VLjas1sAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6y2E/q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6y2E/q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0CDC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776439053;
	bh=7H/eb+efvzQYpJdqzfBiT2D6ql8vYd6bb25oxYhWtDA=;
	h=To:Subject:From:Date:From;
	b=Q6y2E/q7F4Ok+clgd8orRR+uXmQmrik44785wyyag5vr+67CPKjXkGVdHQrBB6lP5
	 DiTjO0GPpdRSMl6M4w+xAge3ZF0Ckb1aqikaPqOIc7dizNoT6ZY3vllDMZlTf7YpvN
	 GlyKdUxhE/FDm7uZ/Hhy3chHYrtOodzozZGA12QzmqNVJVUyquITSb8n6GxoRX6zd9
	 z2j9AVu7ISxcw4Va47Ttx8czAjmr0hQmkjSf5O8jwoMgTCqfe7j+JYroGfNjpN1gMX
	 esQFb0iLORH4QBlfgHWfYv1fp50FNBmlt+hohZYM3dDdRmKRTEgg+FIzhqWWpf/enb
	 X8FA6WD+nLYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B3F436B5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643905368.8140.5557857352702404107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4b573b3ee0f82fd738a1053c6339003be275d06949090418a2b6103ad8af2c
Date: Fri, 17 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776439053
