Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361BF246333
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751112594; cv=none; b=vEOftiBG/WpM0wXJNl0NvHMFxwu4w7BiVsz7ntLy5lA4lAUOAzh46izsAhW70sl36BW/MlTehUG2gNHs4ZE5vgrBpZLrjGOQMs9TOZiDI7M24A2G5ylN2ZTHGI39tFRvncYhi8qDRHaxkSmEDE+/IN46jQefiCiqJf0e/NynFqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751112594; c=relaxed/simple;
	bh=q1f4pVpIBCTwOxINHumufq/BNhFR3zkIV5m9pAA32fo=;
	h=To:Subject:From:Message-Id:Date; b=gD8hgCfUerVQR+AyOKe/hRDLBEiW4QMX5WdNQebn875F8Syc49R00+8KohgXfvsR6lx/ZI/+2DtqyiEcm9+bWf7d/ccU4NsN1Lpe6REyL2J1iRjM4NjGB9Eik6pdgz5jO8HdCBf8Ie8fbMqEuVmanFao6l2hZrZYBD3RDQIMLIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnHPdqFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnHPdqFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC5C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751112593;
	bh=q1f4pVpIBCTwOxINHumufq/BNhFR3zkIV5m9pAA32fo=;
	h=To:Subject:From:Date:From;
	b=lnHPdqFaLx3i0czZUNiCVv9gQeX0UwKBWduh5vLGxkGEFVjnaGlqpoGmUI7HrWGrv
	 gpAWvAFqI0j/rOdW499oYsPJUYP1xNfcZbOBMeQJyPZJQWNaLvVbEIoWAb3KjGPGZz
	 xSfW/PsLIrotnuqvmR+p29by756jeZgRxbY6GFyuH5KYt1euK95lCu0wMdjc/+oH4K
	 wVDZjppRrFCSihCgCJpX0lvtJqXk4nc+OGGFrCxyReZsHXw0ZDQojZ04BxvCHoMAXH
	 OP+ap4Kgdrx8Rq095y8LLkdzL8YCcyLgKyQK3l3hinuF8icObtDJ+xrPylZ8h/P+2A
	 lIr1FjUE6yKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91074C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111259358.14732.13750729304112973452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff36f088128eeb9f80f6b1108d5cc5f19a36509b94d44606d39ff44a9af7699
Date: Sat, 28 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751112593
