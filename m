Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57CE314B76
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777290453; cv=none; b=hcEgSCelCVouNCJ2Qw/6JEzGoXjsFWF2iQL/umo+1cXWDusIwWvBo7hGmeJH2cb0O47VvFcEvkytWnYs6WTuHgCXYNSdN6nQaGa3rw/5m5illYtLXg9sixcD4Ljr5VvyyBaKg8XXspMYY4BCFPtDXPsXdhA//oqY2AwOYP3lkjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777290453; c=relaxed/simple;
	bh=8twBzh0CcsnCoiXTFjsg4q6a/VR59pq243EllcwWjyQ=;
	h=To:Subject:From:Message-Id:Date; b=Scx6jNyOoMP+zMlUSdglkm4P9jV3MoImhmk5cfciEUO2IQluhZMoTtcS8xZrGctP/8DlYomu/cY5aaaQ3ndepJ6a2DywTgwctRLKFO68AQtMJZktwMaVZP3capvNdOAwxODtodcp8NwGQ/xCAQy1UYYMFhYbSkVXvGkEzhLXiHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtX1tGKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtX1tGKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC1FC2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777290453;
	bh=8twBzh0CcsnCoiXTFjsg4q6a/VR59pq243EllcwWjyQ=;
	h=To:Subject:From:Date:From;
	b=OtX1tGKR4vwSviFG4q+yin6yFsC97wBV/hD1ImQHpf5QHvM0nlSigHsmoavsqKjP0
	 wndfRAWYJf7Z6SRg6BEuzZS5K2TSiK9fzfXGV0OoEhhWS5GuvSRhtFKWf3JMdZVLj1
	 7R5xhfinznPhkAMzuNgkrI+943xBE5xPMetS1RaMgUPxTcq+EyfTzM2gxtNayMcRV4
	 /32t+jyfnvtq5jWi7FUafwKlxPQRuluXROVVejSWZYziRB8bNsHRodw9TkI2B9zkdw
	 oO/iYBnz3zMi5r+0FxII3pbj5Dy4VVulhifWbJS2NHKBagDgPnbVI8oujVOBbTyPLB
	 O+vR7wAATuC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA143FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729045368.25178.9726598246597191645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9a99039b57de3b93124710b7955f97f94a17603111668760711385be5e89be
Date: Mon, 27 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777290453
