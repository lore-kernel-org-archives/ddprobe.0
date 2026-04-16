Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1386938AC8A
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776374854; cv=none; b=Km18Y3fqsDFgvGXy89jr0dytX65qznNtIGZ1LKQdFWVSMYWK4RQLISJqHlzY8tqllunIls+nDReWc1Ayon2nxbgjOl1j3R/ZRJ17jSTrdYWzV5idCqhJqu403HDcEpRM9mWc09Gwo4NSTyNB8kWHzTJ8kFwvEnSAlrqcdHbROWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776374854; c=relaxed/simple;
	bh=/DTMYC5huTFFcpUG2a3apPgErEpiyhv4YLpWXjeFDt4=;
	h=To:Subject:From:Message-Id:Date; b=cAzyX8tP0nYJTjEZ8ayr38g7i5Luep2bO8vr+Or7lDqoHPMGf6UjNXCH0pfzKVxTjWMSoLujcyHc7iv0kTs25EvUHog11etE7EsOfrOJTCljk1T2AgGOupKMabiBppqXE0c5E2snI/daQpz3JzALsJh6N0+0FF8svzqlvptM88E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3UJE6e1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3UJE6e1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77A5C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776374853;
	bh=/DTMYC5huTFFcpUG2a3apPgErEpiyhv4YLpWXjeFDt4=;
	h=To:Subject:From:Date:From;
	b=C3UJE6e1DNf4czhjwWMoF0Bkz209GH2kXENVWrKZJsqKsf89UV90awho85Qr7uhIL
	 Y39sfUtmXDjX2uTm07uwmeZtFcV5FKN3++I+bBROCLbpyj+mvrpyAsXer9Rk4sZU1d
	 pcQhfJqiXgsNo4w5aCAu+d8m+hSjblZ+5ENbGIDiZJS36NYbMStn2DYgi6SQSsIngD
	 gRVgrdOnei8PwFsGu6wYHZU31LOBUojkhWk2NsSaZ1Sk2Xtj0KDmJ5bkIWv0Duiax3
	 CMEIIRr0IBDprhWFipCq+Am4KA7P9xZmP2MhCnEZZOhAywzKLyL7yTJIl9rToAbWyX
	 68Dwm9JRwvM5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA07DF8DFC3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637485368.23664.12729465501281932829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe682d5882e3db451e0d4cfeb944c7a9e191bd88029c1438af5e4d06a2b2ad9f
Date: Thu, 16 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776374853
