Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA44334C11
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771650894; cv=none; b=Q9bi90lzZTJdI2w+gipChRTMcCG175IFzkjb859QfatGD7+5diUWhPxRfOHZEnLz5B4pi4C0xtM7OIMnKdkn5NSxvXDvrZ8H00woaXQ9cd6LWCXEoQ1uDrjgPvk4oMfeGp353GUNfOeWvEodvVLaYX0ZIxShqU/DNRF+axe7/sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771650894; c=relaxed/simple;
	bh=tYbgfqLWIg4QeVKKGuopy242nnUjX2UUL2Yw4agb9F4=;
	h=To:Subject:From:Message-Id:Date; b=BSecjM/E9/IKsZEgssm2E7hGtJ3t+ZcZu46qyaj76yNkiLmQrUSyuEKTQloTv84+1ttf+TcgjxxRDviKmwSjTjTG3P+NJdjBZOkYbU0XS/VbKgShLiXXErJhv4OhxBj1xeJWGO7pZHsQfxY3mkrGuD0ex85QlJPjCqFcc0w79Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1ALyh2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1ALyh2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B14C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771650893;
	bh=tYbgfqLWIg4QeVKKGuopy242nnUjX2UUL2Yw4agb9F4=;
	h=To:Subject:From:Date:From;
	b=T1ALyh2LHYgbgWwMt4bPbsFHortC/KBOvSIim86PlZSzVo/UGjxLLGmE0FsnaCJNZ
	 Ycfos4iu0XsOggdv5BXtGpZMCf/apfksSkpWveabh6DC784PcmbrxsLHQu9j4+hoPP
	 Qyanjj67cca2apmWV9VyTF1Txm74sn61iW5+N6VMMTZQFefwzVR3VVec5rDbmYSPOm
	 1MOaeZDn6dEvyAjpazviVnwfbn4YBx5mR1jmrVAacH19jvzC9SlwFzyAj6XZn1MXi6
	 GXMR0iAor5anL20FnddQIke9iZPGu6zCUXd+J4QtBPzDPCvE3AZGsH5HVc03Uyyj2W
	 rgTYMfENu1fMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D28CC5DF9F
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165089361.30331.13866285399518741068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa4fe86b69e2ed1745ddd1959e1a70341ec3c34d055cdda24c33e7ee52178ad
Date: Sat, 21 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771650893
