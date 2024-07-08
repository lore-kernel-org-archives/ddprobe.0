Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610784C8C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720401383; cv=none; b=ZmHFBVb6djC9PQZCeq1a7Lgkerl8su4HiDKDeNtviyPCXtWw3iXfW9H5o7c+SNH08CtVxqUs3ROBcgP4l0mko0ia+47sTJWK6sBLKnFss4+D/y12aIBO4CmD4RUKE/Xbt9Mcc46Hw2ew5ul2/naAn5thJAP95ebWPDZuvWZa/EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720401383; c=relaxed/simple;
	bh=nReprzhHcQFK3zhVNU5NdAK+oIC70XvK5HJ+nx+mcFs=;
	h=To:Subject:From:Message-Id:Date; b=Vtm+W3Bvnezo9Yo2WAEXvV3Ypd3StWsh+nFs1H7HEiyyMV6Z1ygpSVdp71P8vbeNueEt1SbxosqnNZ4dhccSNQhElsGNCcn+YQdreDOgH3fzFlwA3hkzth8qx62y5/7jKmi6A83MB1Aq5v9ggZBZBOgZBpehPjJiYvygYMLYV3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/TIgwz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/TIgwz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6BE0C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720401382;
	bh=nReprzhHcQFK3zhVNU5NdAK+oIC70XvK5HJ+nx+mcFs=;
	h=To:Subject:From:Date:From;
	b=A/TIgwz7j/44KC6+MS7VJfwN6ekrSq7V6rJTmOu03W2E0DORe/X31XS36/JHsOLzI
	 MbztF+8iUWrJY5E918mdcGhICKi7r5pzrRZopdAY245qXlJ8xiwJRHWk91DdLEdYLR
	 OfnHsExLocyEISIspqaPpIz0ww6Dqk3jm/mqtfYO2TPhLOg11taVPaJqileo9fYGod
	 FHHW9agSBdQPaQUC08S7QEfgpzmBgcQ0nN/SSsyuu3dSSJCucWbmRLDOALL5t+/bOP
	 Ufrom5waHKxTjot0+erUzyretrFN0KHrwCgwGLv/M1QAsWyeZZ4z096xd1/EGx7PST
	 s5SQ2PNhwVrxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6ADC38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040138278.21909.7185270127002359459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503080cb2e56668270bda949223f7058708105ef0b4572a8a46af499f1615f80
Date: Mon, 08 Jul 2024 01:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720401382
