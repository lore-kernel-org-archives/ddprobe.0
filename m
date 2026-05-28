Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CAC1C2AA
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779934954; cv=none; b=O8xKaWrbdEaOhXty+6+W9yMrKV0pRTT/MWKaDrt7t+s8vhnR98hIToVtX+uVOgw57rAL+G5VS64OQVE+5VVehyOzJ8AGe7xSK8IbzWgEzPfsydp7JSkn9igfuHYc9KTiOX37GcHQ0SepCLYc/FBdpclTD+qkOGyBX/zqZWIenTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779934954; c=relaxed/simple;
	bh=xDHvnkkPffDlLW5sTllMi1/M/WSLJjtft4sWgCHAdto=;
	h=To:Subject:From:Message-Id:Date; b=CZW1hQFr/30yRFYB3M+y3J7jgy2js6Pl0SAPltJjNFRYSl+ZFnXutqivy/d8MloYqYFZseMu/upEUwWci0hyrDxEpElB4Tjpq5htc8DXGp2hz7nk1Izv2oSpQrplXPM5cEyTk5dizXq2nuTUxrHfkM27qBOdEDNjaSg7bX42O4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUL1F+MF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUL1F+MF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C777BC19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779934953;
	bh=xDHvnkkPffDlLW5sTllMi1/M/WSLJjtft4sWgCHAdto=;
	h=To:Subject:From:Date:From;
	b=bUL1F+MFzEGAP8mSgL9KchPNOSIZsHT9rh/FzzfUWHDjzRWgjp48fCGLKNzoEMdFJ
	 iaHJn4iWLp52Ax+PCOyoIT+QticJnvcPgXJHFqioHFl5bRJLis/sObmNJeKloT5qLJ
	 sZaik7s5Dw71uZcjKOqptosZOF5Bo/8HNvmifFSi95wpP99dynTMUcy2pUaXbxqZry
	 SK1SMF+AmoSeUnW0IGgJbdrWCkd3p/2azB0lfvajZQ3jV4VM+OiylGhGJ+dWem6LT7
	 QiVBiV/+xdGsghnRJUJtk+CG+nrYjRDbvU6HcuVJCSlPyoaKesjxPMAsiWfTV7mnxB
	 5I0/sMtdbkDKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC17DCD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993495368.15650.10768846965073821925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057568529590d1123064afe45d48e388affdc28c826e95ff00fd026435711673
Date: Thu, 28 May 2026 02:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779934953
