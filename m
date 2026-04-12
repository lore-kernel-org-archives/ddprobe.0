Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2325C17A303
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775966854; cv=none; b=tqHyOZY1cjaYbq/LavvObMBiU9vUZ2D2lvf0c1tTEtyBbbiFrpNwTxo7gRz95gMhIMMHhSuN5SD8gN+fFQWEJARIXWtx9/q4ZgUmfA92jhMWzQweuSZOJLCnXj0pzstuz6wYCtOF4M9sBwE4gY++FS0wpX7OWkJD8ou+fgu+PV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775966854; c=relaxed/simple;
	bh=IIo1A8SrCXxjwCHXs18Jc3/E5WgXOLLUadkTi5oNtAY=;
	h=To:Subject:From:Message-Id:Date; b=ffbWhGDiR516ysnL6q34OBwfttiCUVOX15wSEnoOHOCmVDljehx/J4Bk6aPG/SYlDB7UYp2eDRVY72qDW7cg/1knHMAb3gbJpOLCssCJJrniDD/K6XwiNQAHRW6U38+XcVJV7sFvfCr0Q5ZcqohkU+5zFDa2RvRLSKGQKddmwVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfyoVJQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfyoVJQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00BDC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775966853;
	bh=IIo1A8SrCXxjwCHXs18Jc3/E5WgXOLLUadkTi5oNtAY=;
	h=To:Subject:From:Date:From;
	b=MfyoVJQaLZFH9xx0Ckrs2OpTVCQhJiLEB9LLurmwNKATPE8mnJwv9Ty9/geSdPeTA
	 AgcRl0fpxskBVntYv8kwXVr1Yq7FaEGD6DGkRoN2h1g9rtaxNXsqAcFsVZevsfnHsM
	 UiuNJLZ/BMfHahbEeXn1WGfKiXB6mJK+1yg+KpAVSPeHaQW1tcWiZKSzOyK5XUSg5o
	 XpTU9sqHLSjraiLgN+EY+OUIKWE9x8SMgeHYJ5rAb/fRlcnZR8PcxgLZHYae1YIgU1
	 LIxMNMarm01rURlHu6TjETXGJIfxr7U2SIGjMiH0uX/v1klCD/wIkT/2b6ULk3UMiY
	 sCRe+NzVP7nlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D77F3ED63
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596685368.10344.1531572300015760661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1b392ab5a81ec57211cf3227c95cbac2c19293bf9bad5816373e54898b8b59
Date: Sun, 12 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775966853
