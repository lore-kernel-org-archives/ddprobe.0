Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7874688
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718200703; cv=none; b=VDcYCn6ku4+2n3NT9eODQ0VnKJyqS7JbY5ZwkfedM2KbwIL/FPPOSkV7C1bKZ8buV3JgAAYrMnXyANKO1zqduZqgmwOZxMovccH9KfC1nkWmRI/6TiFQKXatZhYoDSBXUtk552Qv++5P2KoJzYWK1Lpz6LRq7soNvHqQ9xTzbUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718200703; c=relaxed/simple;
	bh=oXqGkO8b6UHyw0s6xpwdv+nTkmDhfSOM6WFtLr2pjyM=;
	h=To:Subject:From:Message-Id:Date; b=LrCQ0yZHtFoelXiEgZe05uEdncB1ewsronFNAP+1mItQFYBMFfp2j0HvHc6jj2BrsSXIeVlNYBvs5zvGNdcZkk4H+pKMEeTVLMW69txKBp2r2+nkvq805ISqBrP78kiZ+PAG+aMWyEIMfcErenVq1ROfl/T1i+SqGDxOK93eiC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEO7PF0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEO7PF0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A61C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718200702;
	bh=oXqGkO8b6UHyw0s6xpwdv+nTkmDhfSOM6WFtLr2pjyM=;
	h=To:Subject:From:Date:From;
	b=lEO7PF0CeqKskvbT3LxH9xVX10cqS1ZeZwTe81fNZab40VbmLI94FXMXsI6AjPO0j
	 QN+gHZO3L4eHvtSZdExaxyskjO5XLLB3HSBgIUeUw2AR+YlfpkxDuxyqYfXIUTQaAh
	 ahjcXQGmwQQ0v9n7IhFITYTgkQXwH+yapp1V2ZqCmhkx0fqqUp/gMzz41JDR6+O6Ts
	 rXSn+l93KThR5EN2YFKZUsqAFE2gjtcrTDDIlshB1ddhVLEeWzTSUNsMIkqonmxzUt
	 JT0h54Lj99xO/kOU6GRUwXWgVaHBwYOXQnjWkAcFCiXuXdKrEY+pi9EC0NUVZDcenI
	 YW8CVqmRkgZ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D52C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820070284.11861.16074982705877081211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6df0e1cc7527b8d7da1805e331a78cc59787890ba3501aaf4289fa8d3ea9e4
Date: Wed, 12 Jun 2024 13:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718200702
