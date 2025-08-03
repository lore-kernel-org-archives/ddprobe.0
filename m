Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3126B8834
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754213394; cv=none; b=lU9gVGqXnTafs+mj2R1EpPGg6UGSKIcQntHp8t9F/pK3C6zTB2cqaq/UyAya5sDv7JhMSYmOBvOPS4leKYc0sp/ZYXhg3ILOVQ3/pOFbftBe124B7/2D2jhff2aTkSYrXhxC/DSomiMs/vIewt07mWiF++tn0VczKAyoZMp0KwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754213394; c=relaxed/simple;
	bh=V7GTshaAfYqu5VpozH+KK0FHObfahFZmEPzgYBi20es=;
	h=To:Subject:From:Message-Id:Date; b=NKRgG7WxtXxLM6ke3VP5VsWaSTZCSVChqePdaWw4JM+FH7RenwRfjFKInj+OqcbJYGv7Wyf5o+Nxks69i52MirjVpb36VBEe8b5Kgbz4jZuWlhNODiCrrfCu1URZlYxDQzGI05fE9f1POnzvl1jaRnQKY6nJRmGRLd1ZOb7nH28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9dUjuHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9dUjuHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D99C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754213393;
	bh=V7GTshaAfYqu5VpozH+KK0FHObfahFZmEPzgYBi20es=;
	h=To:Subject:From:Date:From;
	b=T9dUjuHvkSSax41PXSXX3C93lsPHhSmq5Cv3BYNs44nfJuex5gu1OT9UB4wcTBYr3
	 qdINGQP+94VeBop0JnMY0zYDRJZKRuofpnwf6ZwX0b3wgi4ATMrN9v3Ex8Wds+hIDt
	 vuz9Jf24lOuF+LpDKe5xdngts7muUBLR/qq0y/+hv9mDsAKdAJToaNzC/L2aLOCxCU
	 8E5XeXWDMSiSIQO2/vncukxgLJzyTPyamKEWKvlhwYdleDstFAAR5UqX9cO2BR7+f9
	 espFQvnENeGqEymW9g+5LzIAt065lw6B+EzTZDb3EJkUp1fbxVypie7swOWQhyKChP
	 4dv3Md5R/Sx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9350BC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421339358.10813.4724522585282719700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfaaff87cdeac3ef467a9fa1d98492832b836212c707f0967cb1fbe50023edda
Date: Sun, 03 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754213393
