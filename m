Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B616282F26
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773395094; cv=none; b=R4rq2oy5W42SyTZYizCPFSaRDKWX/cMCEi9cX5a+1cApR1qGtsgsfpskFama1KPdRegNk9VQA0MoVJGLp5zwT0+RJpoUgJojyUDdCNEftiQ0jIydk7OypxV1p6Usdbq3kT0gCIevIgBxzb92Ik6UXd5VSHHot9ySKLomELLSTd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773395094; c=relaxed/simple;
	bh=HpVa2gUnEYGNurr6BFa932KD8gCeLeSO21oMrjoCXAc=;
	h=To:Subject:From:Message-Id:Date; b=fmK+GZU6yka9O/2zzcChGGC+neq4aapbwyHvhuGYo/hYsFC6JetfL/M6QfM85wEf3IXUioTTw14lRP3aHNtIe/CF3qlNfaXU01r0eaXCfNgcSN8SA1gHeeNDylvdPlY+A/JPMCOVEGDUCDtVdFOoUqqaUJEjhlydgIZsA9ALE+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOKBomqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOKBomqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4191C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773395093;
	bh=HpVa2gUnEYGNurr6BFa932KD8gCeLeSO21oMrjoCXAc=;
	h=To:Subject:From:Date:From;
	b=aOKBomqmPF0q5VttBk0mXAIEGtFKJHooil/ZHdTiLM2WnwxxR8n+YBVwMhfDq5b0m
	 43nKycRSODgebUxjrUgbk8AzjSFkHYOb150T8jiH1em6GqDy2QOpsu9kp8UQlaXCWw
	 rsWzay118NH5eA93Im5RNkLSok+BAS5BKE2s5LtAjVZF+cbFCeyXs6bVtFGIsWqGE7
	 dLVjRzxpTNcw2XeyJTPAYol1FLBp3ma1M+QNeHUSJta13bNUbREgQb/NnXsydME6T5
	 MhuBv5FPMsjoKg+jWoFB6iwKXVWtm50sqIo7j+cNMBofEwTsqJHtXhifw+akx2Jvkt
	 tWDB42aZlvfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FE105F786
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339509357.5546.5618549533728168511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4cbc40d41d33476af573b7e2e8248dbefeee54ea25fc350eb2e22c4bc74eb5
Date: Fri, 13 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773395093
