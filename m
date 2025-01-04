Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479B6168DA
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735968354; cv=none; b=LdKO+pMmkPqgsltFqjni6NLchVp+KWh2HPuLd6Xii7wF/H/9fnncPyi5nCG6+BSbalNCZ9H8TBD7y0FRtL1vcvuibyFGjIla9LzCRQ5nj9E3vx0/KrCRyA11A9I+GoPMPewt8COz7K5mhTyqToF7Vg1GNVmhCxSMrfGpM/wOhJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735968354; c=relaxed/simple;
	bh=4gnS95mPdSL5zV+FONe4UemlG08rf+C/lmqA3Q5Vnbc=;
	h=To:Subject:From:Message-Id:Date; b=DoxZiJq0jbxr23uBRpzlA19HOSbO3YsO02/PxuN4e5VPzFOzzWOENIcVboG9hwQm8zbnltAVQ32kWgZdvbeXBRgNRvWtD5oOd4USZHsVuHim2GU7SDxoOSGNYzgCLCI61fNHq12wJ1pz7vKEUEcecoAUqOm+Sxvlzz3Aa0F6zXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecpd/U8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecpd/U8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E46C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735968353;
	bh=4gnS95mPdSL5zV+FONe4UemlG08rf+C/lmqA3Q5Vnbc=;
	h=To:Subject:From:Date:From;
	b=ecpd/U8MeCqx8kxLl7papWv2zV7BKtkwOPnz4OFcUcPLsWprqW476Duptwu3Fwp81
	 9FdIj46cJxkdF1p2NWFub2Zdzvk75hdMHcV3yPmebNYFhB20zMXQyKtLg7pqEqL/ul
	 w0AguLYE0EQAZyKDvjmNHw6kDgpLJgrYsgHa6EOAehgu+X5P3z2+6JaSMCOe4KN7MD
	 nbCQ0hnt3d1ocq7k+/5dsQ9nRpVpCeUE8P2ftli45+IStbHpFHMtz+Orh70svkXZck
	 cJk4eUrkRQeABVm3v1caxKU/7ZWoyWB5PNnQR2GHhkpWot8MZX2tWx8FusKzYNC3Mr
	 gkJnVQtoGXJUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3E4E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596835361.23803.7263483843513345431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d20670fb057a841689c8ade55e50786bfdd6ca225ad7811ac20da1864e5283
Date: Sat, 04 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735968353
