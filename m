Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2701E7494
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752268194; cv=none; b=Jwdxrt0DmxAuI5Dbq18/okioe9o6oziH9DvISlGgBK/C3+zvqZKqKyoSZ21ZF4jbq0l/8KnsjtpNuzMdsVBI9VUHQlSwN7vQevdsx1Hvnh1J5j+2UhGY94/NFCsgjJGimVf8Iy8UJTudhtGNze4JX142oPD6noHeSUAPAiAJrbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752268194; c=relaxed/simple;
	bh=dpeCLbjobK8KzsRgdNGxPpHv+U4ZFH0Cw835lhmW0ME=;
	h=To:Subject:From:Message-Id:Date; b=Ekdkox0Irw+CTuQ2BWkB+OyPFlNPakIn+tjkMOjRSa6qASKoVixLJqDxz7fLRTwUbG3tg+M5NYh1Lw4eXSaX3cbL464i2IwqLX7wYaus4xWP8DicrfZJSlxbvMSfXlqtC16VEkZ/BIVfJuaxNmAHNrEtyzToWPDeHzwRgbB1ciA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVulVZo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVulVZo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C70DC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752268193;
	bh=dpeCLbjobK8KzsRgdNGxPpHv+U4ZFH0Cw835lhmW0ME=;
	h=To:Subject:From:Date:From;
	b=hVulVZo3dqaKJ+dzLwerktdWJdsJbV8p3W855+nMnjDKDwnhWgUTddDfdDYfjtMLM
	 kuxzBzzHbm7NRfQBNfJwZ8EVXqP45ApWIh4qcTzw7g2k6ej+rQdLuTU7rxxKRq85Gu
	 y1KgUx4mx/O8j/5W5gbqCNxf/I7mBC3b5xBThqWRSqjBJcly8khavL2N9h1JMNU4S2
	 Mg39Vs+OaFtt+rv2DVemOH3XdVaEpQI8X+AdVo+CqF6yT1fpUE4uOav3zyHruiiXB3
	 gZp1dmgWgAq61P4jsSurcZIZD6xZPPjLGoq+hP3OJFOWCwqz2sbJgYQolco0CzNdcf
	 1YWtUBiQsqJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F460C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226819357.17237.413936359355453067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df407a0322e8399f87ca0516611bd11e16a597a3e7a3d21e3df439e2a3620a0b
Date: Fri, 11 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752268193
