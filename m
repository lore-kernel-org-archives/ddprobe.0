Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629D018A93F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720086323; cv=none; b=DTq+4s2eJJs7U0bOZF0emUVE2PDN0FEmfB7iZMnaAGOimJBymwEgEZg5pAixYdpujx1qmSEn9f79GvwZ5jgWga48xDaLmrg4LvubwAS0dYc/DiPeeATt1szzC8ZqQMYe73sdBgylKK1quckIjUWd86N+SA8O8zp8vBT/aXPLHj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720086323; c=relaxed/simple;
	bh=B7rO4K5HvrFjC6gy7YapgfCrQ0E4pEET9R14ltNywvk=;
	h=To:Subject:From:Message-Id:Date; b=OdPZUx3WRaQjfoKtsbZEhVRPq92Cj3l1R22NN1UuqBC98tXaE5+nluSPCvZVxmJaVIRwlhMxSb/ZCe8pgwig3WqWQOk09UCIHbQBQVib3ZKLOHd+cJ2EI+Q09VGfl24U1MHrDish5T5qV0iY3QG6NwOfK1G2d2PvKZ01qm3d9GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po85N5jQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po85N5jQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC82C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720086322;
	bh=B7rO4K5HvrFjC6gy7YapgfCrQ0E4pEET9R14ltNywvk=;
	h=To:Subject:From:Date:From;
	b=Po85N5jQjVzUTAGqWiyyVK7WCLOzMgHEYI98Tu8u2a0p9HNZhXd10Qx2Sf1pWrR6f
	 344pM0bvUu+Oa9CGs6sYjzSK1jNiLJH2zlP0f++YUjiWhkda9/d2nE/+InMdtG21pY
	 cWRwoyRLBfGx3wrjG3AT8iiABzfWtEN3QOXoLvmljX5TFoRjb4Lv+ZYG0xA5iFPw1X
	 eQdvisUjUWrbhquAYlGH1B2a9KWTfEeQpzny+qBwj4dnCUbwyoQbckI3BN8AbV7rX9
	 4dQ97epCBMf6aY4u/m2sbwUzMqAbNdqDyB/oRs3z0774wDADFTYJV1C6DOJ3ljA5sC
	 YBk4nAwIQ7PYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D2FC3065C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008632281.30843.8651993123774000687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a99cc9fb73c3be0d2298a97805b92d646ededa7173c3a5f6745245d8df6eac9
Date: Thu, 04 Jul 2024 09:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720086322
