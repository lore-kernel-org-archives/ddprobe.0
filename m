Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9E3E54B
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777705054; cv=none; b=DO+7fHCKGFYjf3+VICe5mZcFEHahzcdo/k6+FsLgFMKRgx6Y/p5A/lRHVoFyRxNZXmSyXt3z2ksY4OR0t4RQiXYiBbNr/nFZbEyvc3VeW8FjDp9aLwUhRFva+9NLjMF2wMlRmPK69t5jwcL1cO6zeAAPx+Si8+5gne7tt1r55BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777705054; c=relaxed/simple;
	bh=tTBCN7qg/wkE9arZ7jM6cDwDi4qVZryfHIBVXx6rmaI=;
	h=To:Subject:From:Message-Id:Date; b=VqrMufqGDUl7BdCfo2MJmMgHpMetCOe7vjjojCNeXzwYbs3D4TjNl7dFzUKXZRz+5mEdGZlHXvY/cdOZrKDeJwMJR9AeOlFXH9PbFjWGVxpkNa1UWL2+1WX2NpZLfuTypPI+c+UC/DiaGF3yJ2sndQiESCVYuF+ao2hDfmk3VTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUtAvEBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUtAvEBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BE3C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777705053;
	bh=tTBCN7qg/wkE9arZ7jM6cDwDi4qVZryfHIBVXx6rmaI=;
	h=To:Subject:From:Date:From;
	b=nUtAvEBhPa+YbNiBt8yxvw1sKfYlInTi0e9H6zLaPu+ACcmknyJAYdnPga684IiRX
	 4Ye50lH+rGRBW9ZjMEhcKiIIuxvMCqRA6jAiuaExq774dsV44R4b6wZiAP+WK4CYLf
	 J3j7aHyUAKv4PmCIIfyjAgAjiLlfPe/tOn6GcFkjtARsiBkb7IAuUENwXKIL4MZksq
	 NpUS5+fPtX/v7GUAiInhkJxxcaOvbkcsSJhYwHu442X49J5Z4GgWXz+61lWHtJYnT9
	 OdfaYwYEAUa0Vc/YnT2Wn+2MoewSpsTKq3Yb5xeXuR7mPUCBEUjP306wmraU/Mgm7R
	 aYTFNhS/rm8UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB7CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770505368.3587.12342920191490881936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30dd554974a7c0716cbec59beac5e74c0ea9bfce9ec7986bcb2dc9c2485f68c1
Date: Sat, 02 May 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777705053
