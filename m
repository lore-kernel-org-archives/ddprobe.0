Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCB53822B9
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774848894; cv=none; b=aWghXVFH4ZaYfhlQim7dCMkKqNcKnE2qGTKgbd5eQ8oK+03qjELWs8wAC7Jp5sbMWAeYgEDfGXZkXeOGADg97F6Rq1wj04pB2nZDPBcXpWTNaqNW+LWF6Q8vkQsPyWZL2t/2P3hqHKwNh59XovrlDW4TwgDZSQ1CNJhZeoA3yGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774848894; c=relaxed/simple;
	bh=EotCFahANSCfUG+ECZsm1xnVnYXxiU9bm2VOwxoTe5c=;
	h=To:Subject:From:Message-Id:Date; b=Bom244RSiEb8vXchL6ZB7y5yuljXzHUXa6b0aPcxYSOQijkO1PqIbVwB75WEfvysHSYMhiCjc3M7FYGNRt9D8TuzwTE1sMK/urkxPo7FRhihBUzk3PLPmT3Gs7HoSeapTsk+T0lwYMMSim2O/EpNiljJwELVVexUP2PvV9fAnSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWXhrHCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWXhrHCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E03C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774848893;
	bh=EotCFahANSCfUG+ECZsm1xnVnYXxiU9bm2VOwxoTe5c=;
	h=To:Subject:From:Date:From;
	b=PWXhrHCXoEoghprYHgCZohN/ZAesi5IqpChD/tMVEED/ZA1/sP/NnzKZB6BP61qgw
	 ZTq5wb0k04OqWxrmeGH69q5UJviIQW/3TY0xkJ8vU7t8K48Co+KbjiEgssBcoDZ6Cf
	 WvFN8Zp5J3vFoWVS0+r4Wdo0gIZWl7cbWSRXUQL6lx8vb43HRnHeaa4C4yNOHxpslw
	 zLzcZJsA489SLwPv9G6hdyhAZhT4HZdN+10AWIVCgGGh0MoMiYra/Psh1LgRRa81E6
	 gMgc+9qaR+mvFY+O8WhjZS7kz8wXvzo4uZW2KYRamx1mLvCte17Iwz981XkpP8L+Wv
	 KvqqdnwXe24Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD1DFF4943
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484889359.15428.12220147789041036086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804309600e0cebad1c6fda8b208a120f93208d1f8edec3b4c003c314272d4956
Date: Mon, 30 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774848893
