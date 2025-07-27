Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5091D88D0
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753637394; cv=none; b=XGXF9GEsYeadPrdLo0ulZMPQ4cYNTVr+DtLFEkCNHmOc0pgTDX+D/kf8IsGX+yhIlAOhMRsvnMAWBmSLjgdYczpD7SjDiRnltnl/GFNKDPwmVdbKHBmIcsoA0vy7G7LWZLz87Kd0hzDZYp80E8PEBnci4/2OSaWKbpxshs3g3As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753637394; c=relaxed/simple;
	bh=EMUS6TqcVU9ZiBZu0y/sw0K1l7eB5flqw3pml9bqzU8=;
	h=To:Subject:From:Message-Id:Date; b=Kxt1wgAn9DA6SD9qhVs2Kqo1vK5fvFS+NBaU1D0pCwaSQKGfxZVaO+8mXTvjlTu/mdJFtQj34kpU+MZV079mNZncDuhIbjuhiCHjxKlxX+Y2tgW75wNE8l3V8T8bLqqJ7+uHWStDKUrUH0fcz75VmijeshzXBePj5kKZ43ZQQhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcEZOHJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcEZOHJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E964C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753637393;
	bh=EMUS6TqcVU9ZiBZu0y/sw0K1l7eB5flqw3pml9bqzU8=;
	h=To:Subject:From:Date:From;
	b=qcEZOHJzaKyP8r7bIvXZVvjxmxOWEpnW4uULntqxs4UdWIQgaHeYHOeS/fheqqlTn
	 +OVGVEEm97l5fBYWeXNZoEyJGgU3iwHdS1Nt32l3nLLP+9vBgXTE2bwzLSx3d7ZJNv
	 UbCIvoL1Zh9HjKfKFxnJWMh7W2g4kt6Xu1hE/Zk2Wi0/JcqII5YMzNZ3QwL/nFwouz
	 +1rKB/XVcFaOqDSELEOE0cvcPapdfDrmS6t8ms94nJ4gBj+r2zEgOviCAVpHwTZ2j3
	 GqmClJ4FCXVizCs1dwroMsvDsIDLPuU6JcyQy7SWIRZ1pE1rvGRVNmW9f46oYDFmwd
	 VJNxzXjhjZf1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1AC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363739357.9167.15471471729520667858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a3ff9a6c09001753f05acb6ae7e16203fb0840a54759fe3fbd3aa659d5c3e3
Date: Sun, 27 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753637393
