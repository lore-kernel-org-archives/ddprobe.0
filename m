Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1017918DB3F
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741233534; cv=none; b=timHokNIPyapKyq0z8xXSO+uHVXDIXnM8lUZjYkyB0aer0j1L+So9FjogqjDgQ6T5C2OelzoIFjAPR1LXZKpdI6/DhphGb5rHYeVEwCnlNM6+tWzTO2JeSe5kADDI+pPIvyPcYvywNSkGXbBulLuUIuheHWmS0LAkCeMFZ3hxWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741233534; c=relaxed/simple;
	bh=YWh/49cryPvKS6eUqkDE9jwWD3eP3OL+XvaJ/e2UXoY=;
	h=To:Subject:From:Message-Id:Date; b=blGh4X5cRp63uoVZcx7wuFwdM9RdsnPSRla2YGIMpg0q++799lx5mcwaISGeeiwg3N/54JhHeqNm0jP7avxdsWLO7247VhldaAhq1Jk0z8gqUV3+E99CmrpnGEVG2NUQ5/j/OAI02MKvF8Wy55WsEYkQSMwiweH8RgQevmIfnbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf9/E85n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf9/E85n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ED6C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741233533;
	bh=YWh/49cryPvKS6eUqkDE9jwWD3eP3OL+XvaJ/e2UXoY=;
	h=To:Subject:From:Date:From;
	b=hf9/E85n6S4JGOVC1T/M96z29XkkPa3SCj18yaLmSHQwIICZ2pynVowXTaPIbP2mw
	 kjOTObiTU71VO5paAkDq7JSYhH0L/TXt6D/pw9qqpszlxaeJX995y7iGd3RgGK1XcI
	 H5IrTdfrBKTg7IRWIAc+P/Pq//Vc05k9B76dQwDCLgAb4SvOUCAfbZ1OGSYC9RfSZ9
	 AyzWJve/z7ew6kJcpgZOuaD72QQh21B4DJTT4RTN18M9ADZBGVqzLquTfv3Yi9VrzE
	 lhhqAfFyIM2c0XjPTRL6q8mM+SF62PUZRUV8UOxE7cEa6vH4rpZqecUtfgozq80K6y
	 cCKggHMzBoV2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D22CC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174123353363.10275.13626112587064248292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ea45862fa616adb18471f76ba0de9a0e539ed22b8b93b21ea1437ab4551056
Date: Thu, 06 Mar 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741233533
