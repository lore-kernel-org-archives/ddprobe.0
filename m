Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A0010A31
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713628223; cv=none; b=aZyArQgbWVfjTtxWeULhhiQAlnY2oHdzpe69iJR7e9I+x5estlwY0x4bxhn+xWouHYr5C9wevGHSm5iKCi6SoyfdnvIgn6o2W5OAo78z1E2vexS/ev5eKGxj19xkoYqBrpSnfeoZZdOLFBWWQAo5nvBNjI7tLhg+YXLrUUkWtQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713628223; c=relaxed/simple;
	bh=YXNVY1bHuU0I+iiWRDqlQT1uv8wf+yZqDninMF68SYc=;
	h=To:Subject:From:Message-Id:Date; b=HlTG5gEO2/lvItP1Hj66P07L/oqAxr/coO5bOc91cY8LCLh/N0pGg1vdUqsdNAQwR4WfHYabeheAq1imdas8CRM8z3wIIQna5qZ0WZobY3OEcjRIUkHM/QGk1Drg8pMjw9sRcdZk/t6Lez7A/iJ1Q5DwLrCKeZVAumPOvXcKA9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+MklKGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+MklKGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEACBC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713628222;
	bh=YXNVY1bHuU0I+iiWRDqlQT1uv8wf+yZqDninMF68SYc=;
	h=To:Subject:From:Date:From;
	b=D+MklKGOU67BF1waozmKNoK84ZRl6/HPHpbsG8TNG1wtsVv6Q+eXAfDgB3lfjt1NR
	 kPfuf2nkGt+TkkZd+C0oXpIFn/ad1B6XyWzs976hvZr++kU/sd/FFutqCEwEH8SGWJ
	 hL0juGSvdcNOzPNBFPmThbfljFbF50FOPD1cxUMaMzZZTcraP4eOEbs1olKuIh31aw
	 mLlrchTJWyNZCfUVh0X1LBJ+IOdwZVpmcjNrRu0gkKHdlhUtI8BxAE/1/gUm/xhJSS
	 D7Eu4yNqI5aoKO4Dhk0KTsaEueXYIh6atTdqqMay0WhayfkyzFajWKA2Dh7PpALTUJ
	 taHGPwivobyJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E35C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362822278.32080.4888751241042924049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02d6f174986cf45489fd56366e5d070bf288c7f644776ac80c5a2457e2f2776
Date: Sat, 20 Apr 2024 15:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713628222
