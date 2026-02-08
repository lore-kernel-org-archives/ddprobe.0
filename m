Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250E933EAFF
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770581034; cv=none; b=CjMWbWPz3MD8wT3uOFOGefQjwlbEgbvsHSlWqn/kRSedJnhlzN/b5nha6VtK3XXfxgn8mQR1TRbJZgf4RDVOOYHuaHw0FjIE/0RggOlsDMkPIrv3Ppuk0CYNHy8kR7an6mkL2XyLLmLSPJiCENJl/wxufFcoG+gelViyY6HgMKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770581034; c=relaxed/simple;
	bh=TdPUya8F5VANOVMMcx1SEKjZQYXyoZeb1g/98Dpptk4=;
	h=To:Subject:From:Message-Id:Date; b=U/mzbsJrr6fmqAQFfapUoqWqo5ZITL4OJpyjXnfWfxP3SjpvFHqVKBW3My5SX1fROZ9BX1zglOLj5UYhIM8rlJp+Q8xR6knD3YycpYSV/vp0NvHgihgYmX8Iy4IklD4W34V+k7DdNlLam8oqC2PVsRooEa+tfqX1FyxLwJbz1mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzA+Wi3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzA+Wi3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61FEC19421
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770581033;
	bh=TdPUya8F5VANOVMMcx1SEKjZQYXyoZeb1g/98Dpptk4=;
	h=To:Subject:From:Date:From;
	b=FzA+Wi3nQs6W9PpiDjQWDP3CuOMAVbtkOt/Y0D/D6Sm8mrmitMpTetjImNmLA2gpl
	 2XPbu5FOSPGxERvlWQYorY3imAZ5et9O4J7R/k6URUapv9LbDtS5lmMNt/JRWRH8n8
	 YKmydtIwNnZF50dsiQiNzlw9opIZ6S/G5xsvQOHaJI+fUGsCW4m44CHiIDF8CcK1LU
	 Zu/nz09k3D2/m7q1D2LYLBauaB+4CDIsv+dIT1jcA9txKVCHCYBy48zDjSDPVK6o/Z
	 y4ElP1cCWwMToCD+/jcoXl8+JbWJqUx1yA1RRP8AEyxHIfXItQzrZKPhtN12GPD4ka
	 7WI07BsV1UY9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02BCEF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058103364.8723.9695822857498728690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d93f6a36c55725b8c94cfbf4c3c8c311aae975f6b238a26ff741196374efdf
Date: Sun, 08 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770581033
