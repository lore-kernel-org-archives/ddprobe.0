Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFA33B8409
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786977034; cv=none; b=eWR/uAS3UuHFKIaliyOpVi6LNEZFFoSm1hmTWxALO/V1Tax0X5M708Fk28XJyctrGN5Lf0NMPan8wWRiksb4EeCYrrSrX0h7Tm96psINoS/Y8RxpVBkwsvBwLxtamCAY6Q77RWszj/qSrciDBmQDeumK4NBKkYPP5RkVF1KPPXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786977034; c=relaxed/simple;
	bh=AxC2e3xGq1hRDjEc9ZIYvo10EfX44GCm6uINrAxCou8=;
	h=To:Subject:From:Message-Id:Date; b=S/ZFIpHnf+c5sCJ0+s91mFWbudtpKx5Clate/5k3SUlfgHgUX4KCU7XwVFDxGjtEUaDzVeDwrUAkVAfWzTcPpW8XIghJaTUgTqOCnQ6r/yV9jj/0x9cw2+gEQignQxBvOAa/qAcmXlMZaqYrm3Ctbo/fQRUmCjsCN7wWX03huYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYflvATA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYflvATA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB26FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786977033;
	bh=AxC2e3xGq1hRDjEc9ZIYvo10EfX44GCm6uINrAxCou8=;
	h=To:Subject:From:Date:From;
	b=SYflvATAeK2OYMDAlgnPZy6X6B0D3lzXtgMbxI0+8i51BJc8NC+2DPfWZqDYlTND1
	 cFgOHK9DmegyCZkVzea5FCj0h/K8Fu8e/OC6QEuELLeIddmnNZAxWEryXN22p8ZPCi
	 L5LRlyQbCz1q5FoEtvgoDbW5NieIH1Vg2BpVLLWiwZUwXA/x1gHrwiN+4U0ul4Cv4r
	 A01F6XkKGhnFxhjeGqc3pY57fuZkyyV5AUshmP0evk0mcvqg9Sx++8rq5KzGAnMB8t
	 81zMYEvP9KvELgoq0iAXQ07DwFb1Fvm7RwgU31bT3y/QmmyQL9/VwuvvzRy1RwlSXy
	 +nUl2J7PTs1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB142C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697703369.19685.4317593934151514918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5712ce0a8d709d296d18509b108d6cea80a945c55878379805aee15cc7b9e661
Date: Mon, 17 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786977033
