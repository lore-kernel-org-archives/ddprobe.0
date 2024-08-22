Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2519816A955
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724313954; cv=none; b=UfkeVQSQ2w9Px2ROOGarLyCBINzljGaHarMUI58MhxeVaBBFA6YCnFiRdF806rNVCm8Y9QRNHJPaUJxAVVzVMY5mt8EfVo/4Wd1QSUuwDnYrkOJl37jKKULOoIAxhPYwzcjj6ZFcUItZ6bFY0FH0Q5y4+r8FMmlprFohUrgQ4Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724313954; c=relaxed/simple;
	bh=P+oswWF+w7pY2mhyisKcwbtNZJCbbx5OUob0h9NkfqQ=;
	h=To:Subject:From:Message-Id:Date; b=l6KO3p6EsOUStnP2iJFLUQQGciiYBC5iUcxIEAW9pMwjG/95shsiNtjkaFRsD8b1GuxjApVBjzp1Dms67ClBoVTLgD2Ex8EWgjAeFkzzOF9TDWEgfal1z5PDFGa7H2D6yXvbMLk1HvrYybLOFdaQ5nl0luhbHJ3UQE+iu6c2Bj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfrKeI+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfrKeI+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC17AC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724313953;
	bh=P+oswWF+w7pY2mhyisKcwbtNZJCbbx5OUob0h9NkfqQ=;
	h=To:Subject:From:Date:From;
	b=hfrKeI+dML0u0k+X1yIq1U8ZAQzCCFywTaIeLpDptycnc7Zr4rgSk2p4WoharbF7J
	 C2BRqiPOY0Oy+zIRuQgNZ280LwcbrtSZln27kgSnZnTszLZ/oxmlwqssenCyHx1qPZ
	 o37W6sXvzdImWmbVGL1n7cllMUNpEhi9muLCuNdZr5FxufhsTZm0h9GqSIGjcOtxO8
	 WWgdyrYzSWmQ9LV8a/yIvLjWh3Fq3P6c+yvJ51oK0JuKj6wGxu5w4TECgkYJdSfWna
	 YjGSybYfzaCx6t+pzWI6VdcREbtdbBTp+NcVnbZu1NcDIZ+P7fHrNrqJym/zMZB5O9
	 hGa5VdlH49vfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0CFC5320E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172431395363.28559.15015640533507528758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921400716fc15420a47bce5b3617042ed96360c1565da5259c3e2a1b8fa4377e
Date: Thu, 22 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724313953
