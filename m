Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6812216C445
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719073343; cv=none; b=bcpgsLd70KMurgLP2zpDS1ri/tf7wlG355Ta3r4Ppv2o8On+v9rlEnecdjRQR+NiDYZX8aYYPfU1TN4016JXjrI7GyX1srE2Bo7up4H+IQ9VjloSl4CJ58F5PXsIsKctAtvJnLTYBVHaNQs7pvMKpoAYfUwDd9LiQu/5K6eVaRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719073343; c=relaxed/simple;
	bh=fv97cBs8TViya7N9ZShXfPbE13CnVEmnDDb6pGW+/NI=;
	h=To:Subject:From:Message-Id:Date; b=mgYd62Gh0f1eIsG+PcWicRQYwASq8qEg7rDMtx3hnRHJf2qV/jZKUmSjUUh1FcBG9Ooa2ccTHqj92b2VwN2zB/9cHGZ5o6nlLVVtAq3N/cQpf+sNgQHfBlvl4eLDsaGfiqeooBzBqfsKBnk/eHbstb4V6qTdW0GPcWdf/QisRxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOnc2Ski; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOnc2Ski"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BF3C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719073342;
	bh=fv97cBs8TViya7N9ZShXfPbE13CnVEmnDDb6pGW+/NI=;
	h=To:Subject:From:Date:From;
	b=vOnc2SkisjGzbGv5GTd4dfZtqFbvyTPI+d7m8UJh4tm1yqbvKgTRXa2vrmziXdkHM
	 lyQhBJrZ+4M9fEO7A1EMsL1B7a4dndy/lueygx61x1hAT7PHIoYXTMiZSMD0DGzXc3
	 yvtgZo7brQd9/jpnMNfPNNswLT00mZtnkJTmMp2Hb2J/kqWrxEg3Bz8femSWwO7FHm
	 2NSTGpqEMEo/5gwrYgR9X4it/sSikR0F5ulUr9PVXakPRxsohi56uaBHE9jkSc+zHL
	 F+zVoDNPG/JNmDyFXjcRwo0qB4cQZkhyrjiHHY9sN6RlnutDULhYdpAL+gzm7xCqfS
	 S3nZ45BhZ11Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A41C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907334278.26458.8617655375290929065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfcd2b6335bf1e0a862c6a1526275af1ed794fc7ed739a1a93438fc158497ac
Date: Sat, 22 Jun 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719073342
