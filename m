Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D25625
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748790594; cv=none; b=AEIKQ8B6P+j+1ks6ARkpPtZLc8H6rF+G4jKd3bQqP+GJxIQogIn0UL/CplQPc+FAizF5SYfDxDIsaq67u7NbOoHTVxyuA4tPOPRcwc73L+MR23NbpgTyMq6CKR5RAm0hkwCK3gpb7UemT25b5/44IdRTjLhPioFqxqXVWXgXEAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748790594; c=relaxed/simple;
	bh=kwyjS2yyjmntljq4OZqLVamjO6PiztlJUhFnyY13V2o=;
	h=To:Subject:From:Message-Id:Date; b=opS+DhVqhsXQWKJo6JmDuvWXka5aKSq+IATNXk+Q8fIej5si0ANC3rj4MXLK4gUFu+4H0YNJtSnrg6TghrgPrMqDYmtwj7+UmC99ll92p/aePrkbs/SpHekauzjYB9joNHf03s/vAVBRI04T02WZoTQGCc89sd+nkSGbvTfPxw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvBXTCjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvBXTCjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4E5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748790593;
	bh=kwyjS2yyjmntljq4OZqLVamjO6PiztlJUhFnyY13V2o=;
	h=To:Subject:From:Date:From;
	b=fvBXTCjUnpa90GWOY9+CdZ/3njOyrw988emmPD7tSX7YKNsqmiZ059kGtFjXZ4vN6
	 3RgqALI0ZOuRkZVGDACT136BbmYdU41VJ8GqvtzfhjmQv7U/Kxv8/0eq6Xr/xaHMBM
	 jkdjZ1oVbn8PamsiRwynrao38Aobsl2bOVPH4tPrBLKlez+OUcr3vn8RRapwr4icyL
	 DOxblORrhl/sRkgLbISiePUU9/vtvf6QfAMqHXgsO7qz5Hzem6YLipb37J4VJ5wOw3
	 5rDvXuPcarRLhfv/4alolSzmwkYr8WLyi+6LPIAtUWH/iGP3aE5NZynG9yuovTroDy
	 2PgHngpcikWOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96990C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879059358.30990.2350567519495370387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3781c54f57fa169690b3fa0396e794fffcf31aad531a279a1e1e5dc2e2a25bf2
Date: Sun, 01 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748790593
