Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A4A4A0A
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732350354; cv=none; b=Dvll/SqmdF4Lxy1qNWe8426SkV2jRFwBK56TXDh8hz/qfgrtohV2KyED/Vu+JNYWmVQdj9Lbu6YchQVstBsHJELxJShueiCuk2rWv6RdtsWnEqwpB6pLITRgZt43HQU6S2hpAQU4j2PmvltfziOZhrKTCle7HUokmKhbR6d5gP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732350354; c=relaxed/simple;
	bh=jYhMw7umPrjjm8bbGPPaEGgXX+5k84AkV0ssdPJfBY8=;
	h=To:Subject:From:Message-Id:Date; b=fjOxoJrE8ZvnMPCm1F99RkCS8khcvWusyaYJDlZi/rrLznUV2MRJ8pZCrtGxmg3vhLNPcEMOeoeupOWHh827k0SkplSC54Aj7xlkpaLRwMH7lGXFwwioYD5vccVDBJ/cfA1wHHEA3UzsQPLVbATBxs8kuH4eEjWqNvHt6UlhxT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXBf00fB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXBf00fB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7E8C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732350353;
	bh=jYhMw7umPrjjm8bbGPPaEGgXX+5k84AkV0ssdPJfBY8=;
	h=To:Subject:From:Date:From;
	b=qXBf00fBQ8odoc7yo5uikcCqucgCIKSsRKlMO5XgQ6a3mbY4nVboqCiQ0UQyChBaH
	 VEOTl53keNNJ2YoXYxUEU1TJFqMEacVzXV1EMrR78YU5BxdMbiIWhygPSBTP0qziXw
	 hlsFa2rTZQP91QIhUSgtLWNQRLB5ZEanW1sFYsGe5vmrgSHxRucIQrrIxcSfTbFVuu
	 i6qaiH3MQ0mRQ5UZjABI+PCaSVJePCXGowzupwr9jqqz/SX9d0f7q/2fpg0Sns+STV
	 xsACTMQ8aAzYpYDnYL6Au08GstzO68/Z+fYj6YKjwddV0EYg0VoW9S7MsTRbmdREZE
	 VKgqxc9iRMzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997F2E6ADE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173235035361.29023.13307812705200675285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02e2bb46c4d2ec0db1b868c063472afab5837fd1ca7804a7eef60fca348dfe6
Date: Sat, 23 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732350353
