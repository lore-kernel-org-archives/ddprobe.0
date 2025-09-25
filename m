Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB912FE055
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758802194; cv=none; b=h8xyxVpBtBKbTaChJee9pYd3JvcD3GOxqrr7rGVS7ZZTVRaTA3LuRQHesmovXf5xKdmWRNXASDY7YfkmKYaBOuYxkb/zvXUoJJvc1uM+w1MHdZLmtSZlbpGCKfJ1p/MBN9dqGCTqho9uvewkeDmDlhwnWHBWzIW/AnEDtKZ8grM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758802194; c=relaxed/simple;
	bh=oEeOQTBLSvf02pwCuy3h8tC2bL2zEspxsR+jDUc+mvk=;
	h=To:Subject:From:Message-Id:Date; b=tpeNr8kTlgvsrg7SkzzQCYAyL9k4FyyLmsiOqqUt+AiHh5t6UO7rZhQ7rJmazAPEZLfOy1amINi323QnRazm/EAt6kgcRmsPHZ0TllmZkaO+b5JMxJAH6jNWIzPtfIxmIg9DOHyj4Ar6bSbmnyrvO3iENsAMfbBdHPFEDlbMdN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayByGRjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayByGRjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDA6C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758802193;
	bh=oEeOQTBLSvf02pwCuy3h8tC2bL2zEspxsR+jDUc+mvk=;
	h=To:Subject:From:Date:From;
	b=ayByGRjs4JXSDx3WbQ7NPms24GWPwOIGv1IAaXfU9lZadl/FwFSirYZsevNqyqeeH
	 PAWgALdaFyM+xgKye9EFQfFYagzpZ+/9mWBb0EjV3B3SAz2QYNLCOkzftjkWzMFLSI
	 4cC1LpMi38swpx4cxdAHFUTXbv0xbHBwj/BMVJVC9iOMWaz4slWtKSDTuQtUMxU/KC
	 qiqxlExXDSVyxgCvHfg+hy9TJ+mY9aJMuEAObJapKs8bGAa1Y7QwC5OwBzSK4g9RVL
	 3SPgHKnxSgDM3deXYOYOEvSAE4Yabfl/0+RGhml5KprV59G0VvN84H8lFkKDeE/wq5
	 DAVkNCR2gWg7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB3CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880219358.8274.6444940334678970377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb45cc4c4de39e2504e2fb2a59083d76e16fd3f96855d9034450034d4036bf0
Date: Thu, 25 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758802193
