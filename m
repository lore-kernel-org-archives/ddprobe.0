Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B78A1DB125
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770870294; cv=none; b=GFOQq3lLmojcLXvMRKZdJxxByHZPDLYNKzFEfGjfaOeG36pApZAKn4n1tIhjU+qsEQjSqg3I2fr/LQFsMRNaM3YrmfU3XbvW/OvkmRVApJTisTJHXIVfbEO3o3k2Ib9NRt9Z0PNS8SrIWFHFrt1dY2YvlJ8ReRiF2z21PcRIHVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770870294; c=relaxed/simple;
	bh=/xwRkLQWrK6b4V5c8R4Uk31OvQgansoXCzv8RHqMBsM=;
	h=To:Subject:From:Message-Id:Date; b=R6cbSKZmy3oDcTNGo7gqs1OWNylkOwqtr1qnLPvFEgh9AuNdQW9t5qyaeDwBPNQosX52bK7WVI/acwJ5Y9sqD9nWvgJIVVgJVhVxV/HND2e6QqEEcY7/vFb5X7JzMJ+q6sfx2+yLITe9k1LlJez4CUztrvKs4LaHwC2JgCTnTnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SergiJCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SergiJCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F47C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770870293;
	bh=/xwRkLQWrK6b4V5c8R4Uk31OvQgansoXCzv8RHqMBsM=;
	h=To:Subject:From:Date:From;
	b=SergiJCaSQAPyvgZDU0+wgjR4iJtW0eJQryDIn1BWQ6yfzkjiKiWEKnYE6O4CuVaV
	 E08h8WlofXXJtcYgwvRziKbDSP1PjEflUteCxHj4aYEimrPO4gRX6eQToaSgvaojpl
	 HsenE3dL3+el9ZCsOgPfb6WZKn20reV0kK0tlmCXhYySGeAJWFmrJXyMnNCqDu+xoZ
	 Wgb1X9hnzucyghL1M25qyaR1Gc96Ae6zLvmbr0FdeLTO+n3QVr4LF5dJxiQsxTfoNX
	 SkFWurAHM5QnW5STLQCIZg6mrP3Ap40Jh2pHHa0J9gYDM+zo0aI/YB413OKQbETK8V
	 ZkYV9YbulRmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E465EDF025
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087029362.4587.3616745279002673447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c27706a9cdc78e4cf14975453d2cb5804217ea9b98f3fd1d600b3732e98485f
Date: Thu, 12 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770870293
