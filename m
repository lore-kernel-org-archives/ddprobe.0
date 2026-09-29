Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AC446EF6A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790709034; cv=none; b=tYE658lkx7JWybSu2SPzSGJoDolZYVo0oWlynTR5zMCRjlxObffnGh+leEKkyPztlHPWLR+zyj7qtA85wd2RK6DOY/7stmcVgGoaUEaHU/zSCa73sq2v1GVHxpd26zABlwfD2zLmZLfFd6rp+Emhea/DFiYMHJOm0bPo97D5zpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790709034; c=relaxed/simple;
	bh=FeQvKu2G+KNkVZGI1lNPqa4clI4mxgQ1UzpuCf79R1s=;
	h=To:Subject:From:Message-Id:Date; b=rGaARgY9SzUNVEDEaxXWTC2QjmhBQxchmAsSS/7cELB1ZQNCO10+dQJppLVwm7sxA6MbWXhKe3watHWym9vXY8/38YVwyg5ZhwMg50GvsAg6eu12dBTGRe0yWMZafyjzyg+5FtJthAJ2qcTxeVPLFwVwR4oJoIoHh6g9ZRPxPZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3OQkYJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3OQkYJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0896C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790709033;
	bh=FeQvKu2G+KNkVZGI1lNPqa4clI4mxgQ1UzpuCf79R1s=;
	h=To:Subject:From:Date:From;
	b=R3OQkYJD2dKpfC4Rykf9JXBj2JzVkME5NIQ8saqgMDWNTBA4VcSWLsIEDVCU4Eiyo
	 yBcsf6Ivbj0Fp9oDVy4u8iCFjF1VUzse7UIfqqDF5plmC6A/jSeyV+djUrObvsJe7/
	 d16lknL7frWIXgOIOC79alS3oV1zT07EEbbobtN6Uv+XQT3za/1xvdSTpzp7227Z7i
	 RK/jW2+ZzSrOWekYVR+VaWs8vmUAGfvARHw9QIXSIzcwxMOcnIUWC9E5aCPRYyA8is
	 ZSCpN0jK+/OJl5Q0A3p/0iy0ighQJ4jdLJTJ//Judd/GA50oVSRrNEcHGiYqvbYEsm
	 3DPyzneie35gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF80CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070903369.22809.2547515325561496135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caec700e95ced0b95e3f2942abb7138e04056596d55fa74f20b144bc62894810
Date: Tue, 29 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790709033
