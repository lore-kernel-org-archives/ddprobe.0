Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B9EC2EA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769776434; cv=none; b=DVHZpow9aVydY21OXiq8pr3zSmxf244oQj4IGfVfc1u0UaXTl9HQfP+mBA5nIleDBhYnQfxDGXcMKMsUT436JwA9+8h2K3I171tYi7WxeUfMSn3BwwwrDrMLAuxDXH+rB8foDN3k0Ivdt+Vc6FS/OLvanV3iLDHtj6neOCoiA3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769776434; c=relaxed/simple;
	bh=Mg0K1t88h4x6Tlvm3JkpkCe7svwgEP0sOZfuus8TsVM=;
	h=To:Subject:From:Message-Id:Date; b=bhVz0q9aGjCP1akPa42NmnlLx94WJFO9BtFg48QChBJcJ5dCp9WYFd4Gx7uDv9oueSFkvOS4hqdHMaEK0bTjtHEzOnKcm77NpQENSy1hyMMBYKwJxgKD2Hjgk5nhdEHtP8C+ad+kGQxfaJMQjdnoSwWrcGAoWMoDDDBKjOwEMuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlShPqBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlShPqBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F3FC2BC86
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769776433;
	bh=Mg0K1t88h4x6Tlvm3JkpkCe7svwgEP0sOZfuus8TsVM=;
	h=To:Subject:From:Date:From;
	b=VlShPqBSAFBy6eKF5DLWQAMESIajanqfxpPesocOdE7QYc6uEX2lZOgXTgBfj3mG6
	 Be7xddUBsU4HMGjQLup2mMk8OF5K4u3hYQJIJybvoeFoMhZZhxerq6GwIIEkAQCCdx
	 27xnSphTtvfg+FL8INyUYAe+17Msi350bEfPm65vivs2unNtdQRGtCHyN2OeRmbwjU
	 yWODcBaADnR3wZb6KjUVJa0nhoizWiiDt8cf4I4KHpC/xSIy5sf4pUeX/MUzqj+NeU
	 oanQ4SXzFvysSbEuZ7GezNTmUAScBbETP4vvofgMG3B+Oq/VQoJyxCLkIBN5pMJ1MY
	 LgRsJzDJYmOkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904FAE6BF09
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977643358.13477.2914875994306480556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d322a5eb9f0be7c048fc7f52ea0408d2d0fc3d684a0080bd4802a520af8c79
Date: Fri, 30 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769776433
