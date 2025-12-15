Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CB63FFD
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765767774; cv=none; b=eQ/KT5r3vrzALBArXGjOideSCDIMF4KSErOMT2rU0NIhH+saqflEiYtpPBllJRdYiYQ00ZCj+IMukuPFUopC2rGlNqAyishbnMhnFry77qPpwGMa0GisvM/1P4Xlk39fAQiUqMJoZIgSoO4qgK5Dd4Usoo2QDKlMQ1ufPdqGn6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765767774; c=relaxed/simple;
	bh=dORJDd0wzgmm3WzpdGlXAx4RbfquIjSQpLHHSh7u650=;
	h=To:Subject:From:Message-Id:Date; b=mJspZK/lfZYha4lg6gYwQTyTJjzWlcD6mID8QrmIHDAvQ8ha0k10soirDfAjV6yBxecZsHb7G6/kBJPHwFeRDPZTudKQXJWOye3iIBtyp26nAbFeeyBKpGemmMVGyNQQxeEXqEGUx/fG/+2IESipohkTdUUxRFm6OxL1Om/m+Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D05OidnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D05OidnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD44CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765767773;
	bh=dORJDd0wzgmm3WzpdGlXAx4RbfquIjSQpLHHSh7u650=;
	h=To:Subject:From:Date:From;
	b=D05OidnAbLyo+sml8TrwbOIeyyhBPkxvmWoPD0njmGzpvw7krdVrrhyi8DeAi3OlV
	 mUqnCG1T0JUF/p1HhTAwe8N+lBxQxeUJZQDJq1USltJKTxvJ/yB3/ZDI8/eGaXtHPS
	 dbDQtW69BoJIR/7d8rhlQBTzs+lVCJcUb1Ia3ajzi6VGmpgY4RE9pVXDDNy73oDZ4J
	 O+SahNT9C1+Yz3zP7xLIBZm9pQ+xl/2lYavPTNpOh1g3Yfwh/e+zsQoJRzs9XO0Zgi
	 wM2CG5fhnEiDJCBJrRiu/GoqQvv/lZeQQ7qtP09B6D2AafIQ4LR3p8DcrQDgMRo0ay
	 Ko359va0XMJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999F0D5B16D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576777358.8158.12158029475038096198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17784454df8a51bae14a606ca2b6929fe473e49c55dce7a7740fc524804b5ed
Date: Mon, 15 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765767773
