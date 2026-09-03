Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D2139F18F
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788427234; cv=none; b=PaTNnvfQ1/VdO6htaPacqqnDJYioaG9x5IXDN+2KMjahJaOppV9IZeyhZ2oj9xNTavZqFTlZomXqCCQYzclAr9qeUXUIrzxe/a3sGYILhnbaWxxAofuHgQfkkqUxJIbZbKl1Nm5W60ixU84mgFOilJ3H3YGovrhGvpUk1hte7F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788427234; c=relaxed/simple;
	bh=wCUuBYXgawX01HrjpgmNeZN4SuSxcD37Ec/KrUnRKXc=;
	h=To:Subject:From:Message-Id:Date; b=gt0seCI6pVJI4dW11r+5MQaVO6AvM80CIeGIXOwyR9CDuVvvCpdeR79obAYrzZycKhW6+l/GmTCs26lwjkz/1n2QW3xjSORMcDnWi9Mi1124MwPHn2xoF9+2YRnAHZ4EnFgqALhjaI1oKW3EV8rL+mHoCtuimb/dAItpTcChwLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDrnOTIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDrnOTIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB63C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788427233;
	bh=wCUuBYXgawX01HrjpgmNeZN4SuSxcD37Ec/KrUnRKXc=;
	h=To:Subject:From:Date:From;
	b=PDrnOTIR0uxMkKIZT9xkQY0ujTGQB3KZO5b9Xu5WEDkCYQ64jevFFdhp2F7d6KRZJ
	 biNMr/G3G3wx2YugYmsdyBTJlZWVGUUVE9/s9Y62N9HNyr22wgSY1r5AlSrnmLlK1L
	 ypM/4gMn9JFK7Lk5t7OBSsucByjP3pj9GgH6w1B6wLDlmboqFhuDCPIJJt9V2Bl7SC
	 CQLPtHIFvt/RCczKto4KvEs1qDK21q0R9oIP49hI3V1If7EnN5YUdeIxadIheKI2Nl
	 sUl4x6MWLlWqsQtqFWR/Q1damLdLBH//LamBgY/h3T6jid48P8cBx+G6pDa+MBI2Uf
	 CxVIRz2xciYKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83BDC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842723374.20395.8341460210419722659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fdef3d4632e58878d5c7e8135f925bc48eb3d21986f1a1b11d488049c38879
Date: Thu, 03 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788427233
