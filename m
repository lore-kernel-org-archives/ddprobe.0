Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4786A1A08BC
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764044574; cv=none; b=APwBSIy/2QyKgraMOh+iusG2vjwlw5ZUeR6EttdPEbcUWLoLOSi+Tosi8zbfjvHFnS9BUQME8c7oIunZUp/URdTvoeXXUjQX7oxGfHzE6uMX00lHr5FmTwDmAOIzvsUk+wmoOjoQMHPG2oCKOEK3DYP25+KxQbj+rvXFwD40D1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764044574; c=relaxed/simple;
	bh=v+rYlWLIaLwCwur6/aBCM+kLC0XvnT+F6qdsrz9GKfo=;
	h=To:Subject:From:Message-Id:Date; b=mvIE8Hqd7jG8scW7alPwTOaCiv4fjF5mrpvpHwjIwEHxCN7gw6hN/WlQTVBtboOOz0bm2LnNuPPGPs4jpRQZEEj3UmGOs8AZSlOaLBmtmB5/1TPPOY2o4YDt+Nx6yIuEjQjNH9mQeiOP6DmDI0fPx7cX6+XN7iPy7//fjpTLvvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFCLiy+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFCLiy+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1136C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764044573;
	bh=v+rYlWLIaLwCwur6/aBCM+kLC0XvnT+F6qdsrz9GKfo=;
	h=To:Subject:From:Date:From;
	b=kFCLiy+3ivIZWzUdIoTo9o3NvzdMeeZnS4TZtYhl3+huqAKrqTqCC7Fnb229cYcO/
	 60PTvdJBDYPuzmP/xmJoQP6YGTN7KM0WCSB7kSBUzLRGM1Bcx4sT2dbu6PVH3UyKPV
	 Vi9fTdSW1ljYmhnp/sjNyETn6oK+K3O3BwAbBfgLS3BuFvL+pkcinWCyPpjGfzYyqQ
	 wuS6Oqq/HEVAKEcZOzAHpOxOVxpDrggzphXWURloJxo9P/JE6hLHiA5wzDgp0Flphu
	 y9FMlwI5AAo40P+74/Kg2makq/j1wAVysXzEEIvPsKqaMxodl/cZ6PjNgBcFQxMrKn
	 NswmWBdj8K2eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E94ACFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404457363.19824.3878426481712410190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad9150e162795f4f9044c433065de84dde1c25c5586d1384f457e463c0a373c
Date: Tue, 25 Nov 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764044573
