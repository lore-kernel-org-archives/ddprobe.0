Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2784923E356
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764427974; cv=none; b=ISAGzpRstFy9L99SBVm2bDLgtFw/PdRSrht1dWG72zSKYhM5aLW4smEX6UZCYr1c37GKX04wRAvISc5HFWkJMXdKg6DPnyYxJvmG2o2wmr0eCKa1lTJTHvM4popg6jP4cal5RQktG413+tSkIha2HFTkdl+6WXwqCuA8nA2ce3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764427974; c=relaxed/simple;
	bh=F8e9cTi4JBIDpWiLK2Od5Ffbi5AW2oyLaTUNm+5XIDs=;
	h=To:Subject:From:Message-Id:Date; b=A8rU285rupREWkFmKw1V55u0TjPowbr04C66Sy3e8XpgYuZP/bLi7DYrt34A16OKUoEloEsOLOyFGJRpuSLtKzZI52UV/QWOlE/u9nZpvrfE8Ai17mgkZSgS1NeMgvtOF/8SDRNWWDIC+lElvDd/jdfp9j5BvhsRu0HoXqga5SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htYSTpGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htYSTpGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764427973;
	bh=F8e9cTi4JBIDpWiLK2Od5Ffbi5AW2oyLaTUNm+5XIDs=;
	h=To:Subject:From:Date:From;
	b=htYSTpGEK0LLyxgR5NOxCSY/PjBnd9gds0dIVAJhcWsK3NvbY4gWeD9uiJffx61VA
	 alK8pk5ywFnlQry++DGL3jPs21I0Qftxw2LVk2bJZ0UmkHCgiz9A522nhqhe89BYK2
	 VMrWYVoyLvsKQHpCbiEQ0317Nkkz262ucDVOr2tCorQviBh0xcwLOu2P74tD2zGOG0
	 x0plJNI9AretoYZHOnqGnp16B4caySzeJQuLgwlKWd7p+282jrXU8p6T8naEL5kWJZ
	 +Iio6nyDp63i9ksECRwm3DU7jNZ5OBVtjD+be+g60u8K5IyazVg0lEHTqomg8Zfcsv
	 +88c/qgq2XfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90945D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442797358.31615.15300374510193399041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9b3bb68872ce8850d33c6e1e6fd2621e8cac18a1452ade0d4fd857deacc8e3
Date: Sat, 29 Nov 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764427973
