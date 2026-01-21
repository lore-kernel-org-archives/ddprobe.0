Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DE8477E28
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768983833; cv=none; b=I3h17MHUzHghAHpEZpNTGfHx09haA9HfDS3nGK33cyw7PWEO0ZbwbHZrzD3DITLE79kILeHYNReMPBSTd3ttAJhjeyLdQXMWJITyt5OaVVVx2R2nA9YTeD9WE2QN7NisFv/xkHOxbzwDK1tz5Gbn+D4806K41IREmltHmkbUjno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768983833; c=relaxed/simple;
	bh=b1tEEqGIWzcU8ZV6KAbc1/hDSZSX+6xOpkXy2epYELY=;
	h=To:Subject:From:Message-Id:Date; b=GlqcdCtnKV/LM/AfTVd0rXkwJ56Yaq0OijchhqZgE4xuDQ7srooosiT6w+F6T6yg7Gp811at5Y+nANyuoZIKTp+fkDJywOX02lwJDZGFB0nH+FGJFof7GzMuq51Jv/w8XpRFQ+UMzL6Dj4nVAOO0frSB+D4wy7XyctqBIqN+bl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UINCC5Kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UINCC5Kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99343C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768983833;
	bh=b1tEEqGIWzcU8ZV6KAbc1/hDSZSX+6xOpkXy2epYELY=;
	h=To:Subject:From:Date:From;
	b=UINCC5Ktb8VOCTBSNPbV3l8vmxQ/E1aWNJRnYIGkKs1+l9HgT32eHswIhjc3GLshR
	 jp+bxEi1Crq6HSs3IzFlfpqt+ILtzAF6IM82EOQKi8J+wn0MipztegW9uqrZ46dfyL
	 bSfKjUYm/BJvLJmsWpJFMFDUo9vEtSXo7kGSn5+Vi51H6Bh9iBqvZ+7TE0koxobpJ2
	 VEX8znljo3CldAVP+iUYcNodmBMHNhUGEN13smaOQLWGwk7WbP0V+rAaYjyk3XEJXe
	 ucfWNxfYEsq10EOpvjbirKA4MVNlptI/G/oN8aIcpG5E9TiPYYQWmop5ELJpEEazcD
	 pcmDehSHWaoCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D39D262B5
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898383358.23936.5761752541738166029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96efd5fb404432b6cb7ecaeb659ae0de5c80ab8a453f6b1866abf3a7f69cc282
Date: Wed, 21 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768983833
