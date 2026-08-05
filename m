Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F87156F45
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785907834; cv=none; b=RU/gVulUQSBKw9bW+T0E5kfzIdElEoUnl5ant8UNqP1wWjCr45VShLqITTmn8TD0h11pllHNZg+rnQtNlFIjPUZL+Agobe+p47XUaVOX/LMJwG6CAvSH8bwCkjgdz+HG2p7q9uTuYT8uJ31LlLVwdKQqyO7BOlzb47kTrNyg7wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785907834; c=relaxed/simple;
	bh=3rtlsy0y5WY4HBSyMvGlqA1QdTy0L5f776gzDSXjyJo=;
	h=To:Subject:From:Message-Id:Date; b=G5CmgQhcWjkGPevrFyOn/H9MDXtuXb1Es2nIfzI4Xy6aY3nb0CeOPoF8yFJX92YFN6qq97i1FJNnzlN/YneTB3QxyGELPpwF+eAUEJksVmCDutl/dzsveuktonDjQQjjWNHYV4jmpfBq14riXQHp/oeKKv2hyumO5EMiVjahpHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBJpLU7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBJpLU7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF74FC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785907833;
	bh=3rtlsy0y5WY4HBSyMvGlqA1QdTy0L5f776gzDSXjyJo=;
	h=To:Subject:From:Date:From;
	b=DBJpLU7sOU7rAwtgVuALOoZhJUYva56gzO8w4x1HQS7KgAnuNiuiowNxQGfnUYJAe
	 XpN4Jgs4sbFSNVYGE5ryqLSS7pNcA5iMXuvDid4oNdeDVueOTRJeFrHXRduKjQAyMM
	 darNUZs9uhfbefHHIXBoVqSps2xR3WAUPSA509rZSviDnL7M3tIq0Azi250OeivFQl
	 yqm/j8pvu4GuuzfcKQVOQOz1WEqsJTEjzH3bRLwq38IEYgCNcKUzoovWaKyBvdrpev
	 JOoMZDTED5oi492Z07HRX8h3q0HIv92a8PLmihEhlP49yglFPo2pr8RPLhS2ek0YiH
	 H0YkOIdr+kaTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB10C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590783369.24434.15798303565065750369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b793f5b76d1b1d609b22b141523f4a75900499795da48aa0de55061c95fcfa8a
Date: Wed, 05 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785907833
