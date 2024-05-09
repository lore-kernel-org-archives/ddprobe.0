Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0C612FB3F
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715254943; cv=none; b=GwPEhW+oA6Lor6dEQRdQxQGd8cwrejQngvt9+WohsuVhhfR8EJMnQVS9yj/1tm3YBGvy0cR8PiGoytuAXK8j6TxaBDOR/zGA0Qvg75HOrlAIb0Ski8dvVWmwIIuiGVRl2sKvq6IZARIYEwpT+rRhtNEUbbYwQ6x/Aac+ADbi4SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715254943; c=relaxed/simple;
	bh=PGNzernf1582rbt1SVJ1YfB81E4sW/wVMWkCS5W72Mg=;
	h=To:Subject:From:Message-Id:Date; b=YMhnNgWaoYWZw4aiNpk/yGERfPqGWCNM3QCMBhlJN25beDXdxq+NNeG9BU1izzSmKkEENsp/9CxiaFlMrYKresHUnO10m9N+hXQxH8o7bk7Kb4sNihyK0EiI0KLv6IqMz+9usE0qg4I4V5h0u+VOsD/izm1q+pW7jGjaOPNzSus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtxR35n9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtxR35n9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58FCC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715254942;
	bh=PGNzernf1582rbt1SVJ1YfB81E4sW/wVMWkCS5W72Mg=;
	h=To:Subject:From:Date:From;
	b=KtxR35n9OPTzEOIwuq+2j6f77NMp3YCErXdG7fz6kIsTRP59+wnOVkwrxj2hHBgBQ
	 B8o9YsVuNeo8ddmJJ8g345Z2g+TJeRC+Qo5W1qTy6FaX+c9n+YX3hnxHKZTVgevAvQ
	 PJ9ow19bXG/mVBiIQmuc2GeN+2ev07vdagJc3gYkhAKXkG6ssa+fW/G8/BJg5sqBu/
	 FmIqiAfXmbP2djbYof5gqJLK0tOinjj+0TFQFPke5bdC2fhxcjKdoWV8rymlGdrDmh
	 uz+Z+c/S7GrCuSPm930kJVg0shTIddVk9E2FUlj/TCoJaMGEq1ojyK8KNb6EUpNv/z
	 SDs2i5NDmn0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDA4C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171525494277.28020.5991657078954455062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3a7c0b73048d7b3b7a374a79cc8c6538d23347c7732ae042281b6d444f0892
Date: Thu, 09 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715254942
