Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE0713B284
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768539235; cv=none; b=elFhqhNaPaWTgtlcOnK3tbfbisw6cWlZvLO/AVP3UywFszVX5SG1DJ/F5NSNbB7vKR4IHY3xudG3kAaVWLq5ncSyjgZqTob6Rwd5XJwqWxU4HvDw540ARtiC73KiQ7h0W9nYZOywB4DLE8/kTahEEQUwUXTCs5ylA/EFhJeKTK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768539235; c=relaxed/simple;
	bh=Pu+AD8560re6dJSakhACtrHwSvu6MR2EDQNVscvqD3w=;
	h=To:Subject:From:Message-Id:Date; b=MWBohjFOfl+bhmYQwc9QrGBd6Mn52EmsUHTQ0e62x4/zfazGeoPuaZtGRY8jHo+l4ZDtN9/Xq4hDPyBqN5P+FXaK+98xup3LCm7vN4jBCiJtc7uZ4pTaLtxTb6l2unhZ+8RYW9jniMukr2hn958fhwmpBGJwPTXBYBeRyZkaEoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9ZR5fTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9ZR5fTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4B6C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768539233;
	bh=Pu+AD8560re6dJSakhACtrHwSvu6MR2EDQNVscvqD3w=;
	h=To:Subject:From:Date:From;
	b=s9ZR5fTU/gTpzMPc1WYSSgTqEjt+v1luSAIfh7bJ+fV9hKP+YHxT7QhbkbH9v7htx
	 yvXFt/EL/a5h7KKwZmmDCN80nHe9a9kfHhrRp7kDEbu5AzLA5tzHCrycjGEA5FGHjk
	 0uUojqLlOZs3G2uhK5XQCSNeCnTMQKCTzUpq3loAPHpgZnXcPOFCl+cdZDlejyafJ+
	 Gfgtf+4x86qDbBDT8a/DcFCUTxjdN8AuGMnAoM8uSYdVWjxcLRfu1x1aeLo23/9zey
	 D5zV73P3+z2dZ4LJHyedvq9chNemDoSqu60SUstkpiTfo7CxSoQu/s3Unu80B98x6+
	 w/34/s/MIsZow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D7D4A5FD
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853923357.5404.12826290585589008556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe83aa377baf7fc01a7229c2faab3680dc6f5cff149ac7554f1d2346ae800fe1
Date: Fri, 16 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768539233
