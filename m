Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B77E3987D
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745078994; cv=none; b=sWl1U35dLam+nFREOGC7+Rcl2rnmv3C/aYJ2xm+ltqPPS9HWgq1jsitkl5g6OahprYy828pSlf93RrMaFpQvOVQTZ5w+TvJ8rM2k2s4csyqx52ZsNDyZXkE1exmAO0fdmnz8zIMnoqLIUwFdm0f0A09EYpep2bl1T7+k/evgPpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745078994; c=relaxed/simple;
	bh=ndBAF0vyLXwrvgdn+mGMCW4uwYGy9Igoj45AADoh4ao=;
	h=To:Subject:From:Message-Id:Date; b=FvLogNX6ew/Y6qD/gnWgnNImvmM8JclVaBZctulbXnDEb5lHfWKTMgpfhfChPFEt/8WTLG27R/wPk0wz6OPU6zmxeCWy2sUmT/zxQecQZibYLETEeOxaQy7P8ZhLJyLFd3OjHjUGlLByXI7X2tbV+0ykJweINe1k7JSqI/a0oFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZ2U0zsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZ2U0zsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBE4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745078993;
	bh=ndBAF0vyLXwrvgdn+mGMCW4uwYGy9Igoj45AADoh4ao=;
	h=To:Subject:From:Date:From;
	b=LZ2U0zsyO9fk5jWlKZMmmeWcgTEfsv0kSgXhLwCh0kGyi36aNMBOXNPQ2uPiZfAnM
	 +Cgjd8QmKwXDxFdOe4Bn1EFuDOFyxd+NyTFDLPF1fvaA4PNxaI9PngdsqG8nDrSeMC
	 Afj6LGpfz9wnwFN+8jiIj0B8vIR41M7hNTPzXXq5s2JQlExWSAlAjsEE9jwg75oCOi
	 mTgbmLe4AytZ8bBUZidQCSQDXqxi8WfRailvFPZS/Rlq1f2TqjdpgzzIHqe/lg089N
	 l+YLKxSZtX/cq4rRgjE9c0gAovGBrWgJY72UgDyQiuQ159HbIC2EzSXgOrqhozRHOO
	 Q8vVPTgCr0p5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9853EC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507899359.30391.6291332306261051772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06afc80bbe5547898a6012a1f35a65584f073d21fcd25aa776e0b3280e030b3
Date: Sat, 19 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745078993
