Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351EA78F3A
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764425574; cv=none; b=MW48nSVuxNdcy9HWjETfiMOq87q46Y4mx8fLHTad8ie4J1Ry85tqdF/7/ZTU1IJZoOt9SyLMhpLTqjdxtLQAT2H0qJk5+4Ou9AZUCNKlFhVt4D7a3HvPEPfBvgo6MwRfLSsDT1WEk1HiLSHgqtptG+yttlhpD1Rgl/Qc1KUdPtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764425574; c=relaxed/simple;
	bh=N8e9hbpLO3SDuNEVOQaf1yUM2VuM2m2Xz9gsA9elTyA=;
	h=To:Subject:From:Message-Id:Date; b=TejCPq6HymvZmKneQBtHX6eXJ0PwPFjWk/KM9X2SYJbaDsmKKQw79/++YLpWjlUJp8fPrwu0mD0c8JqyIzrgNzE5c86JKOklgSqZIr9d6fBiEsKm4bC5cpq7sWeaomIbjTThHUq895jxX2idciva1u5JPiThv3nwUciOUpQfaiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+eCvchd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+eCvchd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1FAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764425573;
	bh=N8e9hbpLO3SDuNEVOQaf1yUM2VuM2m2Xz9gsA9elTyA=;
	h=To:Subject:From:Date:From;
	b=r+eCvchdhScdfuWiGmYMplBS4+xBo+BB28r3NTQad6PR/K0MUMK9lMbqjZizubk2N
	 veLNa75DhR26fFkAbVoeRBVA5JbmXHwShDpxOQSTiwPwEA385xRKFGfDMBuvlHWn1r
	 ClnedQKS6URoHkMMZ2+D/R3b7CmykBrNiaY3AfIVJrMjhUOVrm97kI0xHiSCYGpnT6
	 ZWk0E2QJhS/NvjcX6JZFj3GrxJ3aktqy8e1aVJcJt3YsFqJL4Jurmsex7j0i+xV7gD
	 2I9xRavG152E03jUGDWUJxpJqh2J7YSW6q9GEUXZ/HVeyNZFiEMsmnwCxqSs5Uwfzq
	 ZVgDxw8t5MS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F44D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442557359.19125.6556162905971298817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a0c79490e42661998954e429b507be7c7ec7c037b5b7e537af3d36aacf2733
Date: Sat, 29 Nov 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764425573
