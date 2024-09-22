Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240F029A2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727015754; cv=none; b=a/xjDKPKnyqmIcjHNgNqTkeSQTZ1ICNfMSizB/SomxBlx+3XOXLEmXEWrFVZI7fQayTgz1P/bP5/sW+Y6JaLgMYPMuBb87YiJasHJ6YgGgyN7aUXn5EL2xOvSjS0FA6ts5c9CHhfITNK4zjfyNYYKq4e9XM5q2G7JCdfCbipI84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727015754; c=relaxed/simple;
	bh=ofEb6e+ldl44U7b49g/nCScW8VQTUP5p8qUK5k12ZNU=;
	h=To:Subject:From:Message-Id:Date; b=YPCi38zZk8+m9uTgpVS2B1Pi0u1aAaj8Cq1t8iLdjXYQypHGPPwqWUof4HpHtA2VIy+K4zNPnSqxoZ9PUpOz414AlW6j6GhIzaOxmatGj8kdHWdVQV60z3eFHqNrE2gPhHxUejJBygscpiACu1ysib79FwTX45O98wz0Juz6Ir8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkyI/KIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkyI/KIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0D7C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727015753;
	bh=ofEb6e+ldl44U7b49g/nCScW8VQTUP5p8qUK5k12ZNU=;
	h=To:Subject:From:Date:From;
	b=rkyI/KIXmrxQPNlqUB/ZXDRSRWw+OIjhXVHYaan2vIpIJUhAO3H7aIabZBeDd8uYb
	 pPM5sZFQ4/IWq3wIDU8NMCA1ROgz4h+k2+VRb5nu+KuCAtu/yGYt6xAaVa8VZVC72v
	 hRTeOYS0mvdSnrDwDDSt+me8G5L6FcUrvkadkamvJtjXXLpj4bAYn5ZpNb0MiJ/4DF
	 cN2wVOaKLRmpg2SsknXId5SmHNBpqU/CQ7QJS4KaWA7ePep9yWFoQ+k3A71keSpwd0
	 YEFdDTEMdsZ+pwO+ctxiiHEgPRwqETsmVW9VIeGM9s5nDiCfy+OpRb4hZM1r/ouZU2
	 7FqtmDzcJKF0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3CACF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172701575363.30191.16377853481050877909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f9706287338e612c70e2d0d3a639cf5b8dd92c492895893a7ee802aff1e5c14
Date: Sun, 22 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727015753
