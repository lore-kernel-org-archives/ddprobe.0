Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ED22F5339
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750206594; cv=none; b=JzN5WKATOEH6MGp3tcLc+L4BKnxjBO3h4s8HC5sJ3EUA+HK7safmx/LqDj3nfe08o0Fqc/S5/5WSuoWGElHZPdRDh/DxbOXTwc5TkoMzDqa8jWTESoqdlxbNxsKZIEDbLzOhpJoPx3M3g74LDxerS1leaFgQ+e/0ePNff9neKe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750206594; c=relaxed/simple;
	bh=IA0vtfiuPVFfb8wd8cTGTIvmgpC3tQACMHlMG+Q3rvM=;
	h=To:Subject:From:Message-Id:Date; b=YQNVTSCcHad5dLw5pTthPuQ0qkJ5cNT849EPAhDpQfnfu7WTsoYX5GYLtbvlktb5bcdZ1r/9KD8N37Dl4ejhsX5iQCAIbVn3a2Q/Cqs1U52eMzFdIflBnKeSP6V5MsNZTFnjn5MLS+lYM0tnhuOlYeHBOsObypj8RyLYQnROEdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIA7ErPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIA7ErPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A685BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750206593;
	bh=IA0vtfiuPVFfb8wd8cTGTIvmgpC3tQACMHlMG+Q3rvM=;
	h=To:Subject:From:Date:From;
	b=LIA7ErPkxg+PvWyVNF792JKST4VssbaNmX1eCWxf0m6aucPXkjSEvlVk7PE4ijhVc
	 XsZ64uBvuVIOOg+DCcNCEY+X1+7mu65plWhJ+rQnBXD6xQ88ORDGjWxw7vdUwzztgw
	 zw9MohQi3IbGkYLishNppoe+RWKvS/3OKkVdHjYEgw4+egb+BLNF3Xup2kSpjcorLQ
	 JSaEKJeaUjpcL59NOlt2mbPG6ZCJkx28SB7VJTNuTlGata+wo2X6wCswYitjFWgAqP
	 XNSqaebl/7NsNsThDPb8aH0oWYw1dktuKjKKB9utQFD4VcPpi9ASorL8+gGTQ9I1Uv
	 +hEd6XyOD0msA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94249C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020659357.27570.13331848566254350339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fc73238081d45c147f60a1eb49235b73119b0d8e8874e1039644ca6357a1c6
Date: Wed, 18 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750206593
