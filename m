Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5311F4722
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741957734; cv=none; b=su4uokMCQMOMQoEUjKt4/zHbkGbxrpvnswNGIdsgNwsc0/endGfGdcDkbUeRS8fsLFc/dHNz6xkSZ7/8hX4OoNd4YHc+TwffCCtfpLyswBLo+Gphy47LYvobEs8Zlwh8wlas8uksH3RGfAR5+EPUEDEPG/C3pXbFtUb54KWbctI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741957734; c=relaxed/simple;
	bh=G/mCOmmAJLMLalMZzV6MNk1gfZl/PLmbfGqJ/HF5280=;
	h=To:Subject:From:Message-Id:Date; b=YptL5uDsh3cd2lA7zJNhwbnql/y/ngaWyessnxMpzS6hAYYGSGhyPIJNBrt1K51yUn8vy7e0TWubTAzagvo3dFM86GOifNJBmnaONPQ7W6RCQ8sEVMIONWgE7dhVjP5aA7thkdXA/USFMAZZEVrcbhX4avzX/+wvC8itfkCKieI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDLBQ6kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDLBQ6kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8501C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741957733;
	bh=G/mCOmmAJLMLalMZzV6MNk1gfZl/PLmbfGqJ/HF5280=;
	h=To:Subject:From:Date:From;
	b=oDLBQ6kcpZUQcvfpaMgj+aH+CsxpuqMta5Zb7tIDxbsJ4jkJvGfoufOYPFfshGmwr
	 abnk71s4p/Sm5QadABBYlXNXisb7Pe9fIDEplgxDmGDZDO1ojSz49hX3cEgTposG8W
	 pko+mjB1Geznsjyb2uetRLDP312dC6PnB6olbexecg2t8S3oY1ad2R07yWO2Tk3um+
	 rtOaUwWgX9aCQ19xJFlj7qQv75Os4HFUk4SCSPJK0kMQJgxPK3xfcDzFdcPcmcVhl1
	 RQeY6IRRcFw6743mTQ8XWtCOhD0Zx42lGbAcpQgJCfNQMKn1umPAFWA+a294lbzL3L
	 +pnCHGbHkoG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB52C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195773362.8562.2553740259394840805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82c594539805ca195c1d5c71a2567583ae8b1d53e5151b26ff4944972cd3aa4
Date: Fri, 14 Mar 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741957733
