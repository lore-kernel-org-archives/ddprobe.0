Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2553B29408
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766794434; cv=none; b=ZvTZnM8Sb9AK0V4PyvWAGu4SnPBu/Q5RZZ8ILPiVzBxpj4cyGNW+pVrsApYzQt8ComboeYxLfATFlOdNyP02zL/4w1PuCO4m4hFul1pLDbTGeCr1R4Xz6TGtp3Swv2lWrz/D6CT/itBc32U4S5vdAuQgcKoiwsLrMGeSFKB/U+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766794434; c=relaxed/simple;
	bh=EXDZ+DcU7+LOTXbALsT2hYLDb5+Po2fTXoExB7sY+To=;
	h=To:Subject:From:Message-Id:Date; b=UlBIHgGHAZ/ccLbmIy6KmZEAQGLA2OdCfA6XhFkdFVYFmm+pH0ltu+rqoixneaKFth01dCJYywDQARLLhuy1aKqiZsvOszf6xmlqeRLTzJ3hyXY1JnhKMwleD9jMcLx1IZ08WJVs5soI5jJiGHaGkaRjYygSPA9kRIZYRS+wTEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6BQ8jrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6BQ8jrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7BFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766794433;
	bh=EXDZ+DcU7+LOTXbALsT2hYLDb5+Po2fTXoExB7sY+To=;
	h=To:Subject:From:Date:From;
	b=Q6BQ8jrMeQShLaQa02ANEzrgFCQcmqmQUjg+mfV8meLrhnNoPmSZLHI0WZXwIYRf5
	 L885qo+WDMn/nPRP7oWjDixik3bLxC8UYFXSyTbWFY/Ssuht47YENdqSffDuvSG7PA
	 LiY00TkhHzzTuSFF961nb7ivXRimgKoMDNSbstYz14IOywl+AWmquDSQJdbwZS/INt
	 xmu1bJxSEmnl6lcF96FF2Iu/mWukRS7Glm4f0+PnofZLaDV/cM/yXxvhdktwt73ooX
	 v4C0IURjxQkV9mxbwjyIu+oETCCALlwueZ147cwMW3QdtMS019V8ofs9cMkcV9GQj/
	 rico/iD63YoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A374E8FDBF
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679443359.19495.11318920255810610954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a42e1f1f56878771e4f74417f61fc1fd2f5df423a831cf63db6a68db5a8af4
Date: Sat, 27 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766794433
