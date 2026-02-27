Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0645C41C2FD
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772203494; cv=none; b=AS/6OQoVT9wIrJ03Ce2OChgeko6UPvhzB+aJc5NXsyDx2XW+qh3qYo3dZ2Mc9h72kt40CumOWyxFtz++vksfhq6cZZ4B6345vYoYR5knRT6D7zUfayuQjWQmU/agA6bj7FgMCYhawFTf3nkTNMjoPph0QmGWgaCmLgZlLZhK4jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772203494; c=relaxed/simple;
	bh=N/4OSLynHnKQU5fttx/SVtIsZH4UbL1XNiiyypmKEVw=;
	h=To:Subject:From:Message-Id:Date; b=tmk2yGXSRYDH8L1ZuZwHiHquCFoo1fJGfSdYzHJ0yEZS2svdXQyQFCp2XZKDW4wMGV5iCld8BHLIkDxLQrC5zKiIpivSFsEWjWilfdD/TyDLlRSgDWJcSckIR4WMGH0OyEYbrkaut2Q9hIZceb6fx/zRO1GdZuVE9lrWtuuClsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLSfKmzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLSfKmzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0936C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772203493;
	bh=N/4OSLynHnKQU5fttx/SVtIsZH4UbL1XNiiyypmKEVw=;
	h=To:Subject:From:Date:From;
	b=OLSfKmzP+MuSnqFHQuMepg6d2bYanRvgbRZa/Cyf4l9iE8d0GjnE3aP2Zcg/8jqAX
	 sBu41gli+O+vfryBxXCncyP6rrvupQ/GOi12ljR2YqIvfXvF3ZNbhFNZHQzlrl1Giz
	 D4WbR3TEibdCq21OqkAHpWVBKEsEslWC0TvRLwI38sO0RIU88nIjEhAzf75+/HuXMU
	 J8OVCzcLkXXiSVGoHGz+ANPvsp/H+OG137d2cr3fmbS3tuI5z11Wemqvodw9RcheZO
	 t/mpogsuuH9Gr7fF+RpLrJjbNHFp6YQQqveye/P5as2cAfPYQQVOLwV7kq531D/Lqk
	 NeeCw5cVHreCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB52FEFB56
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220349358.2800.10281820615462715345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c51c2cbce31aa5f923ebf6be1ec06a6a2d088ed6fa4dae647aaaa1e2ede7195
Date: Fri, 27 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772203493
