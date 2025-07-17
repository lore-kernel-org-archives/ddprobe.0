Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AB429DB9B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752753594; cv=none; b=kcWJutUIgpOjAz556jHPNAtyDihqHsfE9SxASv2+aU4/FpTtOtHexn6paHQOMWtU0bRZH8vcumOmMdxLRBdjiNrJr89uJmcxMNT94lJ983R/mbCcxSc6ULr5WMAoS/r6SeCwBYi9GKhUprE8nl7kMCe0C+/oIa6XJry0r9Prec4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752753594; c=relaxed/simple;
	bh=s7aNt5xerea6pMT0aRzPJjnS9y2bjmEOU2ls9+pFKao=;
	h=To:Subject:From:Message-Id:Date; b=GHXnqAjMUmiNFPtG9wHoZKTS+6GV6O6nPuc3FD73GntQdTuz9okHLR8IVf5Cj6dvJYQxAq6miIChkApKPmvjwuhogf343DeBG5ub014IWUcw5E9XP4//lRbpSgQ5SCjHgRO2g8+scJwhPl6KubsfT3aajaUDOFidAW2IBSsQr4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBUOXZ9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBUOXZ9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3625C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752753593;
	bh=s7aNt5xerea6pMT0aRzPJjnS9y2bjmEOU2ls9+pFKao=;
	h=To:Subject:From:Date:From;
	b=OBUOXZ9pxj9ozwChq9zgg7kcx4H38RkAW96qaYeikuSJ4ojfpha30aK3l6iemuT1y
	 tlISqhvMJjGDbZ7o3mBJVB/xNcSotJZhBezX5WwaktlrAnDO9eCGPj2GfDhKY2uKWO
	 7+gHe+7D2ZTM7FRx6czKFpluUuBcjHO8/kVK7kdKRRQjPlTAiZatxjnWqI16wlUnV6
	 r/SLNxYYcl53OY8ivRcU+x4DFw8PHeIxAw7Jk6BQ2CHsPOt68dQW8l22qiuvuaF4u8
	 zwty1i2IKwv+sqwKLNL+v78Ex/BAO0jgYEyE29eHyKfQESloX/DaEq+kq5NTV7gz1F
	 gLjyLmA2AZwIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3EC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275359357.5739.240602652796077560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c821ea1e79b15927baec259aedb0473194bac24f0e843951cba86a4490865ff4
Date: Thu, 17 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752753593
