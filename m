Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A26C2DF144
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785598834; cv=none; b=h/GzBmobSMo4E5gAUO+QeNYR/clhGldtAz5okWotDNTkDJaskpQ9qVH991+RUmKDPeexGD4WQ7kqjrusg1kjpNuiBUj3+zd7+qDhXX8do/GM1wPuaLN9XO4+I8pBF2YkMOH0h7eAOrO6IF9yIP0KWZvtNiFECW0C+RJ0jj+9C8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785598834; c=relaxed/simple;
	bh=vopoSzr4MhcfLJRqdiizvKjWuGW2B3BXn3OJlkScgdA=;
	h=To:Subject:From:Message-Id:Date; b=fdkickUw6Ia1J97QF/Q0o0IflHM3azy1OwBdqBzkVVr/hK454prFG/hX/lyfIwp820h4Xr/7fafbOcH75JnpcSTXuapWYauxNAVXhInlTXQYRsQlCZu+a4ftar4VKcHla3Ky+2seRAItL31MClP2pQPCmMisteYgyOI6llS1vtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsc7zNdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsc7zNdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADF3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785598833;
	bh=vopoSzr4MhcfLJRqdiizvKjWuGW2B3BXn3OJlkScgdA=;
	h=To:Subject:From:Date:From;
	b=bsc7zNdQYjn4XeiIjaKpB7adHDkGzWah9hPmXd321hxye8Pvq2o5t9v/adTpAHvYT
	 duZM9+btfgk9SCYu4Hcel7wbyVY2WQduiNC4zQhGJhkk/7UFjLYADq1k9ElqFncHtX
	 r3JRZIsj3ANn0Ax18RCnSvzm/NSHQg3pubUInWHt7znLoHluCvQZ4E5SDB2rVnt8g6
	 1tjv91byHrhnaMyOKKWvOTKl/VDQPz4/s9ArzBsAJSel+NaIoXlC4TahpMAWZk+xPr
	 tZ0h3O7pHo8xrLmvvsumOThuPi5L/uqNkVXJ4TIzj/ZuIQlAQ3gSctLwzNXZ7tUdkT
	 35zemx35KcysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6170C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559883373.5314.4095706731281729634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9566c181d46981ae151aa1cf1cb7366ba125ef456f81262757234c5d32261d17
Date: Sat, 01 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785598833
