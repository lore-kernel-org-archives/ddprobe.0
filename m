Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6F13FB1B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728360354; cv=none; b=SGW+vzXdCMUGhXGFr3QlSolaefT588hBdCqhG1RR4sngWBrhaIvPTAoM4IBdQdI1lppdcK3ouqbQ80vgeLJr/+bSiuFcnQhgoNo31wNA3bZh9j6LpCGGGGg/eYK8kY2ctiyi8b+TvPzDvETOrZIb97rRJZ7YIws4R5yCsHREm2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728360354; c=relaxed/simple;
	bh=rphmrUFmaSA/EmB0yHxgpepwlyRwQIyJ6IGzQLtPGwU=;
	h=To:Subject:From:Message-Id:Date; b=Oi67IJDMUV8nUAMfI36LAgfdbBjUtYEzbWyeuRHxy9U2M5MboTQ8wUUCxranEWi7SNC0NUar8r7omqqCAppMzkMHMdxu8O4oNwhigzne/AynNETgMV9ascBgzPs6h6mESKG4pLB3ORvV6EDCKkfcaLqg7PPn/qDOZhH/lWJDRcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxMkYOqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxMkYOqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE612C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728360353;
	bh=rphmrUFmaSA/EmB0yHxgpepwlyRwQIyJ6IGzQLtPGwU=;
	h=To:Subject:From:Date:From;
	b=qxMkYOqo998XmoTcKd7Wbb00toyitJm88enDxgm0R113bQysnejCJbMKqQ5/xBHgO
	 k5Hq3A+E5DCGhBQnTadiUUOtNxY7oLDBxknJIlA8czGrSSlpEFwUldjpzEBVc4Dzgp
	 dHMIzgEJe5dwq5AkjiFsmu/+ygyHUH5R8OZvKlUKKRHa8CdzGPmivGq/EV1YgZScaz
	 Oxse7QIebqFte8QZtOze/yDst30SaB/daxmDIZhgwG7Mvf9i6bWp4tFj1REpSi7D74
	 Un8U2f9iYshRgdEdXLo9bhNhbk6BqyE7jeUstllYpxN8T4Q89OO8pQTUL08FcttVhO
	 qY90TSXosH6Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99396CED25F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836035361.2019.18264918746749174978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4aded098bde51a285972c2e17e5451553220ccb4ac94827ec0e3fa23e472a02
Date: Tue, 08 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728360353
