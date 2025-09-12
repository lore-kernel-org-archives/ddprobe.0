Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BCC28135B
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757718595; cv=none; b=NbQUoKgTPrfnA1eq3kfppB1TX+nA41eR/QLDMerSUoY7JXnqb9ag813I9fIF85RruG5udLN7zrs4itfQh0PgtIOG+WafMtR5OSHeBRsYQ9jE9MrbKaunzpCudKe/O54w2vLaUiiK9ABgzM3q3y8zBfIqlarbOro/o8vgJrhwyl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757718595; c=relaxed/simple;
	bh=8i93crhae61cfnxnaynQ8dDPAYp7zVZhJQj+QL+mifw=;
	h=To:Subject:From:Message-Id:Date; b=KllN/K9GPin4zOmImnWaapVBbf3vgloKsx6BHEWG+EJfCfP/HPHIZ7ZthDvqARWKluXXHSkTeC9IxjeZQ2Tr+EurIi9QkKUjFR3KOXP0H4Asq/cY58efPO9m9rgNbGciWasLVjvKRKYKf7DVqHztORXVzA+JE37Mtve9Mx4ri5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hksKCk37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hksKCk37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E7FC4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757718593;
	bh=8i93crhae61cfnxnaynQ8dDPAYp7zVZhJQj+QL+mifw=;
	h=To:Subject:From:Date:From;
	b=hksKCk379diETBgMFaFjHDJdkiL4Hj6qUNdvR2pH90gnHCNRHdrA14X5H1OJzlAAb
	 PguztAE5iQcEWbTBCN5WUPJaVybwuqCvLg2xUopUC1N3xF1Tu897Rsbv6/QQObfWZ7
	 g4xi1Gs+LLILRi3JWP929GwjD2VTD7IRIJBAdvgz0GQEQjfNsrZPXhxK2wIJMRdEZ1
	 YLMoHULZgomCZFfj+4KzJrzSulcCYJh3ZSyVdv7YIq2ybDnSR0RqwCeVAohOsKwyY2
	 9edbNeTrkG71drSpuKYiLo9UGS6Pbo8rQvxbDeTeF3NScYe3ksPHwL1KflFvgQIVMc
	 xJ1UzzoQuyWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F96CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771859357.10522.8371989586819706705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b70b341dc188f1d02035f82e25714b6de78d7177562165aef659bd21ea4c54
Date: Fri, 12 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757718593
