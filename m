Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2153E3147
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785107434; cv=none; b=KS4TgTHxsBdFf++Ah5KXhvHzS2PeGmNRuDuo6BEcAoGvI6S3QJX/hRjs2Elh8fGyWbUQf9S1DUXPhcpI4aukWFGcqf1KlJpXSfw/a95Bvoqt4SEjsz2dM/8hbtZK2E8XMFkQwuP6sVB//p/+UAlulwH4NbkE76t8EIF7XyJONCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785107434; c=relaxed/simple;
	bh=OKgRGlOAjSi85Clwq7/tRwPRBgewvhPGTRscactlYyc=;
	h=To:Subject:From:Message-Id:Date; b=MlHniMVc2/zuQSba389ck43i/UStWRmzn9btfUZkVQRVda1SScMU16P9wdgqs9QWZQz9AC4i61b4dqKKSt4KFCNK3BJFfnYZ84xCu77w17YUintqiC9ncsMBGDg73diuff7tC4/ADMO1cHJm+9JvgwHpqHu9a/fU5iaSuVWxLiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEN+Y3lT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEN+Y3lT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9C3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785107433;
	bh=OKgRGlOAjSi85Clwq7/tRwPRBgewvhPGTRscactlYyc=;
	h=To:Subject:From:Date:From;
	b=rEN+Y3lTMBltQlKd/i2AKwltPcuzCQqPLGQAWaYZGm01FYs0/EgQkW0QjWXBrxAj8
	 39TRenqqZKQjeqQ4jYbKSr5n3s877ZBDk973GmkP4jGznRHzjT5C5qv35LC/EJfwDK
	 /QPLc1TgPDcCLD0RrNlEs+BHvZOmocixBFTmfyOUjbMu+NcxXUiA0/Dq7bjXzK8Xm+
	 gNk0C4XN1q1v5YKfQBB7uGDfR4PkBqQ/eElLPhrMYCQVZTzE4ymnDeTT89ECQHG3GC
	 5HxK7+LBpvF4fYJo62/i0eBUU7pP9VgZf0NiS3DhlFZO8VsA8l4IW6O+4aveaiuctm
	 uhnYDM9Db9wkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A870BC53209
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510743368.23439.5858446552471788225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05d914523285361e87b243f3167c66ffd18e58982b4a2e11ba13835c7dc4b3b
Date: Sun, 26 Jul 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785107433
