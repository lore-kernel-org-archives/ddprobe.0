Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7A93EDAA7
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779289234; cv=none; b=lQrCsTnfxsT2htbFiC+stxV6w+gLcr5krs1cdcRJ6BfuS2VF48zmKyyzoyR2FX8FBgOGxFaZeYceSD2CVSAXI8fOgBsqHbOPNMFj4SXi8Y5XuqJRh0bhXlwBuvXV2h8csNJ16rkgcHj6/p6yfwmax5UD9c0PmO9XNihWcnpXP8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779289234; c=relaxed/simple;
	bh=KO++Sk6eIS7Ym2bpXZF1S5sAOgpikaxrtSU9yR40mvE=;
	h=To:Subject:From:Message-Id:Date; b=eeGNQ/mXUuTbte6PLLbruJU5942NpCCHiMt49Sf+c5Ler+o6QukUK4HQIAmXhTZohbujNwiPhpz06ZHp9xYdPm0abbnHajb27nshDT/UkuUrI5TgxjXj+scm+90NDZweLVA2a6ZFccSpeKyX6Zx+bsmFg32r40ZDWzny2vb+TDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTHN9bEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTHN9bEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF68C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779289233;
	bh=KO++Sk6eIS7Ym2bpXZF1S5sAOgpikaxrtSU9yR40mvE=;
	h=To:Subject:From:Date:From;
	b=OTHN9bEQiQOHASXWjGSU+eu+y5mpFonRdpUY93IBADXm9fmvnw1US3Q817hTN3PD0
	 NDeOBLWMBJbZi93iHf0V715CSDvRLtL4/07wlGnNwEQ8GiGHnVdoJ6rBbxPVzNcodx
	 Liu8SgJYegHyV5woc+i6K/v+KLcUb+iTHQxXFfu1vVN7m+LwARJzJqRFM2BRAe055Z
	 247GCuGZRihbfTVduDF+QBIyFugZTb35GEAvCqDtgtYFE3hMg/xpLxlxOQc6X78gjy
	 PAy0sncIWdD6YB4nXbLiyLFaimqjGKROKpoq5KHVYkmSDX3aAZS3hpM5Xur+2G+3Dp
	 MQhSv4Dy9sh7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFF7CD5BAA
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928923369.8946.14544769803222829383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2177a78a612faac2e4e6d7a11a38f209c56a5de2d6332df6229f6e5923e7bd44
Date: Wed, 20 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779289233
