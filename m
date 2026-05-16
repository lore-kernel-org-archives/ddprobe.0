Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2894D12FF69
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778909434; cv=none; b=nziarzSuG2qsRnZQ5GwOmxq68FMT8xEHkun+6ha8q+QGyqTdXmGp5vXm4fmnnET0XxzMfYZ97iiqXTL0XXbET9PTMHw0KtPRs/ZR8ubWadVYkqz763WDA1Drz5o8tNuXbz5MB9bfvJN1r3p1Km1pNqJYmKmQalPJsXgV02YtSxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778909434; c=relaxed/simple;
	bh=fvqKD85Rid8UaSBnjlbQLm5/p+k+ANVHUgWOQCllwpU=;
	h=To:Subject:From:Message-Id:Date; b=D+/YWY2OMCLy9G87263TXezrzDU7WHuA86BgmF6actiziaM+nbAbDfeTHxXZtVc7ORacKeQTq2GZiyNuZjJTWDf2xdO90cn/QfTmkiFHFXw6ouBTh5SLpKq0JMUSoIwDuvp41GycXaLzud+bceYNUzeay9sZH4KF40Hu2NUiCsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qumWsYKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qumWsYKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD178C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778909433;
	bh=fvqKD85Rid8UaSBnjlbQLm5/p+k+ANVHUgWOQCllwpU=;
	h=To:Subject:From:Date:From;
	b=qumWsYKsmqwp+W/N3cDLSF+/dK1mmGaTVvdcY/tohSjbOLolv0kOP/stJudwb0ULl
	 pA370+2apJSQu4/QTqdkUBZvf23VeO2C3UMpX/4kVmS4Kg0fyCa0y2qnU8CDquSyMh
	 Z3oK/3fEUs+1ULWkvkTGfDSnusxKmZtiDK7QBR997o6vTkNqc8QoB4CgOkupUgfGRN
	 Rx/J/sQONErekgd8J63cg0p5PGYMuTlHRAZuj2Mjs6C0JfiLXjcWllhr6R2pZRrxkw
	 8Bl2MnePf4n5Pa8uflFNr5UGHtYK6/pBLjT0ZOLPk1UJvPMpHEAIdFgWU0eyztlUnC
	 JydGEXAhciVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E8ACD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890943371.20866.2740406566751109166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a93eee220bed443fad2f06a0c710390230239f978a34267f0b04cbf3bae0e4
Date: Sat, 16 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778909433
