Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF2D288522
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769209434; cv=none; b=JZbHDOMqkAxn9sFPJ0dNeeU15xGCpsy7TXVi+dcPhnoR+MO2KWkwAk3otIoUHQKglse63IwMnQzQHRYvLWqIFCysynTkzFzeHLeNhyx5D74SCHuUestzGhwL208m9OAJmXzNuRNrH7Nyb5d4G0UbWAQBiu3GnL6OLQKXXbbmISs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769209434; c=relaxed/simple;
	bh=WYMXBh7KC1jOBpfBeK7olbXcc0nI5ZSGER2z0HLbyck=;
	h=To:Subject:From:Message-Id:Date; b=J7S3VAuFdHnEeQf4zexasJ4Qpmc/LPBBg8uRBeNwZrLn05VrGX33WydQn6ttpyyPHEhjF8Q7uyIStxz6v35mWzUAgl8EGcjxPb83260EM7YpmT5VuSnjyKcy5HYmdrjkg9SnaeQQq5LBPH37Hfdu+1JhZigQTeXGPO2BB79Y3yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rE5qOUqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rE5qOUqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70FBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769209433;
	bh=WYMXBh7KC1jOBpfBeK7olbXcc0nI5ZSGER2z0HLbyck=;
	h=To:Subject:From:Date:From;
	b=rE5qOUqSHidyquSmN64FBREON5BarxqFPbV5KIvnued1p3e0PeUEMfL1O9B7ZfqrN
	 ZtQCvJAOtkgdFmbYo6nF1WJLxbvSui2yvYL7xgCwDi97VquLH5ortYv592OorqboJC
	 WxdM+MAorzxl4R/8sTAwSV1RO2Kw5IAfRTmQVx5Krb6GhokHMYaPtG9HoXAr1G50qX
	 gfN7zcoNNw6mtXPL1kcxHffmaQ2B4xtK8+JqI+M4gdc9VkQWK75dmWSvXMzJWcEzZM
	 JObtDVrBmAvK9yIqt/XBe87IzfUCfY0QFZBu5PbNDRZfQ+XAgZEF9ghoxxnY//tk2I
	 l1+ecW43wff/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9735AD778B1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920943357.24824.2194033042524122238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fdbb3a408d091439c4be79dc3a145376a82a3dcf0486d2f8cec88f93288497
Date: Fri, 23 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769209433
