Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A34126AE5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776740254; cv=none; b=YST56p7TKqmTnOvjfq2GuSovecGZWDN6OiMpPEpL/kT4Zlio5cwZMhEZZ+r8hYSL43h7Yhgg3Pj/9yfofz8vf8DEWmwPm6/TUKUVfeXuu6BUQGRh9AR9sp8ZH78dCn820gQwgX6xm3eS0TLPTUAgozvw6pbSUE0SFe6kGlMGMBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776740254; c=relaxed/simple;
	bh=SD6s3J2rsZaxQMn4hah7Wb/dEg/Y2bjsseVtLj8ouKE=;
	h=To:Subject:From:Message-Id:Date; b=ZTI8bWyMGZ6CHYhFxwIeQD/ZAjqxT+t2rHzIDmMdmlvY0l+p1xq52bvKSpxB3ss7bA9JXrvpp1qqd2DkgS7/f7uUtSx1PUZjokfp49V1omUe13IsIpRisXmEr/HIpNSrPlWkcXAT2sj6QYIMFw0Yjk1nJB44VOEN6ZyaLb2QtWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvBnZR5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvBnZR5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6ADBC19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776740253;
	bh=SD6s3J2rsZaxQMn4hah7Wb/dEg/Y2bjsseVtLj8ouKE=;
	h=To:Subject:From:Date:From;
	b=UvBnZR5OyyN/1ZUoMHTna9flE9hwkdIIWx9ZYMpj1dn1pUOCps0ga4QllO5iG9kIS
	 kKmk+v6K9ZLo71CoUfES5sx4R94ctWa0v1d8xtLBeLLddQl0Jeu3GJfgEQ/FvvZ7Kd
	 C4rqkLeiD1XHxYxp+J3f5XQfhB4CZtLzpTojBrB26SMMk4oqktcmhGEGlJT77nxxX9
	 f8f/51kYKMocaT6a2VD+KhftFvPPGC2PoRfcvNT4oW75rF6v71sioOWMLSO86h0U65
	 R73YadZ/VO1FxNDOItixvZ3BGgMdZYcupEfoHgJ1R85t0CWJCtyb3/WTQUnOLuP4RK
	 WDrL6uOVtFq5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A949AF5A8D3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674025368.23422.3969062773742258690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c19e783b2839e969f73394f80875a5091b935818eefd479d5eb4dfcf09626d4
Date: Tue, 21 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776740253
