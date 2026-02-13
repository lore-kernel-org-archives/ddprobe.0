Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AD861FCE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770963894; cv=none; b=Q//vHrgJSpkrLd2xydKxwp32LVfZ5m5NdQLKBElgrewX1Csw0HBJPVSRdkN+e7SYAsiXRrJyKwN/KvThfDomfU0LlxA/IKCDRFvCs96OD+3R00FCOPX8+QGd+P1ITW4o0o/rOS6ta4U3fF7xoJglFJCRU5lSoTu0DNFqrCXYlZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770963894; c=relaxed/simple;
	bh=RhQQPRBnsgvQkHicTJiKLoK/XcMH0AEf6SC/eJVJzPU=;
	h=To:Subject:From:Message-Id:Date; b=V8+bqC1meKCJm+37eL7LNJsqFdvQvJuxUiykuo1XhVa7eNElBO8VanlqWnAAYG2Ozgq8Po2PmLCJjQRL4o6H2Sfscrn3mKifji/rvch9rVS7Fivz7bvmwPmXvjI/tql2v1jW0bMU4VdQnBJY3bYDMT850vqtWOiXO99fw21jJjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZaRE6ra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZaRE6ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44F1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770963893;
	bh=RhQQPRBnsgvQkHicTJiKLoK/XcMH0AEf6SC/eJVJzPU=;
	h=To:Subject:From:Date:From;
	b=MZaRE6ra9kzXB4IAjsJer73Yq1Euno3j6eCVaaxhaWxciOpGUNnF6So3TQbw3imMF
	 jj0cnyA6x64Jiklxway2ZBjPMLpVs8KWGCzSpmFdlp2cz2DXXzuTxqabr52JmyYrXA
	 pm66cFYn2drH59Yx14W5yU9hzFFz7suvMEwhpIXTK6YV80Gf18kg1caZkYElqdvfAB
	 KTGBgDl43sNQ856d/sPWTc4tQwV+5QD8HmlWg1cM+yhDF/lXXM1A7dmT3SmsjsnBal
	 uB+m+xgamYwYxZGlpNL5p5hyzUVtQx9ZSM5E5YW1o3QJEmnPqANZsl0y0tlPbNfRh+
	 /a6L1h/jP1Spw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A91EF48D3
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096389361.30343.8132353251028839156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85096efdd677220be7b6cb0267617b8b8dca986c1485772a0850a57f1d92361
Date: Fri, 13 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770963893
