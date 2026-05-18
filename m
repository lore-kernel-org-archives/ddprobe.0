Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114A430FF1E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779146434; cv=none; b=fik9DEbpfI0DzcBJDMPWOhsKIjkaz6f87UsnSsnA3V36p5oF15RIy26XoyPbve114Rzi9MJe3Hjf5sqBL4+LCPSXh5pgC4kmkNFS3XlFesi894IB6HoWRVzsh0MIdz/GyG/CP5s7+Dtf0r6/RsOZ+/5D7nZlr0C8FhLUVyomY20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779146434; c=relaxed/simple;
	bh=xtlSm3yvHv/kVg0MoriGj1/DLnRfao90ZXulhYknEcs=;
	h=To:Subject:From:Message-Id:Date; b=g3uUzssmxJoVu3mJpcJZVc9O/3LPcwL4tR5IV27pHkoPvvvu3NaB0q6xXz2EfQtffF9A+GmD5o8g+59eXP6Nauei2Nd20c2B4KwnC6QckCYq2nQNEqUSwbje/0IcgNhTqftdYc9nhSpdXZWX5Z19d0ZZIf6QCavaTfwI9pDwGJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGZcl6dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGZcl6dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F04C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779146433;
	bh=xtlSm3yvHv/kVg0MoriGj1/DLnRfao90ZXulhYknEcs=;
	h=To:Subject:From:Date:From;
	b=GGZcl6drkx4iRJW5GgOIAq/F0GMNV/6tjxzwPFJ2nfm/8/UVCD6aZKBwitL8OIHew
	 iJKmgOQV+foEByjoqbXaYZ6O1I2OQzmwAMFTq18d4h0g2p2Osp0ebwRIWxzEJPoYIh
	 OXu1K1UuRb1oT/RyCoMAS2l5yDiyt31Bw+Gjc5d+6e4ZC0ePttoYZ3wX+aeAoevIwB
	 JK6xLf6qJzok22sg/ufAeZqZRYTz3cZMtrKC9CsQgWgws1dzroG+TAXeGYZ1QuhAgB
	 SLwABD3n4kPy341c4bRrZFi4oMZ0CZ/CP4eeqn5foZYS5dqkMg3ZFTjj8ykaQeDRVD
	 oGSSuLPscA6PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D64CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914643370.13944.6120985350017623307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b366298775dd844779a613f5e2de2b671031ab87458475242c7b15cfce79c8
Date: Mon, 18 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779146433
