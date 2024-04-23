Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3141946B
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713846023; cv=none; b=a2/1JGPoAWaqwiS2tTP0jywFifg/Yykhkgt5iIUTapFPuPTKJFrWnYYYaTQ3aIJ1qp021z63nCp8UzPvs8Eqpmh8H5UpHbh2hQObqFnU/MShdx35bF4pw/GKrHU8tko4nxKS6ku+pghZ7PRnP5qO0qbEz6+ZakCfPchescJ69AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713846023; c=relaxed/simple;
	bh=EBKWS5i2wQcVhBeE9ukURJnVw+4tRFYLij7qEDoK7bU=;
	h=To:Subject:From:Message-Id:Date; b=Ayxo3B++jK1jWeEuTXRdUTV9RdDG+J2DZdj+KM+YZfbhs/mSxSImrmk3VeHwge7dpdYxgnRp3kA4PzoKClyQH3U+DbLCjzi7p5QIKDVehK9w4rcRLt6vSahw9eV4UpZod1Gk2u7hdep+bpqm91VrNyAp4z4zqkZMH3F9HZcMUdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWEb19V9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWEb19V9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EF2C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713846022;
	bh=EBKWS5i2wQcVhBeE9ukURJnVw+4tRFYLij7qEDoK7bU=;
	h=To:Subject:From:Date:From;
	b=iWEb19V9FlK9Qv1BGtS87jTEwBSaKGUX3v6q03eUucYQZbLTsMAPDEV96Iia3XfLN
	 jfQuGjhCWuAXjrmch7Q2LSv586qMLtIzB7m95Ocvv793bT6069ms5oKWd1zGHhk6Tl
	 nGu9kanuTW0zKfOb3672u6PXN9v8aJ7bXNbAunFdsyX528OMSjcNN3O4e8/Ja8ZkMB
	 r8vapt1JEjxnddcGAQuZOE0BR9gJd8mqv2jbVarlTYeG6eQp525Kk9EjxHyZoJ247W
	 7OPFiW/TQo8wSXJ6kiKnyaqNbx55/lDpfPg2HVLoyXjdWaXb9lP78pRqA+xaamSUls
	 xV6df974y6VHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD29AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384602283.4778.2903709085656671101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003a01ff852d653128c2427590b0b9d0283ff8c40a2fd6ab51238788ecbad702
Date: Tue, 23 Apr 2024 04:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713846022
