Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC527AE41
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706641697; cv=none; b=Zg9wE/ko2eUQXCRmYMPACx/7MfP7GMUcb39T3+RiKQ5xERh5qKKXkZqWAtwO8acEwaS8oruiDn2evY6v+YwlXVQpxOlsNcJPZRVzYfdm1ENvIBPt+Z1WQXFcVC84buF1tI+zzyNV79XGxY5XYXEheDlZcmYVohc6kaTnZwBUQqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706641697; c=relaxed/simple;
	bh=tIWZUv835K/9q7Osr0QNXSeRmxs8K6aDhbvseCLaSrE=;
	h=To:Subject:From:Message-Id:Date; b=MPMCTOw83kjUMTtYb73BTrhzo61dCKL7u4dJMEjIqXMhFh0cNN5GqFQ5/ctCeTJ+DEYl0tpoQCCQkKkMEs7C1eeAMb7G1Mv+QkcYIqI9tjcAHYigp6M2HH6XJHUn8xa1exOEvPqtStHA34UDVFHcmrvRPjWOzjzOhi57Y/oCXL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHdyhz1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHdyhz1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C19C433F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706641696;
	bh=tIWZUv835K/9q7Osr0QNXSeRmxs8K6aDhbvseCLaSrE=;
	h=To:Subject:From:Date:From;
	b=CHdyhz1Ka+2ElTZ8Pv2NlLYp8f6hqJgdD9COXjeKBM+KyHKcN5CG5xE7UDJeUoqET
	 zZLwuBRJJzCeBanNvGnRLB0dOCZeWh0NfS8DTtyzsw5YoOZ67MIadKKqh8v0alY4F+
	 +zvvlj3itTSedbtw6VIl4bhTcZZ2rkLWaBNmQgwBUZPjuVyQQPu1Gg5gM8Z4EiFg1Y
	 Drgqhxtfl2lk0SY3QupXbmWsugK4gSzkOQ0x/jkQ17NbiiT18CiJpJQD5yxemzPsW1
	 Z+gu7WhFd3mcxLXKFAytqW6LsUyHMC3BOAf87bRQOmOdWFoiSu5cCOBRIJoN2yN0dC
	 rRIHYMuxoNlgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BAD6C47DA9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170664169636.2524.1311204619322390477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a798b2128af5537e943c4d76ec501606d5fe5c6e3bc83a78a7194265143f25
Date: Tue, 30 Jan 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706641696
