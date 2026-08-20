Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429263DB63F
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787260234; cv=none; b=RqRiPtQGQfMg+tgAldelZSf4kKaqbuh638jkLBq+UX+GnPZfbv/erHt8F3LUOhc/cSPdJBdm3uDkfXfsu3etphMTGIFYtuLMGDzt/hG3V5go4CqVKe4bk0mdmdeCvVO4ywSo7rdxyrXEbTdo7KWyYlvxmBn55bwHvpVwKp9LUys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787260234; c=relaxed/simple;
	bh=Si5B/Vxvf0a5Q636Va7LlhjRE2gBuQu5zNTMp87dFBw=;
	h=To:Subject:From:Message-Id:Date; b=dZgYiPrFTgD4xweetSgdlFd9EHrb5SYrfqnuroaGEA1C5Q+fbCJogHOTBPNWMmAzD923AS/amdXX2YWBuI3D2Z3K8D3hZOUlU43uzGh7urWVZeDsGAMOr6l9Ac3aOrNh+37OaoZyf+6dsL2zdPdNxxdDiS+03SF3oDzYNVk0l/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mb6QPNBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mb6QPNBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AEBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787260233;
	bh=Si5B/Vxvf0a5Q636Va7LlhjRE2gBuQu5zNTMp87dFBw=;
	h=To:Subject:From:Date:From;
	b=mb6QPNBsP6UehBn0mDij0qFpRIdBQWykf2+UiEueOxy+p1xMcZFX8P0g2MIHntM+P
	 dzusc8cIVNBI1lEkdTVvw2qPzVuYayXakou3lr01Zz3AQ8aYGDRfv5y8/HhbXFLfjL
	 4j5KgAzWKj4MpCWHKgiB09DZTSfSyj1xoLrBcJVyx33RQPP5yFgY0MKXHC1EhOIaUH
	 /BzJhgBHOpuO2tfeaE+pkxp1gBwTK8e9rcGHY1TIWFlRvmTjaEInZf5lFGxOIQkm1w
	 qW/M1KVXS/sXgnMk4Q93YTT5PhecaHVVAa99s7F5rry+F4TrFWIUUZ3EV3r05GtYt8
	 Wr2mhmflWCZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A51C5DF86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726023372.13754.15741692521697241868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0b42fad028dfb784db1c6d952341d3f0014cfafdf8f3abc089d80b461a506a
Date: Thu, 20 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787260233
