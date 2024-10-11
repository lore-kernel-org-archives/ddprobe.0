Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C4F199BC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728659754; cv=none; b=h5Z6k6LvPnXLgM1Ce/rtEvUI5BwC92STMhssie7Czt9DCMRtoLV0rdgjisLFris7CYGNNx6F9h7X56x8Z8jE0LRhkbgAj1Hva8LrFZ7eM5rMD9Vf6JQSlM5nqD8M9u2e651fQ6ipkIgaladwdmb82cMPr/4BzYbNm59AUt6KxRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728659754; c=relaxed/simple;
	bh=ZXbuGHQJhsu7EFSV3M1hsJNlhcjxbaWMPbYNG4rjwHM=;
	h=To:Subject:From:Message-Id:Date; b=tC8yPWpgybtMKcwPJWfWdufignNuKLUQdYI1Wjr9uj+AiP9YecnhBHk6cedmw726WEn54yqno75ZNpSLK5/7tcr/IpoCErl/fMaS+p/2vD+zdJAbdCOFXvXzaBKl/slg0IoYvEbsYohTP06zyOcm8saaNY8z+mxgTWELoi5kXGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFoa6t7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFoa6t7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC3C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728659753;
	bh=ZXbuGHQJhsu7EFSV3M1hsJNlhcjxbaWMPbYNG4rjwHM=;
	h=To:Subject:From:Date:From;
	b=AFoa6t7/zroPwJhdxKDGl+XLyK2VBBTwe5D7MjQXAmLJNieMjNJnNZC1famD3JE6R
	 xk3YHUmm39b+Mp4IoFLHYHVZUzybv7qgilOeKRTsQlFVrbsUdieKWtY3qcoHj1wTml
	 wLOhD2XYELssY1MZa0bHrylU0BD0zE9ujhDqeUTvabAH4a/n59ETblezgPqWuPWkMd
	 xCCVkHZwAuNC4TSYF7GxJ7/E4QzNAwYwPFQqFtmX/Zb9OIcEgeI5mjJlVwWru4VgpF
	 96tmQzeTB1mvGtPFZ+tcMb6bF+kFYTFSbNOI8tTLGSMQb9CC3yI76i5chW3RhKg825
	 VWGZNp84lplvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9617CD0D7BA
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865975360.7325.9491545735845800038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c993c3ee33f0afc3142523fda2d8d8bb9cd17d23ad47ff44eb295842e38b8154
Date: Fri, 11 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728659753
