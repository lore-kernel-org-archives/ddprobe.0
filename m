Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2F02609D6
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761489594; cv=none; b=OtGnynS6t1Am70nRmjv1DWwOzshtpEDjx1T8AbjmofZqTDnPNy7IJFfdJM4NUJhoCsfphAloB6PjwHzpwLxxk3Km+aZh2bNOffRTEacYL5+kxcYY5s82/VLqSbtNB+hcWRmDjRGq7QO2NdcFVbWPYClj4KBBIiExOkqHXqv8jVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761489594; c=relaxed/simple;
	bh=mgXQofPDwCm7fM7OBEX1KGSGr2iP1WRcmsdmnuffbY0=;
	h=To:Subject:From:Message-Id:Date; b=OflYz8YzHY19U936biyL/JUzEKA/k5Mu6G8ixe1xdrW/Z3LjuzR2YD9WNWh6zV0GlypCy/Pd6y6QrT5Dt2IhZuNs1oAYySZbTS3Wa0dxVJLPa+pB+qrsP294DVQ7Wwp0OfiV9r7N8+VAicOKkMKCYmUpjJAA/L0Mf4f+dxEhB4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocVcjEMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocVcjEMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81B8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761489593;
	bh=mgXQofPDwCm7fM7OBEX1KGSGr2iP1WRcmsdmnuffbY0=;
	h=To:Subject:From:Date:From;
	b=ocVcjEMSokSwxRiRuWXP+stsJgkd9cQElWH9QY9tcCfGOvzxwaYdBklCMi4qq7AFE
	 XIZzm+FNYLBefl0f2kTL7wr+tT2NOcJWFq5MSGMFtI27YLqdLQBKnbe4uL2m+e28lb
	 yHZwukfD7VCzNhomTo5WT5FOeMVR8w/c72fV3pq1bnBvcrxRhZ5ve3a41isDow3Vk1
	 qT3TCGqcsjSc46UcXqDYVtn7LN7uPAnjncH/X3M5+cG9Ne4DRk7cnlIgRDiQPCqv6Q
	 /F0bfwNinlHeto1DtMoGBvapQerO2JQo/Lwp60nV7pwIfU3awfIE6zfkbWkxqECNk5
	 7dF4/3d5L2Q4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBE8CCF9EA
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148959363.13545.7886121178366508765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e78717e3522188f366a3aca57325dfb3f11342634ee5c3e61787ad67f2ca2e
Date: Sun, 26 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761489593
