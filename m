Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AD8334C11
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773477294; cv=none; b=byArnazv4vjEuKedm3iaGCE657pggkAgiVISuhATOc+qbV1zxy8wY/9xVrIXI9ijmvw6E2bsxgFYoLgVFoZw5ouL0V3sDpjGS3LcgNtcayqlkEljvhPndtiGwKWFcscT3GNFSjOjuWEsAn5knLZVs6kJ3prTYkSAPn5Wxl+sDQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773477294; c=relaxed/simple;
	bh=r/gIqpNxp9jFGy60TrnWiycbtwrbsPi7do6UvtJvLDU=;
	h=To:Subject:From:Message-Id:Date; b=eM08BDLOqd8bBK3hYd84suJa5x/CRCukgd1HTbyWH8uTwGKdR7wpmbFvchJ3A3Kv8HcikJbwJKS5McYr0wAvRE2n3yjpoXkbUc3fskbr1spqNo3Tj2PN63kgmiXwj5RyT/89npqBwE+PIplwqfanwJGRzXx/ooNXcHSiqFOuvAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAXdbrIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAXdbrIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03CAC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773477293;
	bh=r/gIqpNxp9jFGy60TrnWiycbtwrbsPi7do6UvtJvLDU=;
	h=To:Subject:From:Date:From;
	b=KAXdbrItxWdHfpjYlP3ggiumGcj2KYE6TIiTQFcSv565T3cnqkGyceZ1OhP94xnId
	 LbHkoGh5O/m8cdo+evi+8tEkXh/KrpXOVxeRz/omJJ7Bsp5y3kNTcSMLDPajY3HAqA
	 vqxe9n0GMyCU0YMQUS5al+qyzOWaJ62kVpN4i06vNvgQ1vHi63dLK/Xlac2qv7pDaq
	 waxY9lAvpoydscM9Wo6+zuAIUi492AwryOYl1oY0l9NyAnxwoXJGYI/8sQGyV49u2L
	 xZU0oT3EcZRQVq3PVkt+qa9Ha/47ECYuw1cyUAxfo9wGsiaLVi0RecLcvB/HktAmAK
	 1oeyt61eSW7YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26E105F7B0
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347729357.17077.15830347067810626079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3607f7934ba34371f7a213e1ce523c3ecfd065ffe130987f31e81f8205917d41
Date: Sat, 14 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773477293
