Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD701367
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752385794; cv=none; b=utHFTDE1E4DheoHxDiJ8Q+oMg5AuPm7zr0ig5uYpIWjEz56bIK+EoU+xCmAPsnqqQlpTeuyr+N3cICrv8oLkJkMLruIcxPBIlXuLVelkLrIdO1+cG+IStZCwiyRdHVhkqhtMQkfp1N1YLxM9haPG3/S4RjYdIpBHr14jgguxJJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752385794; c=relaxed/simple;
	bh=peB6y9IkUyfHUHZqf/ldErzAkEsVat2j83tx0i80FpU=;
	h=To:Subject:From:Message-Id:Date; b=r3kSYG75TGgWaxffaKEmO4nUr3RSfLAU007JFsqcKfAJfznPWcNoJsbhjUiKV6x1+qJoOiXIjzLPATT7z23ubhAtIX5gj1Bd9nFqfCtBv3I6Bi3d/CW6GQibX4ypy4hgWv67Df/RXFJfm7a8FzFZZvB4IKH2RtD6EtRNpI5vJe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXO2z48m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXO2z48m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2634C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752385793;
	bh=peB6y9IkUyfHUHZqf/ldErzAkEsVat2j83tx0i80FpU=;
	h=To:Subject:From:Date:From;
	b=bXO2z48mWzGZMiux7lNrcTZIdDghJGpoc3j9cic/B1bPziO/6QTvqDPZ+DkGi3mUo
	 RDVeajSU9n258yKlKA1qVIibmdSZf4hX0bgnOW3rQs0c7komP1QO1MIuGqMKMfcYJC
	 V/6tReFx9AAXGYyruO6G3RMDD98ruQDP5ti1vMHPUX+7LGYEJsRaWXxh/yxDkchlqh
	 KbHYAGUYM6Kvc7bc+9T0oy0nAEesUbHFc6EQzat4+WndBKovInCLo3DRlstLvLtp3x
	 3rSWS+OnGtu7tvsX1/vfm+wKhgG0Gerpwdx2N7+gTUuNIMVOjcIFb5a5K94fUTvaUO
	 2oRmSo4RKzoWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF7C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238579358.25594.2270838931529788158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5447882a8055c9243f0ce197b776da5fff204116eabf74a3bbfc5357c8b98cf
Date: Sun, 13 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752385793
