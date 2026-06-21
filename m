Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5398E5FDA7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782054994; cv=none; b=PiDeobA6LkwS1jXh/UFERA9YoYKupyMYMeN2CkXSjgZTiqSMMOYGXyRkVlDAQk5PhcC9FEvqLbVJbrw6Vu+i6cHnUQDwsEaIWuy0NeJCPcED0/pjy5tSGy4J73R/tTigFElnerY//G8ulzDha7uGb1qPOBixni0lYUO7NpGiaNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782054994; c=relaxed/simple;
	bh=fDn9TL85VXvFNmFwFucgN3wKnMAcV70LnGBY6ZF9rsk=;
	h=To:Subject:From:Message-Id:Date; b=FUkYh3JsUsoQcLViFKx89zQ8gKRbYQBQ6O5jYPTf2u0BPTKtMo8O1x08lFL9U+DEZiAfBEl+vGDcuWAP2EvDu55Osvdm4rKUzuDTbft/lmjobCZCQtOCTG8HmA6u4EjR43LXBRWnI1MZHtDxfsDENg7VN8Omh4jLlXMV9rnsIEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbl9OKmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbl9OKmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC53EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782054993;
	bh=fDn9TL85VXvFNmFwFucgN3wKnMAcV70LnGBY6ZF9rsk=;
	h=To:Subject:From:Date:From;
	b=dbl9OKmGTI/WovbnNR2ladN1DxNy52g6BalPJAbSi0Orh7tIeOBYgXuDJS+1RiMGb
	 ZhcErX+L7rsTZYBQNT7hJckW1Wj6O6cRngjQwdL4HAFKpxWlGT6lDNx3cUHfyOuLc1
	 GnIz7KSsm9JV1GrHS95EMJ1CTsJax/jKn1lVJ24CdFrbdxSsf30xnbaKlmR0gcMc14
	 CGJlyLR07jC69ixF8rksEXzUFtGYHGXmWXksOaqhUSif8emnUPc9kG8s2cVhCoQVtc
	 OT7oBM1+M3vcNgxFNeHSFvM4SyC0Uo9JAjTUsMCJDQb2ROa18l1vuhk/DF8S6o1jbL
	 PXyWJs4HL1ORA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2740CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205499369.30494.17591155652024795117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c7ded832fe566e8f1101964706f71e9027fd3b227933e4e346f9c6cb966779
Date: Sun, 21 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782054993
