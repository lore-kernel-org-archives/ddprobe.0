Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4F91917F4
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750823394; cv=none; b=E43i0j/fW3T3HWtu43mlQsCcLax9ldmHapRbRZ14YLcJbyOOxWqsWIY46eFWYxo0/6Bqb2O0SOxsGPQYAP68Xr/wM2vX/e+rI8F5mlclyvTAblUNHRykpcTVXjDNtjI+Qvf7abttbe6SUXPklsJyFkLvqSvPkGtn7gMR8kovb04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750823394; c=relaxed/simple;
	bh=iPU42OH9p8ogS+1soJ4ZuJdDUx3n8ezgnPPlUFTld4Y=;
	h=To:Subject:From:Message-Id:Date; b=MSjvLL+Wn2mtMWsne5vXntw8jlToCehvwHt2HuAcEEDgksHgy2J2TxM4K/rd+ye6JEptQLHlOMlFZ8uGnRg+Z9/51Jnsl8zZGb3s7sfQbaLPRXjwp03+Xy/q/k2JU94LEZynSkVyYJEiYcnR17z2wr1E6moQ95VBXMi7TfhZoxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTkA9AF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTkA9AF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A304FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750823393;
	bh=iPU42OH9p8ogS+1soJ4ZuJdDUx3n8ezgnPPlUFTld4Y=;
	h=To:Subject:From:Date:From;
	b=pTkA9AF/KWStKDlrq025HhZADhE57dWvHaPyRyFSYzZvKhmDmVB6UEygrDZN0Uike
	 Coqfc7OCMdHMn78RIHd6VJbSaTA2lmpjXG/P6Gfb2zbsRNDkZZ44Uq3xkY9G9E+PII
	 NbDKR+IxBWsiGS/xIt4ZPSl/6gOSfo5eddTmK1+NzTJqGcj8sna4h7ZiBpvGK/40C8
	 wgGgfPMtheLkJLE86pX8Odv2hl72o2EXNSiLZSOBqu2IVpu7SaRPgJwMUDOXC68IOf
	 gdbdem4iI2ncYOgqtH8DSVd2cNU5HLJEwKGF0Auzqs3fnChmNAiU7neM2eiE+vqW2Q
	 xnsWK4cZ/7FEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF61C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082339357.31226.4965763611324917639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad31150bab83f5fda7e2b24b33bd23e5b6af4e9bdd2b47e59d4e5c0bbfc7e2c
Date: Wed, 25 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750823393
