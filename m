Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3860E18E758
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719417203; cv=none; b=tl4Z2rjO5ZiwT8W6f2qaq6Cft4loGfZQC+AbfYmSaR0SokEw6BM4a3yxxUwic4FhiHih0o/KfC4m45knH8Wk+4G7NEJUteXICJNqaRByJQPKMr+H/pNKpkvBsz1T8MBtoVeU/Cipcv4nIvGY2h0R/O+EcZJrNa/eqAMHPm1elog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719417203; c=relaxed/simple;
	bh=Psdp3hEa1k3mPUJMu5CMh2TZPI2zaZM25msoALqSkrI=;
	h=To:Subject:From:Message-Id:Date; b=pfVNquQXmarAKvQpi3erU6zapqkP7nzzyGzKscMD41ZVxvNl0vr6Yh4N0wLEKKHBIjwZk1olpi8KtosD5zsKQ3PPs/NofRFPnQstKBX52SJYjb3V3j3mM1VBfzmGNR1UtK4neng0BdLd7PLiaHKfcF+loxHlM2ozw8PP0ZCnB0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqwBti1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqwBti1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D166CC4AF0D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719417202;
	bh=Psdp3hEa1k3mPUJMu5CMh2TZPI2zaZM25msoALqSkrI=;
	h=To:Subject:From:Date:From;
	b=GqwBti1a0q6becOUu2x/ezC6Swl33VI+VTXPQ6sSJyMH/C2fRmsyKSWPdy2UzlaNk
	 OLyrQfo0PixMWWchkOoR8BHWg1FKdKKVsEATwpmkx9y0Zqxx2xev0ygugG+Cnf17qx
	 v4vvZA9dxu6yH1hsjZon0qTGeg1sZmbTbFs4hvPknMRP/fsnbcTwgsd0G2moNwSj4J
	 J9Tjd0e9I6WYFRYo7o+7+WqgOzxSkcht7K+YOCmeSxRMNwTaGE1L/Y8cQAHhhypwLg
	 23oJNJfFkowpc+3nmYqhS+uVrpFzghI0+dLO3env3hrJhKzThPnvDJ+wVYfgyEcNLb
	 XbGZwsZQjuZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CB7C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941720278.2863.16652356997849735085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c98bd739f4210ac3ff7e179d096c6898fc063943c97c0857d87c278673f0643
Date: Wed, 26 Jun 2024 15:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719417202
