Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDAE198A17
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781922394; cv=none; b=V2QlmZweyn+rAH2Jyr8zy6OWQv56EXQNEAsYo06HZLFLFToMwk+Uu6uKCbJM38/8kSvLeCQm7ogWj37+few+w5ccL94Nv7zmnFKgIzK9t353bVTWI1HvrzAm+wCTI1FtdT6aEYPVGFV5LCGFVbkbV1kPwRHvfl+o8y5YFTq3yVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781922394; c=relaxed/simple;
	bh=q48ry/n8mtSUR7bk9l+9dGu54iQ/WITrDTrSKiz6MVE=;
	h=To:Subject:From:Message-Id:Date; b=iX1hwbZL0gnAyUDBrgqOket+Ag1V8PpkHcJy9yT5pLIrNd62zsFINa42UCJWz/t3DOEQUH3ZwstcyjD0wP5xKhMuUx4LgsoD3CIFsjdegJYkePwlwNTOjz0zdtRb/6bjcYyyKMrKi9fNhJMg3nrIlyfKN9DLLJ+xldXnvM29RjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REO4UuOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REO4UuOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9353C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781922393;
	bh=q48ry/n8mtSUR7bk9l+9dGu54iQ/WITrDTrSKiz6MVE=;
	h=To:Subject:From:Date:From;
	b=REO4UuOlu+UBcLu5ffw1UleoaFAxyP0ViMLWTkhkRowUkybJJp7C7bybiNstE+3ik
	 KUtGD3BFoWE+IWMMZygwq7daK0BOjUKHY2z+Z8DfSpYOYM+ylYHzAiyO4ar3q2RS7E
	 qjhuI2pjum9MH4O9OkQxOv2NBTlyxCoEGof10Q3j7JT++5zm7X2WC3oB/MTyxE6ckm
	 90k7bHnsjTlmiMXjYVnMm/EGJGS78STTAPjaAcMxDdVQC6YxCOqQc2aJYVOIKXr1TO
	 8oCoz8Cbw6O9YbckAgQdzky6a5m5iCVkAW/JKaVBY+HKW2bpvg1WFVdKYyyt6dP5d7
	 0cOgEX//l993g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3863CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192239369.20185.9898630703409752181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8b6b9259d6343977687080ff0e814289c667e3b4e65dfc64c76f5297b0e72c
Date: Sat, 20 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781922393
