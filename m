Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F079288504
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757972994; cv=none; b=N1vwGa6PLwt42zhs3390m2ljYn75nFaR79eR5kxoyP4Q4qb9z7qqei9Ee1gurh1FhI0hXFO00jUWc1PNbNy4LmZ8J3pn/n1pin8FWAhQXAzF3LrzyEgptsPFdWVrqinGr59Q9ZoJt+phWUT6de+2IfnBVCCkgBnZbWONO64J+uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757972994; c=relaxed/simple;
	bh=nkfuVOQMu+v7DJ136leJGp9hnHyIGT5JbjS3p2SR2dA=;
	h=To:Subject:From:Message-Id:Date; b=twwmQPQ6p9GdAuqNKWJYgoivWOjgp+5gVMKHGyT3VNekMF4RpOrDhZXj6XFhZRAexzt9s8s3H7x8SA0PoLoB3xIKHz/lou6AXj1oggBVNAfbJrJpv9fWZ1xWKUoern2dYlIEZHIpzLGUNsiswq7EutXRL/aWTDCacUOCtNPkR3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGTjZ1nT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGTjZ1nT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91DBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757972993;
	bh=nkfuVOQMu+v7DJ136leJGp9hnHyIGT5JbjS3p2SR2dA=;
	h=To:Subject:From:Date:From;
	b=XGTjZ1nTen4xeIC7r6mfF6w1fsDlQ9U71rQg5vAT2SDg6BC5RnC1oA/5fwyQCea5B
	 0HIPgvA+skDlktJ6m0Y6ORAXeL+JXtjLrXElIiWvFA0b7Awo2P+Wk6bKGDFn/ZbR2r
	 JTWu6tmTTvsgpzzj8l7+zXB9lS+kYuqTdYPgkr2K727UbbWl5soHfnVyYSIbuH7cpY
	 nsoKkKag8UIkVa8Q3vaAvlNkUSLu1EnurJMqPd8UHFdMaAUqaxCgOOy4XjtG3GiDT+
	 QWIf7YLbNJ+ohIMTo43YA3bWcV//1p7T5NIMWVAEIvYfDojVLw/Jpzd8U+NXDAv/g3
	 UQfT9K9Gf/Xlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9616ECAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797299358.11399.11835954572242631008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b9fb93490d9e72d35a3ecead05f607088d98d28e1de1f62d04c271a52f7023
Date: Mon, 15 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757972993
