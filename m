Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E64414B97E
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730563554; cv=none; b=Fkofu7/7cF2y0g7gg1qvM21CP7SHkdRAcZkTNaDnhURyBu4uwvGbUj8Md1lIrXBsnL9qoroqvu0z7AIgRrcl5YuwvJrpII8Ye99X+JV522W5frvjWGftG1gyhUGcIu8sLENy+IfAGBymWL2Q25bGwuYcvZElhfLMoYpBf1L1G3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730563554; c=relaxed/simple;
	bh=wfKkT16xDuGH0ErT02kWGEKD/ZGtCrnjXhlbbic7pn4=;
	h=To:Subject:From:Message-Id:Date; b=dbwqvHIqf23HEFqADvEJIEKVd26YWvGbNEN86Vfbwa4x3TqLHdQcAPOwUyDNNO/igbAz+1Nxvtx1KfG0WHHMtma1E9bMCuN+R4D2SDcCN0sTTHEO4LIIc03qGZovBFd8RKZRRQM3Y5Et9gJBQWOxx8qSUAkmcu974AtbmvfQ4hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsdBGo/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsdBGo/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8873C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730563553;
	bh=wfKkT16xDuGH0ErT02kWGEKD/ZGtCrnjXhlbbic7pn4=;
	h=To:Subject:From:Date:From;
	b=JsdBGo/dqGbs8zEMFMecpz2dDQqso+3vxuh6w2xGuCx9Idokbl1oYtum36crTvN68
	 Ubxupp3spS7i+qnQFy7uYMUUx2tnSc7+BjYYF92Etm7+GntFFshAs5efcd5rD5pqLB
	 8lf+QqEeEmJOvf61Ddm3IPCKZC+MSQ1zuOYQaM1cb8hxIoieQw438kPyZKuN8kYWAF
	 2FdvwGAHDOXTdCdrbNWdXRir+fyvPoBajzK743tCoxHnRMu3w6GPHCxJM8YqPa2RsX
	 OiljIDFFzB3YaLQxiYNIeP7nKihAhiA0NqpqkGv80qh7Gt4IAnA0/J4C8efu2bCdzS
	 3WMdD+aViduDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F5E67802
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173056355360.26703.10943371707352519772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa46296794f7b3a6143c2387b0c3dc10edb1092840fa7ee2f69dead2957fa962
Date: Sat, 02 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730563553
