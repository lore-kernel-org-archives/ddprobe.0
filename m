Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07034B04BF
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786885234; cv=none; b=KnHSPjSTQ/7Xp52rKLOZpfpVBXbw1SzC46wkReE4F+c+GapaRJSy40TCN+rccy2I/wHwkW+v79DmwObBfupTQDSMAN8AeHCL4n5gpsox+dLArhgYG0oT07ukS78h0xsbrH1OVBm1KSo+oVkBy5jgXLX/tsMTdnTsQ8c6vrxx2nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786885234; c=relaxed/simple;
	bh=XzEci5b45GcagCTwOSvZZ28sGwCR/RSrkADOSuwHATY=;
	h=To:Subject:From:Message-Id:Date; b=p2wZrDMYmshvVxiZmvFrBALKl43FnxvGD2qDEmGjnGxDKqgkDBOD48gKPO7LxsSrkRAvXOdumS8fKUe3AymxMPcJXarZW+VWCrmTxomfG7QzQP939AJ2zuQDUZJByuYTvBWHzdkd6IGNXpkS8hQiOUpwWxfveRuaCqE3l3rjbSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCz3jEAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCz3jEAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF27DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786885233;
	bh=XzEci5b45GcagCTwOSvZZ28sGwCR/RSrkADOSuwHATY=;
	h=To:Subject:From:Date:From;
	b=QCz3jEADeZL3zEvOs0BQkE00YMQss1mmJ0+Ohh4k1lBYVXSB186XcnMWdVoK/88Da
	 9MnT97Bhldez3IgzMY5A7f8O9A2o9aDCQ2WKMzFx9STDZAoov8y2G1Ja6TvrICNqXy
	 NAhMhFIG2/l3oYen64Lbnfx2g+bX/HZCy5j2bt/cq7dwMzXZyjxO4SuSaKuZfBYXVx
	 Q2zn4IjG0BVglAnktKOvpSnsDfwXCLCm/sWjVn8TBd7Iq+6x6AnwotfiY4/BDDfFyN
	 wM5IMJUpdJ2L4Ve3usfa3v0jkTHWzAxFEb3jus3rWwAllVi3M5CH1eYsCbQXN+mBFi
	 8D891vIgzR2yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA96AC5DF6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688523369.32401.7578723069626603553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388c8534ce03907a9922685770b663dce8672a2823bdda38220c53a462ee0a44
Date: Sun, 16 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786885233
