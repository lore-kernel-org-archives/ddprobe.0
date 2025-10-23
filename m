Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17406314D14
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761229794; cv=none; b=pIlhTE4+YIqWzcr9yQe3Vrek0R2r8o7yyJWiKG3KHW46ocmGro9QUSMVLuo4ODVTxMc0sdJ9y1/yMVVRyRYTOpGVrXpfWMLwLfhA2dNWX2PLVDa2zaTuulaby+nULLFeNavJvK6tasbpzxHV+PmBsY7W9Bwz6d5zTVQd0WDlWCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761229794; c=relaxed/simple;
	bh=jcoKV6yIpBfMJEiYXJHHKrAYSLhluQNnTMVW1LfOx2Q=;
	h=To:Subject:From:Message-Id:Date; b=Nt02E6euYQ43iEgWHIhZY7Hp8n9julJ4oIcCZ0HAXHk1cLNIy5VQE2/FyhCzp8z7fLzd+QIFjWieggLMVbByBXI6zHwwjWKjrJjrIqRRERX1NaOAb4MiqMDfwgHJ9QXwaGlpHb27P83gDyiFnd4T+Zg7/IvZWCW0tk3e+UzfD/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOH3QARv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOH3QARv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E2CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761229793;
	bh=jcoKV6yIpBfMJEiYXJHHKrAYSLhluQNnTMVW1LfOx2Q=;
	h=To:Subject:From:Date:From;
	b=nOH3QARvcoP8+ZHoFuoT/G2pfxEcwHHdKWxaLTht5g0jqxdeyhLToqqpLOGgBRTUi
	 AP/LjHKDfPbz6UYtO+ApBE8WoQiZcTyRmiagsSySAu25hhH2H33yo6JpAkZQdRwVuh
	 bPq2IP3sYiUDkI90n7uyqRPV1VLhkdS16xk9FfWrtIWPd7xVZ1KTC/4GulKbaE8LNE
	 ZVaxprbIE8e8r4NusDlKocyAxMToceZJf47EfEM9fQvxCtypxcT/G2I9Xr+7s+eD6Q
	 QkAKvXb6BkDpOJdjNDGzMjEAtz6MJGr8CgOG5jmFp1UAO4jVKmAlgzfMQ/KZZzRKkf
	 UYRc3rHVtImtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91289CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122979358.27610.3328678371168656628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79090498078eaf4774735b5110d623ebcb3e9759a597f687c4a68663dbdda6c0
Date: Thu, 23 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761229793
