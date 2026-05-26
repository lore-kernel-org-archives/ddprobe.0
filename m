Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D132139C9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779775954; cv=none; b=Ejbh8DmpdzdOjllW/guG05C/68rx/JiXFOfaBvwIHyAHI72DqFPxxZOtzYU+ACL7qQgv291od1IratYnR6ipyQr1LJtRegPRyyU7vs8hLCSSXAQ7WoHhBS7ojP3dlcMj61pTI9IEXg+afE9HznLouK6zp10rsIdh3DvAuYIcnfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779775954; c=relaxed/simple;
	bh=pbPEwO6ZLlWDALaj96ET4uLBiQBkR6iqMNVrssAdEPM=;
	h=To:Subject:From:Message-Id:Date; b=fYrpVvYoeQDr2pNsT+khzZjYb7/DEVtMF23PMgfeMKuxc+xVFxdPfmhOS5Rnzo7wgcsEX++3AyCp68gGwUxK799aidb2HPI4nQqHTGLWXjr/Lags0DqBYdl3qEXxnax0O5OuaUgUvdfs2O5oKWU7O36M8bq2je1NIxJ3tNULp8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMhJrCTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMhJrCTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B92C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779775953;
	bh=pbPEwO6ZLlWDALaj96ET4uLBiQBkR6iqMNVrssAdEPM=;
	h=To:Subject:From:Date:From;
	b=fMhJrCTCZs20gZfsbsvcVR0RLaC0zlbigc2QumQnOPs2DUizdzrMl7uVHYDivODB9
	 G2FpCQqhDkUHFW7ydhI5aPZNXf0My2DQAYxKcgylZSqcUQMllp6fK+0Qo/J5suqUTz
	 6+RiL3Trafxkg1YvREebiqootbs8DTORvQNfS14zdTElHO0CsvcA+ojnFPbKXKAPGW
	 ONGCUhYG6RRmeqOMdr6diP7tiliRUY41ig0bodqF8pvEibwIYKwU033KNDNurUz7/V
	 rmDvQRrL1fHxH2IkjiBYc3QPufdzbouv/y5MPUGzEQwVUV5pSiNFvF9DO/bvYiAh2Z
	 pddhP/3ALe2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85B5CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977595368.13937.5500648805401083610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cba5dd1c2ded50d8a8fc5e4d45234a5a7f7bfd0682191ffe7139a469961fca9
Date: Tue, 26 May 2026 06:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779775953
