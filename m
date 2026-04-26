Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E6F2116F4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777234654; cv=none; b=nVxLREQ/Ot+jWpfDoQG/5+Prd/795VpISbQmm92xPCqy15dEIzfxumfTC+3sGFyC754QbAVqFchpFTorzQQR/Saom6U4qR6pHCVyB2MB++JE517MiJxLEbbHdwRDP5NGT3IId8SXKE65rnmkWBKL0kYIK4+YTT/bxLueW9FqoJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777234654; c=relaxed/simple;
	bh=gwYeD01NxPPSjG4nk7EDqS7g9ia8PEvsSH+2modG3V4=;
	h=To:Subject:From:Message-Id:Date; b=mshp561tdfCFRJuqWnYo2afl/OX+ySBT3J1kbjdtTx/TgabVcodyK9uXo8WJ7/wFfezfg2fvcyUOMlCH1DDtzNetd/f9Pm41yjQ1B+bEkLjgDwE6P9HfiKKv7xvwPA2vVoT5nV0LHpw6jUl9bU8/Y4pIZq/pPgpH25ptNDZn3nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6uAVL5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6uAVL5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA65C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777234653;
	bh=gwYeD01NxPPSjG4nk7EDqS7g9ia8PEvsSH+2modG3V4=;
	h=To:Subject:From:Date:From;
	b=Z6uAVL5P5u+coJl6moIYhFraRB1HRVAXv9hAxJPZ9ETGPtqOANLqxhF3JpS6FAndu
	 412d3G0CUa+35B8ocgWCye6CLXO9ZetytFsrVRBc2qrkgxurWrKiV7KIm3U9qJI3VH
	 3iKdUWmU5Hs97ERC8BaqgtmlfiUru1z5BqBfx2NdgZRNWdc1+0yo2mFdhD+ISbR1og
	 a0SfViyk4IfrGTEDRKjPu9Up+MDG0Qpt3yivspo4BoUFtGODXH8DUMFSGlF9sQoN70
	 Nf2xSrO11sQ8Ysn5t/OnwjOjtOglnw21QpsW0kVNvlHRsq3ILhm6yUof/Kv60aqbUc
	 qtRE4RJzirU/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA153FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723465368.12017.18207330538321922312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6fab551af2e77dd96ec61da7e843297b3fb0f92615334f1659898c98f8edca
Date: Sun, 26 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777234653
