Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AE03FF1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749446994; cv=none; b=h4CNez37Aa2yHwGs4ptv2UA1sb5NFj0hYedUEgxKvscBEKmZm6OrOE0Cy+hnqWB1dxDIAx01/XPfOa8ELmR2iiI+m5O317y9TCeQPPOmhj5FYPiEfFqSPHAcn5aldefHMh8wDp6zYLXBvY+FQ/1Fg1ACwYxZUukLjQjVUdfmjis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749446994; c=relaxed/simple;
	bh=4xEdKM4oNfmKRMNwPjY5EsHjAHbvQr5Om6Aj7346lLs=;
	h=To:Subject:From:Message-Id:Date; b=U3eNEAMhoVa/aRS9CO7die9A2n/O1Q7pohstK8D561SQQwD9zWpTQT4/trtguQWRivPACKNf0pu3sZqUDtEVJ+4SWZ4adBNctl2rwl6CF6znbuhINHx7mbMejD77SNPABQ7sW/fNSZluI79HBghN/3zdi2B7wC/eVpjtuybEDQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLHMy/92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLHMy/92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0586C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749446993;
	bh=4xEdKM4oNfmKRMNwPjY5EsHjAHbvQr5Om6Aj7346lLs=;
	h=To:Subject:From:Date:From;
	b=DLHMy/92ad7EEJXcb63wfP1T6jXO0B8uT75UxHuoDyP0CQ+A6MfGfeerL+WSv8x6I
	 O9htKHn669vw9QUbkvU27i57gLIy2EdcazOq3AeQ042K4F5Ca2ALnxrzW/58lnRSO9
	 G1dPGSKE1dCTdUBuelV/huSryxPnaJeSmekxf+Hq7AgC3zqFEkR1SHlJHfkHMIeHSJ
	 v39thE0vCWE6Ht7SNP3WPhA3+Xx8Ltrykv1T1UA5fX8DmhXXXNl7vy0a021VaYhQb8
	 7VFH30JhDKcpKqCl4Io8LfRWM7nETUeg+0lRB2uaAietqfkCYNhiGsvYcsU+UE99yj
	 b4SepQgrLcBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA5AC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944699357.13690.6205468306802261170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb38c62a9b318c514a9002a6296422fc594e3c727dfadbc38fb2f7919ef98f65
Date: Mon, 09 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749446993
