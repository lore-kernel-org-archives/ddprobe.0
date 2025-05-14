Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5328B276033
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747222194; cv=none; b=lDemRipuCytGwmud2Pfb6CdcYhy1kR+7olafMrna0Y9zIWtuO4KTXSJJTJX79mSSmooSxcsApRlbxl2SM0uWxK4PS4BzHbwWATFLUBPQZSTouNoGCVi2cYcnu7YTZ3fe1AtRQ7snLOjxugE67uICr6P6zF9FM6+K4LRrrEiVNok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747222194; c=relaxed/simple;
	bh=A57LcXeZJ+UhwPmP9Vr9Sx3ovUjH51r7NvB85+j7dOo=;
	h=To:Subject:From:Message-Id:Date; b=c7ifALDE3naT9Bi+4gUcwZFxIL8KLqtUjJ0wqE63Ezjbal7EICnpv8xmw/6/UHuZP+XsPwW7JQd2vPFkHpmeKuWKplzGTo3EMsh0sKVegKrFCnxosoQdxcehG7EjXgkgP4e6D7N7p3Skur8IJbF9dWUGptAxiTVO0FYDZUMupc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgOHMKpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgOHMKpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8209C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222193;
	bh=A57LcXeZJ+UhwPmP9Vr9Sx3ovUjH51r7NvB85+j7dOo=;
	h=To:Subject:From:Date:From;
	b=CgOHMKpU8cWVdeoxcJ0MKf602g9xD7u6LH7/uFCmJcCOjVZmda148s6HRqMjKiSJK
	 w1qV18Zted/Xe8fnInhQKoE+hg42LOtMZgO336ukw43UDCFtDf5RFs/uyuSE3GQI+y
	 Wk5nmT86IEG6PRau190WK+pkVkdO3nI98Q1fBwnIsrWTi1i3x3fQsZO1xSnVyPCOo7
	 Edboemo9C1zCJ/SasxKW6hRI69txulFm4hXFj/r079Ulz2SKQa3T39Ea31agOcV/ZQ
	 n3G6u542iQU54dnM8w/KqzUM/hfGOlu4+kHHv0W8Lwtu3rMROiuyMHZYi/a85sgNI4
	 nC7YkJeualzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A339BC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722219365.15182.8612407115432210365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b990d21b11ee1e91f9fe13ddb73631b2e5a1bcdf332f8ce81ddee6424ce119f
Date: Wed, 14 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747222193
