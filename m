Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666A517545
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717037063; cv=none; b=Qq/6EPBWHGIWZtxkPpB+/6E+nWc5Fy0S2To27dPPhllJALPCbKcASM/stOc87BpuK8WAWBya8tr+odHNhk8D5XFBXE+iBBwVsr15OIurJCWZAWI8DhArCcLgPYHd1nyzAyiqo1cvS9aiVNTMumnGAOh9sS2QeSSec0vRxjaq16Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717037063; c=relaxed/simple;
	bh=Fl0hOCQuo7HmQRXlpIXqkACEgQGnt4H0CZEGpQar7Xk=;
	h=To:Subject:From:Message-Id:Date; b=g+MFkVL/7HiM4/N2V0MWRajXwERQG6VELUn3q4o1oLJeYrNXcW9aLXhQkL42I9zr7m2B056h7wKI9TuEZWybF8/5OXOz7a9/XxQeVdZm1HQXZ7fiGvWSt+i7JlHGBZn/LCdg0BlYSPAgVu8//dn3711yoVe49D/2Cp/y7j9AQ4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaJy5i96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaJy5i96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EACFCC116B1
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717037063;
	bh=Fl0hOCQuo7HmQRXlpIXqkACEgQGnt4H0CZEGpQar7Xk=;
	h=To:Subject:From:Date:From;
	b=kaJy5i9683jpsiFeRetKb5gb6DWn8qRXzEytfEcTdSQ1m8YNpM2fFuNR9CY+zDt1X
	 e7JcFuYrlNxGTlbsTdx8AmHUOad5a1DQrtM4xzS0nKowdG4y70wIaQCruyVVIbx3sm
	 If5roVGerF8se/Zk2X2cpq0nt6eoFX2TCsa32KetwdsvNkpEd2dQrEd3L542R9UMKy
	 gVXxb4eU+p9h4FH7H7DXPMoCI8OSbWEnZE4M4eO7k0mKb0wPsaQr3H59fjQA3HzfUY
	 iLeghJmSmdm6OxdvIeB5tzur1BVrjOa0mQTbTN15vm3p9yLov1FCbDvnr8oyFGlY8H
	 x1oEpiZzo5dYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD00BC25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703706282.17845.7507682464312323000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab420e099bafaff95f5a1cf1f4c5791624c21a11258f5a7ff5125d46b8d5ac3
Date: Thu, 30 May 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717037062
