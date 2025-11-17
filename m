Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A772BF019
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763397714; cv=none; b=m2D/6e/3uF1YjhO4t2hIZS8Qu7B/Y0MpTTn9L8EijXxOM9r7NRjxBIjEEry+E3GyIlHpdoGyl5tjBltDt5VRQPUT3RoUDaMxce7Tmn2xZZmcLTQmVElgytVn4zSslSCk5PDHbacSffEiUutVcRDXJxroBexOw6X15mR6kbwSRPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763397714; c=relaxed/simple;
	bh=YZifPtacgyG90qgzskgSODvKLNwsiywRpSL4uOWSdss=;
	h=To:Subject:From:Message-Id:Date; b=p6EWlmDhUmt3tVKJwqPceROtMQJjkJA2/LOWjin1UW4xptDKEF52cp9MKMY45+2jTAgVXlxyu02tMTu6ZnBsGfUV37UuqgjsrDonV/2WIi4QcGGmtQkdypZZikfdIQd/3XaLYXZkrQ55WuM111q3okqD/YkCs4brwhl/aKkRhYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sg8ne2P+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sg8ne2P+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D381C113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763397713;
	bh=YZifPtacgyG90qgzskgSODvKLNwsiywRpSL4uOWSdss=;
	h=To:Subject:From:Date:From;
	b=Sg8ne2P+KLok7Nkoc17/stBk/mUkNem10hbO+iH28tVs5vS9d5yiFit4y3D8kf1sK
	 qOsCJ5tGQ24LTTrjFVqqHTSe5Gxv69Rw2i6FcEkK7usEsmG2ULmlxdIfaFBJ7KoPQD
	 9JGRIEC2Njv978WIcNVe+K5DQh0h52/XIJs602ioNCAMrH3AKd+wESfw/wBVvXlcMq
	 hMcTl4fQ53ExXGPrAwQzV1WiaFPraI/4zbAtoGB9dZYdDmghC3kLNj6ZZW6LqhZjLN
	 zmUPgx4+DcQPQroBNxlwg9A5JH8Yf2axlCpBomnAmIJGRf4XtKAejU53f3x/8MWO1b
	 trIA2djvmKOiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D59CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339771358.3680.12921926015190387587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806b1ee1349d3452affc5efa9f9f4b397f35275e2b672893cf3b147a0541e286
Date: Mon, 17 Nov 2025 16:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763397713
