Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1423C17A31E
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769253234; cv=none; b=oe/ighsfRDSA+UwaPtcZ1VAictMWqHVZC1Gn+3YcuZ6MwsmkmuM6JC2RrpxWIqQogf/0UHewohxhBJ+te88iTf/FPiN4Tj24U4zLcCHtzYXWxl43gWVdxqdx4CCDvf18myiIwjBzStSUD1tDgi3Tx0McKQdnOG2ncc2LREHAOVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769253234; c=relaxed/simple;
	bh=jVCm4qk2WWhtxboZGqDRV13LPHgv2CdUdSZICkhS/Ok=;
	h=To:Subject:From:Message-Id:Date; b=CsyoY+CreLWB5eZNHXPokXw8/7bh0/QZNgZwS6fO33m2fqNR9fY/gtL2cL/q5G0KTaGBD0UJhlamHgt1vqgqq+4gBrmeIvgzpLr5bZHBNl7m6Et2YCs9zz3qZijCfL3aIHSSDMBw9pXEtSMWIZnoZ5DBKEUFluDVowMd+jrK+qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzVRcjyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzVRcjyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D4FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769253233;
	bh=jVCm4qk2WWhtxboZGqDRV13LPHgv2CdUdSZICkhS/Ok=;
	h=To:Subject:From:Date:From;
	b=XzVRcjyPF4jIGnDPqx1ee4WqTJlK+PCMxnFGv5LXwqWZ+X5poITa5nvkNWa6OU7bJ
	 tTpVEsGeTyAK98CVPFFMXHcZkgD4wq6hwrwInWXILMmrtXhVqG3D/r0nv2E9lsX0q0
	 u8BEUTe8ck5ji0b4miKpz0E/YPtMTga/3Cw8ZLe1wiPqG3J2C+fjPuIfFkXnz1XdGE
	 vcnR+TsQik3vEH03806lzOVokntzhEYB5H3OLZYUhcqSe/z40HKuuGUKNnaVwkNzaF
	 RHJac5YU7jJtDQKlxsHCwSRJeFER2GLd0svxrcJ43u68BSk69FAY6TzGz8KtcaNO1g
	 3ZP/FGweuqkDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28DD715DE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925323357.13399.11245864043571192543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2210284520afad09458d8f374ea6094cf3d3f8bb232ab6dc46f0201e26611a
Date: Sat, 24 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769253233
