Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E811A2C0B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781310394; cv=none; b=NJFQz5tLGjJ4geesgx2hqDGE+Uh5rJvNSTGvbWubrRi1TxMA3f3YlCzUQ55cgjLaSTUlGj55mDm9ujuR0Kj+nQwcrqC6CbveDGb9IeheTrJ1dQUwmcnkAd6XhFv22qXzr6GMKEUjsXyBpAQH3H93dKvcksRq3/hmllvDkhcrxSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781310394; c=relaxed/simple;
	bh=v5rUhYcXRuohX9Jl6B/SB81xVIDhEvFUr0PIXi4uUS4=;
	h=To:Subject:From:Message-Id:Date; b=BiQadoID3dnZDc307LCNHpxJKuXeVn5LSUH6ZMi9t8tdB7ORuG0paOYb6Xy3F3cYPltEDB7D9nH+bLgnE+ThVquNnZ7/FI5dJFeraRlgI4QeszGaBZlYfXU8gS1RqEK2kp4Bl26UDZTusoF9+iRwLQIePAjgzuaTsWx503MEu6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG3HPC0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG3HPC0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E75C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781310393;
	bh=v5rUhYcXRuohX9Jl6B/SB81xVIDhEvFUr0PIXi4uUS4=;
	h=To:Subject:From:Date:From;
	b=AG3HPC0dh0KdP12z9gnT0l2o+g3LGf9AJBWExrIOvEOjaQgOfFXaRcjGmNGMdtq1Z
	 gD00EOKfLvIdDHVYB+ZJCuGtmW5CPUm/++7bv1KgxIalk7v9rTfdGzkLEPXZTSn3K0
	 czhsE2lY3oxXEwyop0p0aCXrBbtTiKH7UMcDXOX766UAemS5d9vZlUavok4Yo+Pd/P
	 BRM3BSXXGsgYN7oL4grJpimYcitIcaMDzQ55RbyNsUcgnG2yTX0mIDANmtrFKJKgvt
	 pNeRNBaA1XVbBeF4mw390YXTDZPa/EdIEeKE3DnkqJmZWF8Ki7Rt4KGPo75c0UKyJ1
	 5CCffWtN7uGLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E2CD98CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131039368.19655.583445293861732586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79abb4c8a6291e399fe00bca58879397ce5a62cf3a16bbfe88b7f1a569d8db6b
Date: Sat, 13 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781310393
