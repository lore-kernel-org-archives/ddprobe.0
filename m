Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2183925783C
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778264854; cv=none; b=LaSRUGwo2bCytS+V5lKHS89SvKsHLBmfWX2sNs+JeE237t5teFbQcyMAjocgr+OYUcaTzrhPpReluaDwamqirLghGyO6pRFDKVhwnU83qNXYmwVb6d+4AIkKGkY8kbxNayS1xSJBoQOu3nirPqSL3G+3yDD3zgmUKWYH7di6NHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778264854; c=relaxed/simple;
	bh=xzS6oDU8uAfIj/BNv503J3BfBg29/QzQ45LmK3H/pgM=;
	h=To:Subject:From:Message-Id:Date; b=UwLk1C5akkaWi1JbbzBDRTrM1ty8lN4dacf2u91rcLPuTF5K8FbDCEiK0B5OaHKaqaWItTDRoSIplMKmq5IA8Tp75d7HkNhVuCBefsxWqyRd4a7mn0cCUB+p59EMST5LBhiW0xkZDmpXF5qtamnUchAdmAxN7p/PELZ2aQt512w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlcBEczv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlcBEczv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1786C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778264853;
	bh=xzS6oDU8uAfIj/BNv503J3BfBg29/QzQ45LmK3H/pgM=;
	h=To:Subject:From:Date:From;
	b=MlcBEczv3sBz9lTOIBGJCMexuJh1+0l3/DpAevrjdX9I5opUIjgDA9/wIOEyUqc5a
	 iJba3r0qsuv/GAMUoi60T4DWN1PLcrD4Q9Evhup2hNs/JT6dX9Iv0+ftk5DMW8nmgP
	 2ROZ3p/QBf7LnnYmWTVhgGqdH3BE22fe1Ojwtx7tMpcbLNq0sXNCtlCiHp38rTeIzy
	 KWihhoOqwDRXxO9SRhKMpICBBMQZVvg98XcpJeECnV+cR7ghBWas5Tj7kp80JP0uFf
	 6nCWnqlRL77XJhPNR1rFdwTYQVXiv2mTcz7yhn1XCD5+A612FAEMwo8q3N8POqCBaj
	 Gl4E3jUUhF0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0833CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826485368.3858.12926652443807924027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8defd4f420bd5be3e366b78acb2afa95b3e65fc72b5fe3cd453b4d26f022f491
Date: Fri, 08 May 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778264853
