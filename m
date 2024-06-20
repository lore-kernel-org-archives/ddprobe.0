Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E36A1E876
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718898623; cv=none; b=rmyelMzxe8JGDw027JK4W0swt1V9LT+4lnMjZ/GzFmpahGIh/tzDz9ZRXPN9683HUaOIT2H+VU3kzBwQWYoDOVuTEiV5i7hvWB5y9jI1m4kzW1da14wmnaZUEPSNlhoNEvBSlz7VJtewIl+MFHH1CoRATyCbrnJt7yZMZk+f5gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718898623; c=relaxed/simple;
	bh=uMEiYae3k4blUGLlXkQxH4ZkmDw5KJFIAmtWMzPolCo=;
	h=To:Subject:From:Message-Id:Date; b=Bm1aXG/Jk1HqdnXWOfMDkVvyIOChdAy6xJ4CK7dUpl1OaBDvehYfJhjGb5qPJZxRWR0B+SRO5bud9qVCclCyqBMG+SvHPC4dVjvT5cZRfoFSoJtVQav4SEsvCADgSQAKFE1Q6+Nb2WL+6LC4iW/vDzFZ2WxBDs1KjNsBU8meQtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFNM71eP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFNM71eP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBF0C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718898622;
	bh=uMEiYae3k4blUGLlXkQxH4ZkmDw5KJFIAmtWMzPolCo=;
	h=To:Subject:From:Date:From;
	b=eFNM71ePILAVMNj4144GhOpBugyFhbSBTP5zlXfgBPxVBOO1HKW80t+wTpNPCM0QK
	 uuqf72MeNXjDF83JI3JFfioMaCXV82yC8dTbfZT0pPM0ZjkEobZzGFqaUyEnWmrlhB
	 f7BwOXViopF0Md4tYZlZZ/72JyCKtPkvyYbOzp825D6Mtaq99tcUMCScyxDZQ9weCJ
	 mwR6ghaMM1h3SUGYRCSgGqJ9lsTLQz/p16/Gx4n40aSNTFszXEa8k2xw3Hy3Al8nPC
	 I/aRE9UyQZnAKVot9sDBx441tesVfOeV95R9f0rNoeL7t9tBTN7HROImOc/Vp3dK90
	 s77znC11dW6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50F6C2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889862279.29325.8351767922232048537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bf4332247fa228dd2d3fcd41d635acb1f5091e544766a522c3211d63225fee
Date: Thu, 20 Jun 2024 15:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718898622
