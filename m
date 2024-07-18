Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132F01B86FB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 13:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721310323; cv=none; b=Hdf/232ILRoXtVpDpBUdL/HQdjbcwlYqYYbJ7eFCi3gD7HVU8BheiA14ibw0+FA/iizvtNX4M/VOxdn3IjbZVRIQMQ3z22HDuUDlOS3FmmJg92gJ2PZ4JCMinIf/gAx5EZsxo85tkpao32v1GikYGFUeyY2KfgUbl7nbRm8AOr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721310323; c=relaxed/simple;
	bh=8Fg3igx3vC6xSNlHLUXKWWuN6QHLqoepl6PwzIOAZpQ=;
	h=To:Subject:From:Message-Id:Date; b=iXyduaGRhHzvOALf2xcIxaYWO9ow2XVjVH+QmwRYKbHLgo7+JohZkaCsnZHGhsg3rJRv7NQaBUFg69LN63EZZT9NukDf7LpogSJBCVcTUWW7ZKqFLB9gCGcSiaBggH3EC38BajqU6kgQjgp3UPEBlc8pIZb/sL1Ipl8XliuCgyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bH20HD0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bH20HD0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47EFC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721310322;
	bh=8Fg3igx3vC6xSNlHLUXKWWuN6QHLqoepl6PwzIOAZpQ=;
	h=To:Subject:From:Date:From;
	b=bH20HD0uwD3fbUXUGAr0hYW0klVfO5AoC0og8RRw2AY2I339YSNU5VBjQjo7RcY9F
	 aSQ6Y83sV4osbqGfmVvrvNnLAMVg3KaRyVIdHxunsuam0PoJH0Cs1ZvW+FUSKQXSSZ
	 Lyk3wBrORsR6NvNPls+d5udVuQJxs5D9bhydKZ2RzE+oPKmOTHv1MN2lfOnXL4snwe
	 8j7EC/QWklqQGN5480E6rkpj5AgXZRMWUc0bqH8wS9hgTriyxA1B12/tNpNMLqUks2
	 nTag6nSNC6Opl5YTxoDQHUywEXUVd3bRV1WKOTBsxPnf9bi30K5k2d73aY84NLlTLV
	 wDKUnfI+tE71w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D12CDC3DA63
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 13:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131032281.5519.13097025804382060810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93c4378a2168c18b59fce66d9081a682311c2a45c0097bc2a6d928c28a97057
Date: Thu, 18 Jul 2024 13:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721310322
