Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B58513A86C
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781663194; cv=none; b=Swo7R4JAT6rUre+cqX19aPLYq2cg7TYoVa17RmbAyd4L0G4RqKv7YSjg0EAeg9Qu7a9ehPqPYhjhI1+uHmPxY3RzLoaVzWkwFHIrexPPKgGa09Nqp/xJq6oBJEEF5Jx5yqo65gAcfb15bNhs7g1mgM/o3jII8Gv761chQ7vlC5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781663194; c=relaxed/simple;
	bh=vm6PFR3zFiGDIg+S64qrhN4pLn152m++LlG2y4V5x8M=;
	h=To:Subject:From:Message-Id:Date; b=hbBecCdxNuPOir0v531ypI4ndBtzWTtCG8xqSDvEjF/is6q2EJVEmeykenaDKLCVkqA3Oppr84G9swiO4+vUo0/li0RBV6oIJzHXoPPVtvuPO1M2glK3VwLm1/IEU5kxASjmHDXiuhCbSr6VswaSeyxY1DTxGZini9q0H2WPv8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=at7+jSXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="at7+jSXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD93BC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781663193;
	bh=vm6PFR3zFiGDIg+S64qrhN4pLn152m++LlG2y4V5x8M=;
	h=To:Subject:From:Date:From;
	b=at7+jSXOOx6gGC+87fbWtqfB65Hqoueun115Gau0YKdatxNBsed+1zxPEPzzpnGBS
	 EVd3do+W02XRwzUoAmdEcyLudaV8Qim/iMthr8hX/YoBDyKkYJ+cpizhTaILd0ybSF
	 Lhvr1ZekIYRtEy+V2xeBM//4deZ8ePZc5b1Bqq4NrOVBvvNfR3PczFvDnN/kC0TLSD
	 wiLW3R6K4IVOF22VLms3nJzOydA5ClkOhRl3iJY2EESz62/x85hDMsVBg9RHdIIMbg
	 YxA8iDd9/BYVTLvCjjRQOMNLpst+HFN01jZp+pWDivNcHM1sgF5PKw0fyorKW/XkO3
	 yJLT3igezValA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CA4CD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166319372.9093.6405029768590586153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cec9600d84446c55164f5e7cca01f6271f1217344ebf97d18ca0c4741b9dd47
Date: Wed, 17 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781663193
