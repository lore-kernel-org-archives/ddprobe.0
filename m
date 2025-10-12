Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ECA1D90C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760251194; cv=none; b=hcEOWU8q4uwaUxQY1WDvUoiTuj4i+JVEq6xYzfvcsJ3zMR7e2dtyHGKuv0XV8bP+l2+mZ0mJ8jJVx0T3cfCTGMEegHIi3TOXd3G5MouNXTsvQPNtUhmaM3eUXwFhqkuAQwLYGmnydSDGhYes8vdQmskFmoSh8ilSOCZc1OBbd4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760251194; c=relaxed/simple;
	bh=9TxafA/xKw4+6+aZP7uvDIkvJk5DDFvbLAQyz5nvOcY=;
	h=To:Subject:From:Message-Id:Date; b=ddahOxWiDMFDf16UCPmFz58DtMBa34ofDdivYjiB+Il2/dqysshwJVNtMUpI8PzPANJ9bWMfjOO/a6ARrv45aU3R2JvPrQ5zvA5luY+/qecGA5iG7mDIGK6SaDbT/tLh4kpfWaAKTf+8DPvmBqNVWxT3l5lhjgSaVPwX/JUFaec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRcWyYEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRcWyYEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64CBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760251193;
	bh=9TxafA/xKw4+6+aZP7uvDIkvJk5DDFvbLAQyz5nvOcY=;
	h=To:Subject:From:Date:From;
	b=VRcWyYEHpCM4NmUCLaRrf4Y5GL5KHG/IltMwtc+e3NQZmN06HMR/cpiNbhQtY5626
	 YV6YO3S2+53Wa1FHTwbSKW38vQSjg6NQUwDiFrlXbOJKmLvxdt60kBumcU3QUoWrHC
	 Aq1tyWOjFrxIMaxBzf5LTOpUpfGhnUzgnbEAzTP2Hzj8Z+0SDX194cRj93h97kPTp/
	 J8oBBP1eA7vZKyk8dM/nzirFDAvHhk6yXmKQ1LL8x6FkZ/0/HBnK9n88xRyJYitpfY
	 cUsvwMdQAnDnPGbN6TQHHqPNDdmurL9GqhnAhNqXqCm0lL5RBHbQgucybAljYKZBt8
	 zMymMApjyDLZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9209ACCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025119357.17026.7659147302224088825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45dee4f555acd0f06983fa07924c0fccb3ea3c48e0e711f40e0fb60931de703e
Date: Sun, 12 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760251193
