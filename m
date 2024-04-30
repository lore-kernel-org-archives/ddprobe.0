Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4751317B4E1
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 17:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714497143; cv=none; b=VB04QoFKRN28W0ESMCy8HLq9GGR0xhGpXboiN+ph3Nfz/88YLOUkGbTq/0UhAaSmHqqZxQNqALQB+SoQiHIsg+l1gLKt3CUqW2bmYPynKDFvPD2TqGaMgRkldglTUqHkQsTKsAZUlEEmZLHzQ1o0H29j8ShkuArUlEWYHmLTUuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714497143; c=relaxed/simple;
	bh=4uXeirDwhyTv8Nvoi4UJM/gMQhJCl2ewQL5QD64SRIs=;
	h=To:Subject:From:Message-Id:Date; b=ig9oOchLzZPi3fpW8TTIHFUX+zvXtaK3kWA05vdymF48rHMU6TxP8MJ+gZq+ymKSOIMzSIVwniP8KFwFsHQ7BmvVOLUcuNCBd4IAkS6Y78EJ6s6q+b8dIkyjPKo8b8374dyFGOyHobV3cjiJWQ2OZbUYmQ76npTE+YwULDeAEoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahwJOX9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahwJOX9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09ABC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714497142;
	bh=4uXeirDwhyTv8Nvoi4UJM/gMQhJCl2ewQL5QD64SRIs=;
	h=To:Subject:From:Date:From;
	b=ahwJOX9jOPcCYDbNdE7IyL4dgyKNWRAQbANmEiqKjUQOLRvXBpfji42vrG6LiEW34
	 wstfS8SVXNscyGyDmDqu2yyPT88uv7MK1sRP2mtk1pZib7HNCvQj2RrygM2uKtCgQz
	 QyBWWbkkTRopwt6Oiz87wVhxb0l1dbj0vCkcGnWDzWnA2Kippj47FvfGxRrkDZHKYk
	 /EimOVJMd9T2bZ/H2LECTOZJGQbJwPcKxCFR9zUpxq3A+Z36oYlNpIJui/CDRAxoZE
	 vQV2fbxaEpyhIBNueZHXCILp3MVIwZolVOHNY23d8PxKeOk7e/cEb1/TzPhDWMwQ40
	 Nn0RPCAbK5U1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC19C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449714275.17214.15207370352188030997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5a72409c47ee3e2f640e33da8ea544d0ad98b9fb2be0e5418426ce3b1edfcc
Date: Tue, 30 Apr 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714497142
