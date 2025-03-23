Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5659613774D
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742773794; cv=none; b=OCHmK6fgZZJEY2rWW74O9XSSLRWqVsVMjOl5RdpgQjX8aVpiEl2AzR6OMNVBcWUpecWfXkbEuXeg/V+9VvF25AUZ5RSjDNqccsW/7BqD0OSxOcaFQ8RVtOmy8JWhpeqZ4WZIBYOtsiFNXDi60hDiSXePfumBefQ+d38OG02rYvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742773794; c=relaxed/simple;
	bh=agnFYzyvdsNSXyS2A+9O1nlOTkPVYu7iCldaJb9dYzs=;
	h=To:Subject:From:Message-Id:Date; b=IrJNw6twT9fXBP7YcxSvoI9MoI1FbCoDE9yuuXdOlsVI7cknMow38P9+DwQigZtCajZ9FPDEmEEpv7xckt7O9YAYsSF22jt4D6Ut0uO35/cOGSRRg7PzZNE8WVXO1T1PFfgyXXl+Arq07BMxKbDrwyylnbGShtYnk9wts5aq0mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXIz/u40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXIz/u40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF609C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742773793;
	bh=agnFYzyvdsNSXyS2A+9O1nlOTkPVYu7iCldaJb9dYzs=;
	h=To:Subject:From:Date:From;
	b=EXIz/u40ve2TeF4dOWaeb26UC9vKndK1L7hpXtCG31YmD2LsnV2jwUN8sbl6/8ZrN
	 LJOk/eG9xUnuhtoknneQcLnOCh2R6aCpmrh2OjFQQK2FDfGVsEH1sIl/nnXr7WvnwM
	 z9ZMk4hDFmNxwscVVhlDhcd5mW09TuwmBKWKj08j2tZqri2TIb6m0eFSyVvw4jmsXs
	 CbxSgUyRHg+TH/S5ceukLjn08foumBrpyRUNNVI2oYL0VQ71V3BmwoOggi9B2125WF
	 upL3eWK2VXdmhiZpZfQuClGRy7WFJQFM7pAe6CwOoSe0UT2ZE+k2xjbzJLU4ZUt/XL
	 PDrmB6okXkPpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB17C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277379373.1516.14850460352341328695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c329746b69297719b43b3612208ace6350854918d241f6a61864773b0cd000e8
Date: Sun, 23 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742773793
