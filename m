Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DD53002B6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783273114; cv=none; b=eTUwrTCI8PcAX3GxpAZoBPCJg70b0N3WIt5HwyE9iuKJq/su1bXXccRwWifvAqUKriJXDeX11bQYM9S1GOAn4qDM4pXtDiPJDDDI3ce6ppfKTIjoHCoSaVag7GK8qWuNbv6nxE5O9nR4dsJXBu8/uw74n+35CEOMtw2wgWGAw/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783273114; c=relaxed/simple;
	bh=vYQgvWta7bJYkAMyxOi53mJM5imMoxC30B3g9+HBH8Y=;
	h=To:Subject:From:Message-Id:Date; b=jVdPUOD+xvTKOANcwfwBAhLxv7+Rmlo24tZnpj01Czexh0WZ6mkxSM8p6uPvG4ahrFpkqzl7CH0OP+AXAFMXyAzqnmDlvz5evfRAV9aGQb1DlEbtXbcuEdKnOD41HEUnu3QMhvLub7pXB+DyBTwIUv0jY201z2u1jKv3JjGMErM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Np5JIgI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Np5JIgI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB32EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783273113;
	bh=vYQgvWta7bJYkAMyxOi53mJM5imMoxC30B3g9+HBH8Y=;
	h=To:Subject:From:Date:From;
	b=Np5JIgI4ziLtC5Ss+kMd0i5LskF5DnsK/zagshbXbEwiOvzvhryQ+NCsl2GhW4E5l
	 UG4qIbrE2xOjPpFqtOKrpwu3m4oViNh3fsSBKwTklk1ZcedtQRqhed5cSRKcuMw2A2
	 MHya8iHqodjna7Aqt+43FErAIi5fM60GsM/O5HSGM92kKd2aEfRqQA7XlaPZnzY22P
	 gSm1W3MSqjXKzO1Sg3oL6PA3GCsidFBhF9VHz3GI58lbuy32ZG7TQlvo229GhWfS2Z
	 j6UT2fukCRJokbRxPTAX5K80DCRgdQw5ttsnJ0X0GAqe6M0gzJ40nnOaQinlT9sXb+
	 uIhGfga7SqGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F8DC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327311368.10995.9044059737849012049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086ecae51924370cf47061388097c40803a0b2eaf403a90a96da345bc931db05
Date: Sun, 05 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783273113
