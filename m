Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D1D12B6C
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722785154; cv=none; b=DavNUgnfOhCI6thnig8jiZe9O6LOTmHToClTwRwjYV6NwfyLCsQWbOsLlMt2HZse9yzm9bowwUKgbgWLtxzRBX0y6f/53FCwDXyoTKZkAEqC0SQiT57uuAu5OgaDj25ai2luZAeeHLwyxIRsdLIhirCXLS1IMyOqlxqtwA1Yq3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722785154; c=relaxed/simple;
	bh=DbXiRf8SWKezFbkXDTYEjmT4lC1kj3jQ4DdibotaMIM=;
	h=To:Subject:From:Message-Id:Date; b=lCuruFnsvZIJMeDKtdzLqLMmov07GXatEleiUFBwYwMHxGWJp69KyTu333f+LwwccLyUO6q14N+8BetZqmjlTbW2ELIJJOBqjfxTTu7RzkjfhQaG20apdtlm1iF1CEdGrXiahPIymXGamYj4cp3LWQuomchVaavRyHucHYC+QOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMAWDBxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMAWDBxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60ACC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722785153;
	bh=DbXiRf8SWKezFbkXDTYEjmT4lC1kj3jQ4DdibotaMIM=;
	h=To:Subject:From:Date:From;
	b=qMAWDBxwJF/eATm/rpJYgytX+OxkMdJrtT2llZp8g4yVG/Z1m6H7bfxCTIfbrvfS2
	 ZjodINw+cQW30J7Lt7gQ7VYk4j9TE3+IEoGFvRQY3v0vc8h1kuHAIImc8zxffMeQEO
	 b53gE30bCSvA/1r7a3k997Yn8s0lDKqvtNCnOlfuGr6Ev/TuvIPHrg500L0NR0E/7a
	 2JjiHJQEQmEah7KRtQbnR207m/bcJQD32IERM29+8ag5mj/y+LZ+CFDVxrMxV3Jmwe
	 FdxrvK8Ej/6c/ftTZ348Mf6x+yrHdqKgmHEn+9IM6ylXgmwC1erj1KPce7oiw7BG8l
	 W67qHz9YZYFnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BCFC3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278515362.19775.10621726076466149628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba85f2e2c4b6b7ee77e35417865b8c2bc261f79b28a3271679a6fbdcf30fbd1
Date: Sun, 04 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722785153
