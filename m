Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D61F2C44
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736342754; cv=none; b=MPNROU1BnX0L4y4UM22QSzxJj8VJq8fzgvfeBeoi4+7xNhS2cGTcqTCkADQWnSVUHoluvpLgPQ6L3C+EMtO48dQTa/Jloo/wiKm/l5FkIoDktMzDfL1vzpA4hsZrmLTNSdXgpoqMB+QV6k8Z+3B2NoIxL8I0RVDTeot3jL+MwLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736342754; c=relaxed/simple;
	bh=FUHpqw221xb2tMu/x7KBrjBXkYkwZw+3ZzyvqUMgILY=;
	h=To:Subject:From:Message-Id:Date; b=souWf4kLCcRWhPKvxReUZwBiM4tR2Tg+h001REQm0oB2hzxxSE2Bci+Fi3AO/ueESWB/K/M+JLRyO5KVtRzg0eZdyWJW5Uk7g1nPKUk3HS/ALYEzp7uYq+jxyRQ78J2vnUBt7HDp6PtTGGhHjbkpfKLG7wDJQ8WCajSaQnZvais=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkMJ1A0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkMJ1A0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD630C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736342753;
	bh=FUHpqw221xb2tMu/x7KBrjBXkYkwZw+3ZzyvqUMgILY=;
	h=To:Subject:From:Date:From;
	b=JkMJ1A0zxJPSWiIz+l3az8My6Q7xv7w7hH54tUQdu25MokuvtgTlBO+wSLaoFw8zM
	 kvfCLHS5WbEFctfoTp07zAI6kPeyPtejmNO/t0ns5kTjvP54theJDLwhRgei9gBRJe
	 5fmIutpBhdBbURdSuai6EE8+++mFlaECTNiB7ksfNG6BWAyiEe2MUW/0PPPJ1ZOuph
	 nWFTBVy5/Api42x4uOcjrXk3JSryqQZmFmX13NH4CLNg8elskEAhKIubR0FvqQLSgs
	 HLhlKLeeyVM1ykbAcOpq/JK42oX8g2oCqGrPXqiA0OmlpFrBIefnvb+7ctAusvh+He
	 yt3A43FuFbxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB7BE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634275362.16238.17597583464018118665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93191f68bd7c8119b6afd265915b78450e8fe7a39636f874a3a9e0a647d0332
Date: Wed, 08 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736342753
