Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412641B86DE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720553783; cv=none; b=IHejF9im4DhCCb2Zx5at8IfZj4YC/RJuOd57FkSa01j8TnwENuBI3RBwVYqcGElZLgPjUEeXL06DzKL5wqENkP7R2b7C5dn7wNBgC10WHI+I5dJayAx3VyVunAln40HbDpMDbNkXK0ekLgSV207VH8PWQUjJrzlzP99yb39ACyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720553783; c=relaxed/simple;
	bh=NJGO451i4NccrEq0hHrSY8WFBXK9mIx9ty32Fr0UiJc=;
	h=To:Subject:From:Message-Id:Date; b=JPofDd9x7UvLE2gDyOlfzpfg89PGSh/DGG1aBrmufX1/7RlumrD9y6/odwthAJjIsnpbR17UE2MkyuQSrjGljTIFoxIb83VI9dQXuQMhnY21A3HWHox3h3wfzO0eXiMe1Kog+v/t4yVpR2rwVjW/ubaN2PuUPM0uTj/cNYDRWxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDmyURE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDmyURE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BD9C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720553782;
	bh=NJGO451i4NccrEq0hHrSY8WFBXK9mIx9ty32Fr0UiJc=;
	h=To:Subject:From:Date:From;
	b=WDmyURE7mkQcEfXwiAut94y09pIrW+mP7Ko0v5vSfAAJwz5pNfop18Ue60fvzo5jK
	 6+E0mr+s7Z2rdTesWD1KiGUdpfjACT4Lkl7DhhnyeafELoi6zuGgl/ASsb+5Kvzaew
	 HXTpMcfWih2lbi4W7d5IgCyewzUs+5fERTZnGAqfweKfIq1quffLkEqDQRWeOs27K0
	 0G4KI1xtyqLNL80XZGiv0TdzNLJRrG1NAk8s5zIHYDhV5orWuo1DLPRlJO3khT6X76
	 wdZVU4evevxySjj09O59x4m/VvtpknpOR0M5VCzva2Ir75TkBjHxM/yJgDDJTIki7+
	 qfabflsHXhYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07B7C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055378278.13659.14833185107980628722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f46ee2031b12687c7de73fdfb70667bd5dbe8d04c1d9189a78691bf01c166a
Date: Tue, 09 Jul 2024 19:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720553782
