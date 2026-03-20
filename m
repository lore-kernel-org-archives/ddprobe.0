Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF2E3E6DDA
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774031094; cv=none; b=dHSeTWG6blQHKvWCFNPaspaFxCPzYpvHhy4XINUUYfqBg7cscF1cmffU2uHXA6GABS6kBMRsHc5ERBGrq5xP9Th1we8SjFe9LAquauT0srj40plYPUzkIIQxMMN34RjeuLJilx1GmdZB9GKsAZomKD+oU011AAiVFLQsSkfjQlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774031094; c=relaxed/simple;
	bh=F3XIQuM9EcxWAtv0/iSZvNjyCTr2XwzKcTqLJDe7uGk=;
	h=To:Subject:From:Message-Id:Date; b=TKkkfjVL0htWeRacc+EutCxU8GSUnvfo2JVPMukR/LYYfBwsx/wBjdoBRRyYSXl/yJvM5LeSlcxbbSNUNtvQD9REvxNXGm8OLFn4ZpEQPwKTyX2gkAn+FyEDsXrjJ4LOd6CdcAQ3d+8Xy2M7ZqLO+UAX+xxaXev52JzZACRv/Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyrQZb+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyrQZb+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F33AC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774031093;
	bh=F3XIQuM9EcxWAtv0/iSZvNjyCTr2XwzKcTqLJDe7uGk=;
	h=To:Subject:From:Date:From;
	b=RyrQZb+OKiS2dHxB7ffYsJcW4tI+faMS0sBo/PfVfen2xK6U+e7VlIUaKyF97JoBk
	 5uj7yyQH+s+bOoRiy+OtiBbEJeFccU64QLI5tZMNYj8tymp0efwE2rmDtetFinMe8M
	 guALCPy69u/ebgClfLZpKHA7Qm2Egbt7F4bYvmjWPOK7O3ZyI5+3RAi+NooGsEDhrc
	 QQbAF0tDYTUgxxQdgfX2giy52KM6aHfZyWJi4YOq7BomdGX7+3/SPwfWr9Ehgp7Cl8
	 1Ky6TmfZJk80bL/Asd9OoIlj1MVbQ3K8n2QJsjLzkeAAnSD5pLl6/nZDW44q3YRJ68
	 RvsCOAwx7Y36g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9088A1099B28
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403109358.11058.3732033382507786504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7b419c30bc45896134163b17ed4235110e5b0101bc215847178452f69fb8bd
Date: Fri, 20 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774031093
