Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E443A3EB7F5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773759894; cv=none; b=JFkR8BO+y6ee/3Zc7tYSWSytzdIsqMYelTQRifX4Q5TAGmG4t1e6iYUV/UVUiE4QzqarjE89CGsZeFEciCXQ4mLryKHUwxa09JPoORC1WH22X9QPoXHU6TZwcnTgQlfZUJS8uItCsbErD7nKq4BOymrCeXvWzs0Tck757UI8Fkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773759894; c=relaxed/simple;
	bh=OCKnoKZnNVsq+P3Kk6zK9yafCdyGnwJ3PiO0Vf3ps3s=;
	h=To:Subject:From:Message-Id:Date; b=TVcoN8MrpEbFrNQhoo4FzY9Y0YEVtuIPVv/pbJrT6Pu9oSydSdO85yiXtxNeTWCeVGM8T/Ld72wzDaroOa6ieC18ijzbvHLEzqidDGuHQ8ryJ1nNC7VZlPThvMI6joUg1Vr9iwsRmKdBs+wPlyHoWPIPjlmlLF0ughw53QThrAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZr7EGjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZr7EGjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB4C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773759893;
	bh=OCKnoKZnNVsq+P3Kk6zK9yafCdyGnwJ3PiO0Vf3ps3s=;
	h=To:Subject:From:Date:From;
	b=MZr7EGjIqJd8PRA+onZVjM78EVJ58B3mMe54MLKXcBGEiC6Dz6mynio1xuI4yZXjs
	 paJpDsj77aNO+utCdFsE+hMeYN3ou7q6Hyac/IBp0gm8Uhbkcyq2BZhg0z+fXsgIdk
	 1t2u+k9AbDA4An3RdBJEg7zyf+IttL4FJFvsdkdPa2visg34Dok5uoqR5XBKPhHMms
	 LT6KWSGpFSkTsVRrLyDJXRxpTkBVxJlNupF2pshJHhNKcyg5V8LrrAn2pDCTyHQnog
	 OSJKy4OyjMC2C5iciLUVefJDKPqyFlO4UalAnFRhQRcvHufVtN+XFmu3HitZ5tb1By
	 SIzsdYvJ+Xrug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC6FED9E3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375989358.30800.9129615521401532075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2aacd04e8a09f8a9e1b074de3bf43e166d6212892907e8c9520d73bf4f4c9a
Date: Tue, 17 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773759893
