Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605F75660
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715790743; cv=none; b=CRVAIaZplKnwZszRct1bDwOJkTzJ3LetJgh8u11ZKlfsDtKfsi5uLltSQ/5llpMcY+9qucMYg2m6XiGjtBFohQqzyX8tQZqZQ38GLhV3fRz658BGReXPoiBi+lMObpIUnlc/SnBR1yhge2z8urQgNIoCcx246ekxDwm+XNeeYA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715790743; c=relaxed/simple;
	bh=qbUH6tLVpc9reyfJuSPzDPwhTbA6fAmaqDWXqs+K8cc=;
	h=To:Subject:From:Message-Id:Date; b=l5pxdpGCEmb30cTxIpTzX+I0YjwkXud29GDhhVPSmEwnm09uZUCUHQ9DGaFOzzb0rn0t0qrdCwGyJJzeeEdb8enK3hdVOrHSBGcQZSNOdJyrY0R0KXDvml0K7uOczf/GyHLk6HPzmlYoxbHgWi13eJO/JypLC0cdc97EBjvVRgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdl/X/2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdl/X/2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8232C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715790742;
	bh=qbUH6tLVpc9reyfJuSPzDPwhTbA6fAmaqDWXqs+K8cc=;
	h=To:Subject:From:Date:From;
	b=pdl/X/2fcfhY/BT/M8MJiz7FULooA5K+MVfY45GEhlAb+UMBN6UEKkEmoaXobCS5J
	 Ja6TpjHWhg74FvDaLaino/mZPrnYOOK0pnw5xhuvzXFgebioJ8+mCa8lsJgaKIULPl
	 TinPgQCRB211vUEOgMYmP9yU6/hezuH5E9NAtC6rs5zjvlpAkcwPerBN0YKzwg4Tya
	 wgBOJszM6egsUJZ2zQow3FGrPXVwmNFeUgSXBszvXXFAUNuY3yTTM195xF7ruUx38n
	 5NThHaAXEstQA3bE7K21W2gaSu4k56RUwX+d2qhn0XzKr/tC8XI4ZAtOf8DUVAyti5
	 +eyQLkY0GKk6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47C1C25B77
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579074277.11161.11515611358570243350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097e81075e8be206111ac27150b4dd13057bbad4cea838c9202238806f62f924
Date: Wed, 15 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715790742
