Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5996323A0
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716625463; cv=none; b=XO/S9IEIyRzewQY6oJBORQinv2yyxrl828KJxPdJjz4kvjKaa+3gCd5ga1z1r+DlMofEwE/T/w53MTQ+aH6+bxgXdoDQ8ErKjkPyjToMJ+Mu92tba3yZUi7D02qgvfqc6frJcC/tglGrLrcFyJC0DB4fDcQH4T+B7N3S1Qxn5p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716625463; c=relaxed/simple;
	bh=QBiHQlv7zIA/TDGURehVVgf0MVexXCD92Ic/OJiAwFY=;
	h=To:Subject:From:Message-Id:Date; b=ALWJE+7itM6GbR0EteLH/0iFMKRrrkE/Y2ehdts+Ry1t7tDwdCN7WUxSm1/63J9uGz9hDE673yv4DY3Ai9QmiQlzzi+Gbc79QSRsAwYYTvy2JuU3SmNNFOZxtVe8JgVCrtYKNKDf3iiNqqCeV7W5iNvV/ygtHufbgwuTEzxkC/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL0BrPfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL0BrPfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E872AC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716625462;
	bh=QBiHQlv7zIA/TDGURehVVgf0MVexXCD92Ic/OJiAwFY=;
	h=To:Subject:From:Date:From;
	b=vL0BrPfhdv1QF5+8ySJaz9beiaYK0o0wXG6yZvfaUlTuXFc6umtbMdWtKamwd2XkC
	 HCwg32Vnu0eC66YyOcmY4mC6MJr42n/PChPN/81NeYCeNxCdl0Fkd+KToo0rYP+0tZ
	 SgIILjwrSOcW+ZZj4l7V1h6wuPvyBo7gIEN7VU4NKsZmOZ0X5HQHccUT8xsVn1RvPH
	 qCfY9aEfRAsOA8NoY8a2UWv6veaRBdVScGqBbtc7dNF+3sfGq7IKOWuEFELMk7oxWB
	 +HeAUwEbguWlEzmVdd+Mhft7I8n/QNUsgkbSD8XoPPaIUxRD459wWwcu5qebCnt+SZ
	 0VjtR4qjyXuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1B2C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662546279.2007.932818485665653747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed31d6f7491c13c9d47e39c692197482a807275d8ddd0b97683181e0d9be51a5
Date: Sat, 25 May 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716625462
