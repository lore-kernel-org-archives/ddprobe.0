Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5181E394498
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791861034; cv=none; b=r3iAIlL9odsg13lf440O91cZp2Le7sjEuv9upJgHpaZmDr4S+mipYpow9JgMH9wOaaSvAO6RY65AQUgHNaV2J6N9/1P6bat5vR9R9FF55PV8NKbeAfiEBiV13RnGo4ik3PFelsQWs9FvFnSySsrpJDdNb4mwh0xd1OGnTsGtYm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791861034; c=relaxed/simple;
	bh=AFF3soYwr5maSLExnz9LF8F/69hIKn1SNPDIHJMA8PU=;
	h=To:Subject:From:Message-Id:Date; b=t2Nbg4M68ELCiorWZOOXgCOiP3Qu5h3M4SkQX4JiFW0hJntz9ZWQJIPVO7LG5OGFaQ530ph6cnTQ9sSIen/IqxvZoFBKJfgR0Tw080wL4qNZu47vyMXjoSR8bP1O6EW1XKT5LGq6c43Cbu+oKaP9Ue1MIzOtx18ZqTZtkHsv4E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NB99OS/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NB99OS/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D948AC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791861033;
	bh=AFF3soYwr5maSLExnz9LF8F/69hIKn1SNPDIHJMA8PU=;
	h=To:Subject:From:Date:From;
	b=NB99OS/62TU6ZuLyMpLize8ime+fCoprhI5njjdbrspXU2h4RQIwJ/m5w3jEvCtO1
	 HA4OT/H2LZlp1vk1bQPijDXaUSJlBpuYOZ6wOfVfYvO9lfiqna21y3Tf0RezeIrDNJ
	 gTwFDssO5hBBJy0ccesINFoVtWeuPzeQuLYjkP6C4xXG8CMxuqB+AVT2dSyLcQSBfP
	 1X1/7ikc2yZqSyNRTpooPjSUj1XxDcyJca6keKRByDIGTF3HZ/Oz4cD2TVhL89fxpH
	 Go3kYgWvmwNwpSm21Z/uixX5BuYJDH3ZBRfHEyl3K1d/ri6zNHnIbFm2LnOP3Zo7ob
	 Gm+Hb2IXdQt8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B4ACA9EDE
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186103371.18542.4227551342301173996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94b782ca59c91b2f3d01cae215198845c04b56e9f825e0a93e9acb7db40c419
Date: Tue, 13 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791861033
