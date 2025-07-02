Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3916C2FC3C5
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751473794; cv=none; b=L5XjzrryF7AO2CBW4xDHQT1YLi/eAW9bNDucY1trQLnxyl3Qqp6E/5UhhzH+I7kvwZ9w3iCipg7FPbpcP5DrwCzDwZsTn8Vkq1KVTH0Wjp54mVcbxprB1y6ge/k8j01GqT6w11Ymadn5PQa0BUglaLz+ui94DxS9kTOsN39Bc9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751473794; c=relaxed/simple;
	bh=Kgx3z0B8cCuJGKQ1oClu3/lryGAGO4j0iyeahbWU5bY=;
	h=To:Subject:From:Message-Id:Date; b=AGu+SWjTHRJH3RWfr4c8tusPkrqlmkKvC/SBLHpPwiOO2ItPMSJNB3zHpfJOe+Xinwfc6Lu8+ZdFr1402eoQKVovPC46XnwcXUrPFieJ1Sjysz7wy1yqg13Usfny61y/pd+JZavlKrPgYc8LT4hRp1Kh7qEfx/Hwn0le1soiru0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4ybRIy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4ybRIy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2728C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751473793;
	bh=Kgx3z0B8cCuJGKQ1oClu3/lryGAGO4j0iyeahbWU5bY=;
	h=To:Subject:From:Date:From;
	b=L4ybRIy9C5n88rXZ9H/NuAHhP8MZslvHVfm6zyCCumNi1c7kPxmZQ6T0NlPoUC7HP
	 PBjc2uW+SPXvisEwFYcuXEqDvEsUmuMSqqOd30FObiivEgDzOG8lHSOzmp56ZdUfEM
	 VskZq3RNIMtLlFo1Dem6UfhYzxR19oHN/+jKr+bDsfbO2Ur8KFFujQwlFhEaLCsUQB
	 kIDiusXKR3hAGunX53dMoi6gcSp7vabb0AX7OPLN0tppeBjDY7mSndmPigl+DfL4jl
	 1j5c23BVAs1EPjfjFpTz3qTi8pEo2OZH7sGwbBikta49L5LsD88E+mCIsLK4q6iO0h
	 yqSXuSHBsd4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9052BC83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147379358.28064.12339552885433853352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bfd6514ccce59dd872ec9ea4edbcbc4d8e11b950f3e058f3d117baff589eaa
Date: Wed, 02 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751473793
