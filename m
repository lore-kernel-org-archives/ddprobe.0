Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E32D2FC00C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769402034; cv=none; b=mh0Lo/Z3Zsyfs/qlNgl/HQnihycszIdoCpJjK1WV+AA2C9QIUsKoAHeD+lRD+3vLpQkgMiQ1oXobAtSI1gdGxa3Ht2E1UWGUoAPMvrgTsxHFyGgbtirBDD976HzTmYJayn/t+IWbluz8UnpUlI0K1/VDfdm2Hw+bAt+HrftaBO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769402034; c=relaxed/simple;
	bh=4h4Y1bc6rq9VOlTvUW4D/AcQyySv7DEMiKddI818NIE=;
	h=To:Subject:From:Message-Id:Date; b=eJ7LQbbu9o6pETdpFDLJWHGBW1xYpoTNYxVyKCBRXRheGYNV+cHcxop7KZx2sAecIcLF2oewQIwx3o7lUBbsZuPllI140C1F1Xc9Q0EcZ+uqQ6QZRaWt060b8CkO/y9hXnih2UrMmCsbAcnjtnsziFNYexe/XZS8wPfyAqp+Zq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tS+2SZxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tS+2SZxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2616C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769402033;
	bh=4h4Y1bc6rq9VOlTvUW4D/AcQyySv7DEMiKddI818NIE=;
	h=To:Subject:From:Date:From;
	b=tS+2SZxWN2pANE3SLDw9Luiwg1wnD+gWWZ+YPmgrexTpUace5dlC6CvFa50lvs5o/
	 Gi7yUIplqUmPFWdbUvBz2esvtj0ralzU6wloat/OsToZeTdAn8s8g/3BFoUBF0G3PY
	 2IllcVtJYOZZ7hbQgzwMfePGR2F4omFh3ORRtYGvVcgBpTNP3CNlhQ/UJvPxkgNim0
	 /+OtSxEV+Ec12mNIRm+ZBxoQTic9tN9ygYl7f49sOhO6m2nHoI2Jjc/0F8v7X9xump
	 ugC3mwFE6ffsIay9P9fsbIQSM4VgcvuKZewUCupeI/nEpEV9lmcyYs0kF2bSAYsnQJ
	 77S7Vzr69lZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBAC88E47
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940203357.13673.13617942179288712326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c916b0f684abd9dfddaca2fb2916112684c8feaca5a6dc3791d76d91a2f9d8e
Date: Mon, 26 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769402033
