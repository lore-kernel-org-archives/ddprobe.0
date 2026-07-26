Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A1B1D5CC9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785075034; cv=none; b=QvRE7fdblnmXtgP8aUU02FaIDwaUmACZH6/0NYovkcm0/EMuUZjcy6eVc8OOaJDvLGaXyZSdFhnmxpk0BekiRijHOmQScaGjQo7Vl3q1e5mwmbr17fAdQX2Zv6YVYVPXLkFZCuGeOpEcSutFfYMdrJcnlZBVB3qHERQbwmABhTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785075034; c=relaxed/simple;
	bh=x+MJakigUNHKHRKusQ9vSewCUdtwdOSuqixNuTMD2CA=;
	h=To:Subject:From:Message-Id:Date; b=TDSXGZ4EBwDZ+FZWMS6g8zBPQCn5f4yx+n8hoIEwy98EQD1z7QXH6Iqketey8HuM6UiudDW1BUf9cIj0R245xSZvCqRMEDU8Qf/042vVpC0gfl+qq3pDt1/2Uf2Fvl6KAjmX87OCW0mvFOyZQbHy8xdBisP7sXN8eWTvtGKGgOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuCUpPH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuCUpPH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6315C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785075033;
	bh=x+MJakigUNHKHRKusQ9vSewCUdtwdOSuqixNuTMD2CA=;
	h=To:Subject:From:Date:From;
	b=KuCUpPH6huG03Fz/rXZfHawHufzUxRkKJvnic3vf8evwDd3RGPxCsxwPxHQ0PdjXS
	 MePphbpwdrbmeZLiK6Ezf9ONNnkKLx5Y3LTcwRB5jVW0fDWsUkbkS1Ph74SAVAuWBM
	 b/gkz/U2pQYj3XVXhhLdXIwwGkdVc8XQPjsTBonSNjwR/bT3TIkm4/DcwA0U1foGsH
	 t4wU5FbzYYRImPO91VT72cLXlaNbiY3I7o9FxknSmsXwsRnJ8rlMqXgA1yigltbdxn
	 fVWFknX3SmbkJaqzuOZBDJ/ZsDFC6ny9KBlxmcPUcOUMY0H9SsCHx3CKjejkLVdkpW
	 OkHhA5jPzlcOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C4C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507503368.29023.2227929527086834651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b5826cb82361428aaf14024b88073c3596a7287a8bcea22a1a0f0b2dc91355
Date: Sun, 26 Jul 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785075033
