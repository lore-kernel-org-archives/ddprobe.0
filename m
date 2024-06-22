Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629F8B657
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719049943; cv=none; b=rgeNbnSFRDeAvmbiZ9vMYlLtlWLYJ5Qkd+/GRPSBr8gtaM3CYPkAhGGcKvtSs1O90mlzeJcp/3xlO4gohqDTzaODT2D3Rvtf9vglFvySYEt39S8ix+daJOV6vgpk1nxh6pRQXWE94dn2ik3rN+aii3fHrn+TIfkuVo1n0l9D9+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719049943; c=relaxed/simple;
	bh=5O07LnQlKmYZT2heu5VZuhQVfDwXGfo04jSxJ5A+aFg=;
	h=To:Subject:From:Message-Id:Date; b=p3BJE6OvVAJ+/CUtwdwU/kRnbsBisbtiKcrJfJ1djGqLlAcE9d2yfabMQRmxGDjcrKUknf3SDz+aZwaGE9Xbs5oN7Dnzd5qxQTyDLNjHyHujgy7IOuA2hpvMq8GQ+0rJ6tOzJamrkB5rRGEjNWDibyMuEsVPVjSe6BkBFI1+DTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6LKN1az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6LKN1az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5376C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719049942;
	bh=5O07LnQlKmYZT2heu5VZuhQVfDwXGfo04jSxJ5A+aFg=;
	h=To:Subject:From:Date:From;
	b=X6LKN1azhxIuoLvltkzX9pHxXfmFEgUAJsyY6u/4+mismBYcVvBBGcffxkum9pML4
	 FVFI+uHT6raRyb1SZLyuWMqDXdhoUxUQ0AIJiETGy3x/3dHuFxrHfKyeDXq9cASuVI
	 wAkCBYZzHdNY8tNRpZi9Ld2HXasUWl+CpraZHkGXLtFyPDBZ2e563cwdCGNykmzK5t
	 61IjPjPzntwqb0nNSTTIlcn60ttpESNbrRprPtNOQU5niqTnTUmBBMWS5M0RfyzxGN
	 IZaSChqbgrhjSr4aw5M5hH8JLrbphNBz6jNhZtwEvxi0Vzvjck9Rbd+lsVpD3xpjtw
	 3ugOk8l9R+mgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3F0C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904994277.30283.4962462265353756474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8cc085523f5a20cd5111403ccaab55863dab2d5fe36f28ff89cb19991cc8153
Date: Sat, 22 Jun 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719049942
