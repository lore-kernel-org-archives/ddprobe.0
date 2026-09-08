Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484B354936B
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788904234; cv=none; b=pFiM+0YE89uuLm+8aJHSVDncVRZFLEG2lzEBrVs/vxnKJCsr7O6L68YvNZpdnlrwy93Bcp3oFc1ZSpSTvQvoIz0/yhCgYhyWQLatSfC74gyIfNot7sX7EBhyZ2TvGWvmTnb3aXhLVPWTxkgeqZteOjDWrhnbo7JCJ1cTJJkHvRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788904234; c=relaxed/simple;
	bh=Ch0cYNr8gZCDhlw5TvE3DYrpRQCqC4ROS87m6G8BF58=;
	h=To:Subject:From:Message-Id:Date; b=LeClzdLQ9/pjXSfaKzeSB184Kv9AhMD5ewIMNLxxgakQ239DHGOFJ+CPBBRpmK4A2M6sRNiCb1JzY6Ii59D40qimUbDZmbuIdlRFvUl2ybZdZk8QTrrRntd7iaXP7qZErQzBEphirty7dc3CyvDrUuBXuc4SFQPpJgLThXIhbzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iq4rDNNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iq4rDNNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE022C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788904233;
	bh=Ch0cYNr8gZCDhlw5TvE3DYrpRQCqC4ROS87m6G8BF58=;
	h=To:Subject:From:Date:From;
	b=iq4rDNNHpXRAdt9My5RV/IzoDpuJJXpoS2UgSHXfgvKPIIdREoMjj2TkFsCVoN1ZP
	 BXTXg0yOfVYiJO3LaaeCENfhcDbCbIIkg3R1SKtpCVZgUh+pWDSSizQaxtnoQrn9hA
	 ebn95VIIdou4ULMZ48WYYyAKuSJ4FQvm5C0bTVxgVFO8h+ku+B+O2qs65gAnt9eRBa
	 UbzOjc4lYd6IyB1Sl3xjNXizqaYT3AE+fR9IngZqf3HuZ6t6VIupejJbzkK5roqzWk
	 KWpNGYVxFs5v8GH2S+o2X5c8rkg2Vb6JAdDWsHKQbwqp1nMcKOjuWlQf1E+jPbkd3t
	 C8/Y3GEDWHtPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF008C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890423370.18321.7932154207790477448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02df87b8924d2ebe96f17c8b0e7f21b1d4dbe9bec007e28d151457e5f5a14353
Date: Tue, 08 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788904233
