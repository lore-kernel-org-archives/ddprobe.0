Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973134A1DE4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791210034; cv=none; b=bfjbdfjbK6pwnpqot0dhEmcxt1BiRoc0k7606EO4jybn5gHvWLMWh1iiar0/h2CW42HLDxco6NM7nmP5EiXC+gpw0+uvBjVW2RQ9tX8d2v9agQk6+9Wi5gbzvcvCyPrKpRxP2BeQ9/HO4UT8aGHy5ZuLXzzvJvG8oMOYwfjGxW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791210034; c=relaxed/simple;
	bh=nO6rpdotTYIqfMaY6RbRhpRcvkJjKzhGuIMPm4La6Lw=;
	h=To:Subject:From:Message-Id:Date; b=BBKHWfKz3xEJ/OeQNk/hMb6IJ1ucVLmLSI3ZU5KClL6rsWDEO3dndCXYzeFIotiyPclv54Kylk20/ifQtu4wvTv+rG7DlVtQKeIooQASCyP65p7KR+lkp2bhW6CyjOfgEIC2i+lJQbYr8G0fcFuJqiA0BxUrkkswGVZAWfoYfSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frFq99Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frFq99Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43DDC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791210033;
	bh=nO6rpdotTYIqfMaY6RbRhpRcvkJjKzhGuIMPm4La6Lw=;
	h=To:Subject:From:Date:From;
	b=frFq99MiMPu2b6YqmlCS5m8sfYAZ+/3vd8z6S3fhTOOtLYPmiH2dF2ji49TdnrWK8
	 YNdTL/b77Xr+Nb/5TiyZ/rU5YqP3e+t+KSiJftZ8InSC3dYtUO/lL82wGHWN9wSpCN
	 2AgpuuF68bi65zPGzl4L1RYLCLYTFRecmYEoabJfkZH6GVPM8VhlOQ6xZPcCu82+bd
	 LylSAo8dMzvTCoDUIQBO+OUcvNMiAe2fOv+uUarZuvN4jlEONUP3aLAAQKbwiMinhU
	 U/qba6VaX1a0fNYP3Pf8RKD659H/znCz3nA9gleYpTEj/s4Q04h52SwQfEUgJujoYu
	 62MZpOk1Tf1rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAB6CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121003369.24101.18008861924068030590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9613d2b2696ce20e1acb576f50f9cb89183b3622c98b451b72ef1e9c725b6c
Date: Mon, 05 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791210033
