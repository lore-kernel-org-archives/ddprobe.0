Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2698F1F3B8A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783132114; cv=none; b=IsqtfoTi2nIkCmGXXNOioINzmZldi9yEQzy738X15P1LxWopmLYFNzXbnruSQ+6RRVNhI/ip6VZ0DPnl/AU1uGbsiqUC6DbWIAyqiMmzdk8Wjb3oOvSUhscqdQvWoJcsCUice41awFNr5lfxCJzefErwHkwUFTOBWT7xXmLRuds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783132114; c=relaxed/simple;
	bh=liM+3FYL8z4X8TG6lhLMaFaiU6s7Ss1j/zieNFYmZtU=;
	h=To:Subject:From:Message-Id:Date; b=sb6vfEu2qkG4wWTUgm+aNooD+oXYEAcQHkB+ACtYVLo3oNmYjafx1mFQZU1JTqgy0mN7BBXFJpj/ps/P43lIGBCuqHYf3vsJ4jR4J9SVmJM3OYHYf3Rn7Vi1Ic7iCyNt6SWsQXwxkANniBVeIYrHeEGCiZPptwjZZAjaoS+O1qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZu4ktVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZu4ktVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01F9C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783132113;
	bh=liM+3FYL8z4X8TG6lhLMaFaiU6s7Ss1j/zieNFYmZtU=;
	h=To:Subject:From:Date:From;
	b=UZu4ktVKD0VSlV4v76R90XCPaZd+emBd0ZaGwQJWYg6FXNfkLOqlvcfiaJNuhwP7o
	 2UZ4Xblr47OSEfQJJXE9g1wf0v/hWkSIlfqiKgxAC3iOzk2OfctYDe2ilKzIjzUwxP
	 l0kPJ9IR3zm6lJPwH9Np4fq1DZXGEJP+JHuuU9yUKu/LnNVSanXsTjd6uAAXmvAfd2
	 2LPehD4he5ty/3cSniq3mfzhnLPr/II7Do7bhDvAXXNpvr/AP/W3ij/nbIkV5o5ocs
	 oWo3mTNWsLa9VWol0hbrCzL0nkmofwGgJw/rZMKMA9dNTxj6n66tHTNqZmJp3KhpyU
	 Kz7dTHuWYSFCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFEDC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313211368.23863.12091794267077967631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42f6807b5663490e2dc2781c7631b17fc59c0b1deced735401289e847f2afef
Date: Sat, 04 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783132113
