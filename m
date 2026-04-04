Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E80E2517A5
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775292334; cv=none; b=M8jlATL3ojQ/foTRkBINfRbb8/o4FdbvInUfszSxgmA7WYinTiNDeAF7EJtbAnI2i3sItz5nzNAqXFoeyVkiitzims+NmhR2QZnFj08TV4dfz/M20p5bvl6KjZGkkPO2iJaGvU8BzDMGFE+jmBzvpTAX0zfXfz9YHiupYvplTtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775292334; c=relaxed/simple;
	bh=lqcTd5L47VNAscnHXJSdCty3hGwDFwPq99e7ToVZs9w=;
	h=To:Subject:From:Message-Id:Date; b=Mv/wpqQId9t8ACcmVwrQXCk629cNRkGocY7alJAIWJFuWbBHe2dz+m4FA+hcpzBBx7HzI6CqMB1zg5xJItcgEFsikE/bQUi/ZppiOzlW1PCF50GDORgEq+ZMgPJebTiW4Bg4IHljM8iPW7BwIOR0JWQHdSF/dpKU7Zo1PtIYhSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPsCIBu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPsCIBu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8432C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775292333;
	bh=lqcTd5L47VNAscnHXJSdCty3hGwDFwPq99e7ToVZs9w=;
	h=To:Subject:From:Date:From;
	b=RPsCIBu7Uc4+7BqCtG8f7flYQHxOAK9vQtwVZMe2Yd6hzu0WpUfTZLBL3G1AIG5do
	 FhcZcVqgHcJPYinIFbagxJsH3DUp0Fmny2RSzThYGuqWxAYqX8CQzE27GYeZwMt64Z
	 DFpESZzJyE7kiKK78ReLgWQlbcm1Tn2IB/E+0UJIumsH4min+yTgsDqmpPSX62eoOj
	 CYbhgGwudLT/CVBi1YOwNV5JwfF9f+dCmO5R8xx1swNQJ79v/o2a0CmdKjtcpO0QhU
	 AJAuCEolJ6KBdk2PdjcOVHn9doHMS1WhH77gMyD3JD496IYDPyDFJ1PdGWLlUekz6j
	 vjKJF9hJfq+mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B27E88D94
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529233370.19839.6786713992139177712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b565623f075c2084f77cdcd7c973d90e1feef96ebfbfc096e127a989f086e2f
Date: Sat, 04 Apr 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775292333
