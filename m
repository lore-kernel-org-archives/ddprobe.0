Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6017337F8C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788541234; cv=none; b=UETbD29Ev2va7m43yv8Z0wT90kjxOY8Gac4cqwpgwN0Bohh0q7ekUodVAOlBwaUelKqLPvG9DllVmNTQ5G4lgB8QR3C76VGK357cv0C2KvWgO5T4rPUAbODN/apk7+8I0b2kJXOgsFneZzkJdED6IQ5mLkFH6ebnfLdhSm2Oc4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788541234; c=relaxed/simple;
	bh=duBvYWNY//k0WHwPya8i7ZsI9/m1ZwLiAoK1WixdUok=;
	h=To:Subject:From:Message-Id:Date; b=G4GiLMOG2pPvJk2CSBYZNYdFB5wjAiInX3MIaAOpWxVnp1rl1yPZPXLFHiAebWBs2lVrDZ1yv6uRYOVoUhdYi41KyFrRPXeWa3mgL0FclGkXhvLdyUJk/8lWIfj43dcORjCwG1Tw4B/lws36P4aYckZ3CgdRWRCnzcm4Sspgu4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTv89G/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTv89G/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61B2C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788541233;
	bh=duBvYWNY//k0WHwPya8i7ZsI9/m1ZwLiAoK1WixdUok=;
	h=To:Subject:From:Date:From;
	b=OTv89G/I9bg/wDA/AQRGpzAJqlbPKra4nE4m3ndxHLpH2fTlSXlCoaW0F65nsPZ8s
	 CJN0ezyc0egogJIJvpudpcKVxFrM//KvLZbRdfFXvl+GOan55xbTMHGOC0lyAnSFm8
	 vWhqLFufUfJyFKB2jUkA3Okgw6bBp8a2ZQkCbGwvzggemdc9Kugk61A5fQOlq/2ox9
	 BY/VD2+tHoxpr/W2sN7mPZm83pcA5tHWFpnaNqOIjSPcjXEUgDBtt7kziCOFnjjzGa
	 RyId/RsxyoHAa9Iw9hv1DfguyFkoMIF9EHJbuyTkYdprAGKcV13rIZe6h7T1iVXS8h
	 yZzrhW/56tm6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A7C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854123371.5852.7433879891681978264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9af5c1530cf71f697095da813de17bc4d365802b248152137c70e359597bdc
Date: Fri, 04 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788541233
