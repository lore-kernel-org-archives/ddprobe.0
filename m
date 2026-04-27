Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED4534FF62
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777307254; cv=none; b=Xft75LPtNnp7r9u/ve3+Cms0quKMmgkWrx4ICHh38niQxe7FaJjNbbI0JvYWIgoapKUB+ZS+vAtSigw6YFcjwLRAisNGkR4+rMOofKbjGWgJiUb4BvKPw2sIjSPmtOD98WKGeBJ4ktQLzHVFZLCkUk/iNTAgLRsMU/vJl+C3B+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777307254; c=relaxed/simple;
	bh=caRkP+P0vk6KVD2tnTQ1mDuaL+QUWVe5K/Jmrzm0TQM=;
	h=To:Subject:From:Message-Id:Date; b=c1voNrg/DHaIthbRqhr0dOvqoziuZg9yYNzMPKRZSJPpVVgOZZ8aoHGcOLMvnxsem9laPQajOKfoYn5GKXQaAwQytah2QT9fYaDHqZ8ad0geixpoKTBMSO/R6LzRRnvo+2J2eNhRHFIMXWWDP+FW0xNzhRAOIar0Oh6zKJcWBbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrmJjxDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrmJjxDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BCAC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777307253;
	bh=caRkP+P0vk6KVD2tnTQ1mDuaL+QUWVe5K/Jmrzm0TQM=;
	h=To:Subject:From:Date:From;
	b=NrmJjxDGQVH6CH4QGNPGa4h6LILb9rbTLMRVI5pnIBh1QtcG7n3FmpWOx9LA7PXu8
	 eFtfg7ovPaV6simlZk19IQ3c1Ybq7YtIajkZw197n7GRYNERlg2Rfg9DU9qvNNRfJ6
	 teJ17ul5dbKfTP1R0DWJxxRbADgkzH4qYj7Gkba+83+v+wb6Bs2lRgfwazHUv8opIT
	 pNueqb/69Ruzallfbp/m4981PllYTUCZuG05qk8flsQWpW/DPBsbXrgXaejLQN7krk
	 CaJZei8vC18ou8C1kCP7P0+z5TzbfYhifx8r7Y03KRVGyZnN3qXJ/N+g4yrLApDiwh
	 udCltS/fl1rFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF4FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730725368.3456.12571765725177438096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd066b79be136979a4f207d2479bce7704c47b97d589ccdd426bfe6373f4c1a
Date: Mon, 27 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777307253
