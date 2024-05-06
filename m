Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF6214293
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715013143; cv=none; b=iKmMiZct05/1+UCE8jnxyZz1iX0DSLOImGd1Pk3Us4NzGvFpm+epw5Ng8TFgdTSXjT38YZeleWaQLlj0jG9EWIu7gVwWSE9HBDO/nKiIjQ/qR8ncJjuDmXF2oOYqK9L2dJRAfMjlXWz0uTwG+0+Jk4pCa4bkcwZctGhFNhSlfhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715013143; c=relaxed/simple;
	bh=nU/SUaLYDlH8ApqVWOM5C63H+/eKH15RHTJN6GUguD8=;
	h=To:Subject:From:Message-Id:Date; b=hqdnO5/K64Ad4OKH87lhLgN53TJR4h00NMLOnW1yAJYRxwZikbodGvDfvKxJpzcyZ/dA+SlTMV/H4NPZHhFlUafnYU9F0DAOjZn4yEs0EKkQ0x9ZksLQBkurENMccj5tU0l5sHLq7Uqw1xdmn5PisndV+3NH93ACoz6buPP0sT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0yvd+xB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0yvd+xB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D757CC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715013142;
	bh=nU/SUaLYDlH8ApqVWOM5C63H+/eKH15RHTJN6GUguD8=;
	h=To:Subject:From:Date:From;
	b=E0yvd+xBSb4fAcBtWMDbDxXYGZmwkAq81l1ptYSXgdaP35GEkhxuIqYpe8xwQzXzv
	 WmT3vGB2Ph8/KEPu9LkKDMaAz+PFVTGy5WSwF52Z2t+zxgZ5+2DmgdPMkRC/BPUNNe
	 WuYgGgf6t9lVOEmZdr2UXSCKKkCFYWwWMIFJ10M1cwuLqitumEZ8h9RanB6iDVYfxS
	 xf5GMGGOkmWmj8cUBn1ezRmyooFK9sFnXj8hwgSPyQ4+61ZyyxauUgZjHSOooSXGA1
	 ZxaIHHZyRhhTK0iJsV150iqQ2qmVrt/ltmaO2cO6jq64isQgogIKrfGg2Zb000anjt
	 +yEsPUxYGGSMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42E5C25B5F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171501314279.11965.7124098260150517596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17ef1d442e8b35d36e0dfc85dc0171a60e366704c9dfe874cbc403f84e40681
Date: Mon, 06 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715013142
