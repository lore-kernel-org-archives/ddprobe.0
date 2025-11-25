Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2034A19D8A8
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764033774; cv=none; b=BoXH5aUS76U0cxza6e6HtBcqqYGUUrkEl3i09IiRQCOCqB+6row88K0aa9nXJ7Di6hu6EAv9Ttjnlz7c8V3opjXa9KFbjjlb0BTRf4moph9F+aLrN3/GXUdpFkAcFvBB9HdRXOfA7UubFbH2aBzheJTXdOb1kjt3msHZfIKCNtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764033774; c=relaxed/simple;
	bh=liJfnoToupeIV05sOXZUDZNPt+wdbkda4oLOXmy9Y2c=;
	h=To:Subject:From:Message-Id:Date; b=d7G9nHKMVkcBsMxQ+QZOJLxcQni9eCJjqBv8n7ELHWKKxec3MgpPQ44bbaS/BG0OnNi0uhKJOqzVIbqPmq156M6+7GKLedKnh56MtRGhQLp1SEUot3crvM2sRcg3q/IVm4UargNvF7XEGxDLYqijbKWw0q1PETJwTESIXgfNTKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1ILMBlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1ILMBlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3039C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764033773;
	bh=liJfnoToupeIV05sOXZUDZNPt+wdbkda4oLOXmy9Y2c=;
	h=To:Subject:From:Date:From;
	b=X1ILMBlSAChNypFPsRtSMhMdgqWITenMwjbmr4BK+Nju5xtSi9ZAxNG9spb45syoX
	 uF4iV9d38y2oMbyxxFP0sLEXDCmbYoisLFXQzAkexk3DIDYCLpI2a9551SXi+AFsC1
	 NQSExcXanECncTg3zMW82oMPrWBvnXA3KXRzwp5duyh95bpPzb6GFv+WwpmQMwFJin
	 wh9AwxVJDooEtsGNtM73s5bPr8QL9rD6bAvqnKCZ4S/yyURuMWk04B5PamRNrHSZn/
	 uevHjftQf2zqi7cVA+s5o55Xtv1G+ZgGPMuJATtrf+loTJaSP9lbHyoQdQMeYvPhx1
	 Zf2zlsMCwu4Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F2CFD371
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403377358.13071.9060281442211944923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4368f11247878ffee2eb1cecb6761c3f3cdbe8cd65a2c1708c4b543b643e1a1d
Date: Tue, 25 Nov 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764033773
