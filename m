Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CEF42069
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742993994; cv=none; b=ZELqNFul1ez8IqP7Y81V/efD4NztC3YMgfxg55IKoyNMuopRzDC3hn6LNbgTXGPqOoauZrpcOrYK2TYGUAJTR9xHtLY67CQvae62Tk+BoggP3sWAi1FBW4pzB+XyppF6QDMWDpx+GLYb53L3vGSfChPtW1ax4uEdQxZBc4PeVsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742993994; c=relaxed/simple;
	bh=ukTRI2vjcNpjynjv9oS0hZLb/EDfrusndII/ChwlgV4=;
	h=To:Subject:From:Message-Id:Date; b=rAyKWQ8LiklYLxNyoDuwQSa/L1pMEPcffy7suAt5D9PgNLB37H94Dai0erjhATBVBx2hpfCS1eMtEAfRVk6Oa5p03ZlLoQiCHSCad4I2Ix/uYxgR2+5f5ajOMp7/JLyEaKugcj90qxc5V06MePbH0gEgI+HAuSIi9JM5q5Xyvgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRdVgpoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRdVgpoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B893DC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742993993;
	bh=ukTRI2vjcNpjynjv9oS0hZLb/EDfrusndII/ChwlgV4=;
	h=To:Subject:From:Date:From;
	b=qRdVgpoYbCKyhJPbRsGV26kDN4X8H/7W57D2+7n/bdb2k9OGCT67BT7jCU1JRbc7m
	 3bU199H/ehLDBFyiJ00qYSCTg4F9OTAMClKqjuhh4Gyi6NdcbWun4G9u8usNhce1x/
	 eHmMZDhuLFqynS4T9BcODxzAV/hz+ef9gr6BIUp+AnCIwgBatU0NPGBwWueOzBK4+4
	 UV/StHOXaXyGONZ10LGim3ZGR9XfS9lQVNNvP7/0XhLTl97qPo+OLSY0n0ZT1jctoZ
	 rOo52XenDNYrFv0pPoKB5ygSORTdVa0v7HuB8vKqmXbs4gPyZtiSGT9wJzaVfZYTU7
	 fza9vUNyKNQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC6EC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299399361.2460.10004754240161971310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d16e7349672f87210cf67b9e5423b79eb10cf3df5268a33d39c3b50801345bc
Date: Wed, 26 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742993993
