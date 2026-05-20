Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DB83B9DAE
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779315034; cv=none; b=KtGlUxLKDQ7IxEoRQIfBeR41J5BCiPxa1y6bGvzwaNlnZmS0e0Nw3cAetnjfhccDu4DNuT2Ksyu8c0HbSXvlhm9a14WafoOoZhUKXNOAbugNEy4WpI3p1Zq3dETbg6ulrYB0IiAdJ32TTuAoTuCE+RXw23ECe+a1Eh36vzq62m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779315034; c=relaxed/simple;
	bh=sTqD7/h6nHLNgHsQyRpl0ebcui3nFHrDnBIc7awUjTw=;
	h=To:Subject:From:Message-Id:Date; b=BG0gBPWZB5B0mkQCipnwY3rNlOcL/OnjqjLlAUrklkbnuwYa2OS7K2HSGAuCLJTw/C3mvtVxC+dzIigb9h7F0NE52m1LfVuwmHLMT6Y7r7GCndGC583+i4TgCgsOH4iEjiAR5+hMF0xT2F7YLi0GXkVaZSuc4yOU3Wr9tG76pSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByY2YE70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByY2YE70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8283C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779315033;
	bh=sTqD7/h6nHLNgHsQyRpl0ebcui3nFHrDnBIc7awUjTw=;
	h=To:Subject:From:Date:From;
	b=ByY2YE70kfTih0Zsrr8epOnYzenLzp0ZM4p4BaUg7alomOYaV9QABuHSfB7SCuOtk
	 eP0iRDnKi/Ew1H5E6lYxn5Saksa+HbKGyk2TjvoG9YNOM1buRwvSYAnkBTQ7G7ZMQf
	 A8dRoSnt4GDsBbdrmWGVxzKEPfv6KHreEQ9YyDq95HLs2KVEPvGDHU/iphOz0DpEiS
	 6c/zsyr08qDDHCp7XVEYKmI0qDg5a7YBqSl2zTmpygZuYcA/XOW6evG7EqJfI4H2bq
	 d2XqAxPlBAijMINjcg71aOrEpsSG7+g1iv984uIXzbSaGPOAKrUl1vy252EfQw6ZeS
	 f2YMiph/ex0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F1CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931503369.23935.16513248678906756819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe37f97dae98424ccda5c6fbf4adaee5e63a20275cd05bd582f03b80601bf23
Date: Wed, 20 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779315033
