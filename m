Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E6A26656D
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789972234; cv=none; b=ekW6trW1X5GKrkW7kWkxQL6cIzI/f69Gf5t/aFaRFGDq3Zd9mjHQt/OwU5AeGgl/+Dv/WV5P4khrGm1bUS3Rm7GVZaOX6RtddQ+M14Ncn2ZpKnzPvWh/jx9uSmLSTS/x16Il+cquAE6RaFLEzvHRu6IB8r6IAGlsyA2dOEYzy1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789972234; c=relaxed/simple;
	bh=39U+UsWBmf8r+sCeX4+IMxh3ROTFu5t0AagCp4CojSU=;
	h=To:Subject:From:Message-Id:Date; b=FuiOjFhNyth6So2UxJFzr1BucLitOg0ycqOzrrOgE6qhaUWgwsFnkD/WrTZkNvavPsY9gOwOEnjZLErGr7+BhvEUMOh/00JsORhX3//PJcIJX2UOaxd5g87GVbZlmTShl7AP9coNwlp9fzJt8npydKegnmClKFi+ZQquHjqQZZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwPIhztt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwPIhztt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE63C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789972233;
	bh=39U+UsWBmf8r+sCeX4+IMxh3ROTFu5t0AagCp4CojSU=;
	h=To:Subject:From:Date:From;
	b=DwPIhzttip+jb74zBsnzqLAvImN5nq7KTcWxinXupDL6eikBs1V6jMf+T0+D0ApfA
	 VcOKybDMr/ynDGrgt1RpqgsqvBa4qJ877kU9nx7SU+ICd/DzWjhxSz6cjCXzW7iKSU
	 1Zd4zzR6ayQdRAoiMo+qCa9VAbDBvGLNxPqyF4Ryv0MuQMJRn5RRncmKKsv7J44ICn
	 O6jaquJLxDRcJuROaUmcEXapLM8l/PgYGCDb578/aQd49FpeWS5F2eNLwGDtvF2+6u
	 HHDlF6F18KPSm7fgZmxkILBjOpBZGA8GSxBp7xPvbtBWWkW7Oav2Tc1V+qxzCDdgJV
	 Z+7Q2fxNaPgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD3EC982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997223369.9672.11091531514539014560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213b2e1412d0bedebd9ec45adc052dc7647d2803c9a03115a5a98e1ebaa11a26
Date: Mon, 21 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789972233
