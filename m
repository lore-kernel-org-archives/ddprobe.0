Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E588217F29
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765334574; cv=none; b=cM2dkceb0hfkLF5cKEDGpKXBAJi0KTxcLiRfsdnBICNqD4KzZlnF2/za1XfLpjsnLsOGstRfL/mjDjim7PnmRU28UznzpcG4nADIaFOoDchyEXLIHYJQ4mdFmUAXcuQVKrSxJNVnIlG/9PKwq468fe7gchSnd8ermO0dp2snjjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765334574; c=relaxed/simple;
	bh=914JZ4ixOY2MU8l43L2Rt9lMRYBS8cBA7ULJlaIw7y4=;
	h=To:Subject:From:Message-Id:Date; b=N3xDO1XM1guM6rAj4cwmUngPFqrHTnAQy/JWZGyDd88TLgAZu2LxnXIGnDCSIN9QAeY0suMqU/a1YwdoYO/BbLzy0hcPg9eoMdU7yJzWx3b0143zmfIrZVXBsf4R0MQdktSYtTGOvx8k4W0J3LZoz/Mj0oyZchLIP6R/xESWA0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLAGnIc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLAGnIc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDD7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765334573;
	bh=914JZ4ixOY2MU8l43L2Rt9lMRYBS8cBA7ULJlaIw7y4=;
	h=To:Subject:From:Date:From;
	b=RLAGnIc0ObvfgG/6GqiUhaB/m7KBB4vh0Wiep1PTiQ9ZD4gNNj3kP6CuAWsP0Hb2l
	 UWnAQ5pErzFlOCisI6tcxeCb7gHZHyc4eK+gecwEBRCfEd4l9n1w5hNUETWiQJ8mZ8
	 whj2jEQ5TA2LcAzlZTsyoX9V76otpdkkm8EPDbufEtK2+6ahMu0SzHPAutuk7j8QW+
	 r731X/8saBjzFMTMa/x6o26mzvLsrFnFeheqalE0myRIt/XATkQkS4vJrD3T4Pi3o1
	 FXSahc+6AMxsaovVgZUrc+drMqYgPzoanNlARZAENz8+J/Dp3VPQad7U7Q63x0xms2
	 9uePOZpGDo17A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF1D3C521
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533457360.8601.3419210527972020146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f46cc3b171888c4e53bd09cac68ead090353e1938135b8aad0a42a60f4c78df
Date: Wed, 10 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765334573
