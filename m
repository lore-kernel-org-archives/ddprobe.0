Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3039D2D8DB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780769674; cv=none; b=IB3ztF6s6X92zGLwOZT1j8VzznuIB9D+2+tA460BJLB/8YD9TpC/RExWiNFRjgkDwq2Vk9LvBtZtDVb8XGt+0gerAtgGUVlD9Ypn1RH2MtZm/K4kynvNDC7LqPuU1KYSv1MyH6FNJys7v49x6+SANm4lpuMVSihCfrfv5thKU3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780769674; c=relaxed/simple;
	bh=g7DO9jJoF4T0qjSwbt4Px7nQaUzBf1ChnlaH7dgSTBw=;
	h=To:Subject:From:Message-Id:Date; b=EhNRYc59nJKm6iJA6b3aBxBqueYFeEZHEHzzVe/iGyGIsYqWaiJ77llDhsLUyhheiOtmAfC08cPWHEuD86c1yFXQqaGSZ4PZaWJi9e7C/Gnufh6K9Z1vNKjm1E1/zA6LyM2QCbEWysr7JrAiZancMJmwpwQdSsk8O40NDh9oiWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axiFp8VJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axiFp8VJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E30C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780769673;
	bh=g7DO9jJoF4T0qjSwbt4Px7nQaUzBf1ChnlaH7dgSTBw=;
	h=To:Subject:From:Date:From;
	b=axiFp8VJJz7sfFPK8pfCJmtUnxsHyjBe/yAnpxVQr3OGo+XTzE2wAG2oYHuCHogl5
	 NBa6CC9ckHhb/l/48eNuTV/S58ihxsgJ8uKuRobSKuWBFCMipA0rs9HwXJJJC5CqUr
	 2vNxuBwt5Z0hFIu6W4rwlmF2Ac+t3aqRBW38Pu3tGdg4n4jn6NAKCmh7EB+RhM1i2d
	 RFgeqMZySEkpIdAIIZRcWygoBDUrhxjEsV4jqwKQ2MPcRB+kLuP+lSMAWMt5JG/cEs
	 T1K8SFnlMsMbaOI5EprXDpZtEYzEUhrApQ7HcB/jFEVgK1WBTdoiDxFxt8a85R4IJq
	 Joqr3SxcBCyEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F7CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076967369.8305.11472331037429628305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39583444524d91201ded70ba5b4beeea5e85420ca027a451020cfe4f5da148e9
Date: Sat, 06 Jun 2026 18:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780769673
