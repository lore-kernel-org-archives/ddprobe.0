Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D241DA4E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730035554; cv=none; b=ACrq0v8qwTpuD+iBtKpCIeLEChceXsdWt25k1zTU9XP7j3w2/v8Sfy3TKpfMB8Xb+qaBAaBoeV5/JmjhkoBD9pScAYA9h/scP28B7Y70Zm/swOJFClTZaMnGwQ26sKtj1R1JQU2XSQDnRbmg2NPZUx1wk9zXbIpmQ1j3EDIifM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730035554; c=relaxed/simple;
	bh=u3X7j5ym4K/Fn2a109eCWe+Wcv7f4ZncmAa4GrgA8Is=;
	h=To:Subject:From:Message-Id:Date; b=U3Z//iCmHgH1qUnQEqiUfS+ITzKLhMX/vILDupm69WQSP8kqckNkemhUoXG3PNCk+jEWHJYQfi4v9NzLpecChjZdriqFjZswl6WQ2eyhk8yUg7utwdIV3t+BOqLVLRGcKT9nvwR4lDf/f4p9aTWg3NN5Tjpr+LquLcejMORS3zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuudBcvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuudBcvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB6BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730035553;
	bh=u3X7j5ym4K/Fn2a109eCWe+Wcv7f4ZncmAa4GrgA8Is=;
	h=To:Subject:From:Date:From;
	b=ZuudBcvmaqP/PZc5jrXydDw+zPyXn+1MJ92OkdsgqsZmZyGcTut4L9oOzw9pV+2OF
	 wIQF9dhC9s4KYJdUY7xDlnKKIdmfHLHr8AxsyUUPpMWLXQFWNWeXS0p3SdCqYKGXPE
	 VfdIBdfu80yaT3ByI0aDOo121U+WswGYgIUB1p09c/KjJS2RT67MgtkosLOt3z7b/a
	 nfGR8xECr2pX2NVZsavWoeLrmAQx9ACkvye9v8CoIcj58jbE0ky6DzFbtUKzmVaKHN
	 NTA80ZJW35GTze8A+XQ/ZtzGkOZqXIf5K06tG9DF7Qz1hTnZcJy1IyOMuaXYUMKDyv
	 Rjq5CcYkrgRuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9881AD116E8
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173003555360.19798.14541452336981484781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e13ac3d2e5c7660fe0181a927452f2c7eff15ff1dee0059327c91a56cdcd200
Date: Sun, 27 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730035553
