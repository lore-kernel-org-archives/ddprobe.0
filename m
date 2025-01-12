Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBAF1BEF9D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736709954; cv=none; b=GHnpSC2Ia7I1nIiEDVB5C7IK75VNiG/fNH+sPDLSauyeJ0FH/Z0OWJdUi1+Mj3Rvz7QeOvEIa+xU7AccxJsR9KqsKKy6ogSWVTEa+hdRzDnXX3rF78MoRhFOaOc/gayazc5fZEnZDjPOiILvv1zWmZ3iG2bOcOn5h9Vzgi7tXD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736709954; c=relaxed/simple;
	bh=9bKIYf+jf7M3kbtAFX0515q3jXP10VbCOWsEmhEW98E=;
	h=To:Subject:From:Message-Id:Date; b=O+eXDdeyN/JwtyNVgjglNNxuqOTly48dEPfXkPWlLk5A3Gf7oi+wMLQF+STjcXJUdjXI2F9NvNG3KjSQQ3s3oNjQG4OuCHpNSR8uavP6iQNYSYEXDN7U+5cEu4RAvNgi/3phbMYZaGfxS4KePcx1zOsTNRhFKWtK7I3l3cIm270=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ea/hd3Sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ea/hd3Sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9D0C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736709953;
	bh=9bKIYf+jf7M3kbtAFX0515q3jXP10VbCOWsEmhEW98E=;
	h=To:Subject:From:Date:From;
	b=ea/hd3Snt0scGlYny33OFIJEGP5zFQ0mTJLND/7wUt9Z4BbIfHM86BC3kx8Aa6OBA
	 ZToMKQQxz/6xKJg49gGrXM8N8zkVjlk6PcyQb73753RJjV6byWrJgDWc9bkRt6IWRm
	 c/gX7P89ODXYTiQA+ybw3DTNMwdI0iBqg1QoyQlxtk+eDwZ3+8QtbPYTwNqSiKDYar
	 9A2aVbfexCfWV/+l2vYS5lJ+UTyYQbC+1/fNZt/DA9uOzLnAOOe+Qoo0LiuMEvjUhL
	 4Xa4v7xzPDg6n9OYRuS2U6J1ptgDJkndrkE9nxt1fTyuCWqJyiZp8D4/8gFpArnYgQ
	 EB0yfz83OgGyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96496E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670995358.19622.10913178318592888680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d0c0ee3f5ee0338c6c318e6b547767007b9757285ebb7f07d968e22741f965
Date: Sun, 12 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736709953
