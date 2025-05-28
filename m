Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E0D2882BE
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748446194; cv=none; b=K8oloNyKJgQgfTTr55RD1NqD42Xkse1xKV2jF8PxfUoq/5VUCqCWmrDy9hj2XwVjN81djUd2/tgH4ZAxnCR2QYpkDxf/7p0XfIMWoR1Mmbi02esYMi11FBXDU6S6Wn1lhEF5XEIl6ZJUrqZ4v0WH9dIDbdTYqw9G9mDPrX/cm0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748446194; c=relaxed/simple;
	bh=mbnBLV1lcliplIqqVIwM/N8LsHgTBw/H/9WbkZs5tkY=;
	h=To:Subject:From:Message-Id:Date; b=u8j2NH/GA7Ttu07Se2mBojOxe41Y0G45iyptFHQysSQVZ4DnsabBvF00OHv1vPPeJtqg7w764cVIXP2q+CQ2OLademxjRsWJQniEl/DZzQMHgvyIlpd4votj4IIUS96/4A+xPXshC0VyBP1MXd7i2K7AdxVMl/ewvFstyLYdL9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ri0LGtd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ri0LGtd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01E3C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748446193;
	bh=mbnBLV1lcliplIqqVIwM/N8LsHgTBw/H/9WbkZs5tkY=;
	h=To:Subject:From:Date:From;
	b=ri0LGtd0Aqnwahch+NSg6rnDUT5sfC9jfTQ/3NFy6s1Aqu2Yh5f9Uk+Sl45yHK3vH
	 blA+uGEB17T1ZKZ3i9NVYTYKA/lV6RpA2bldbXSU11ljFCvHATDDlO+BIDVMY4xIRJ
	 gI5g2Soi+2ZezMaAFaqP5QzCcNbgtzpr3Sbr478T6LmV3g+aPWb8wfhObITmnOhLUe
	 vFtTQHDAtn5u9z0PI4D5gEEyD0In96/C6t2R7zO8ySjO8VsZntOgDSGVmkwS0bB7tO
	 fs6OAzZ1NloOiQTu2jqd2SYdjbMNuUgPZ12qp/cneflImNr1r9sW61oLmzFLlbkSan
	 fHyA5SYZGadtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFBC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844619358.21755.12639395665254517870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dce5a0fe2f46bb22c2788f60c3ec061c76be31208fc1249859867f4950818fe
Date: Wed, 28 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748446193
