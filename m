Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234892E1725
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750942794; cv=none; b=d+rXZAEKo12ij9O/iMHJr4U47LIoNvfk8yvJ1fHp0TRT8YTLrws2tTGH+1wNIRSJtETMmY4TTLc7m1MyhIiGwPek938BCAivdkCwrUunFdGam4tg/5TLyYHkVXLGjGpFp1A8RIGBrwjO8sLuQrWLcFUiQfzLXPnD+Clw7mAdYek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750942794; c=relaxed/simple;
	bh=GD85hVwO8v9fqyzBga3vxpmDE04BKbAVqiYp1EMfmr0=;
	h=To:Subject:From:Message-Id:Date; b=Ej0Wyb5gLY0APoKKQtKiHM+3YmEIpo6xwL1b9TzvbgOOD3dxj+cwgEXayupV9O9mHoxRx0nGY8iZM+L6+wZe7varWtHBqQ0omqgdTBcpLAMlmxFKJNy5Iaz+lqhoij2quvdPOjYcBGqPDW/M6G4bGMnrjx8B8/O23ccot92NRFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HI3GWgtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HI3GWgtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D42C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750942793;
	bh=GD85hVwO8v9fqyzBga3vxpmDE04BKbAVqiYp1EMfmr0=;
	h=To:Subject:From:Date:From;
	b=HI3GWgtBAYFhD5ZS0umu+HJAoQH501dIVGDlyCP8dTaDNsJ4ORVGr/B/qTj1M+lTz
	 b+UbAz0xc8eeo0UXTQgvF18Xi/5tzpnGCcHCAEziNBhe4fl5+C6YTpxM+qf0h2/dlm
	 wezuvCwVrcY5gwArPDWdF9o4ViUD893OPt0YFmF839AfBwv5P8uV5P2nomNQ52XPQE
	 q3arszlBJhQqHyow2VXBPKDDCdSQz+DjhmlJswshK27PYkk2cGfDObgMy+GGH61VMT
	 47SM1KcOmRAoqVBvYLzw4jQrzp6ik5isJTfnhVndHxWW7wv7+6BALn3+qTOLgeNOmw
	 UIeF2GhJytLxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91385C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094279358.27381.7826821976982963597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1aea782d959b74f923823ef6a98d0dd3d603cb8cefdf873571d31202c95e56b
Date: Thu, 26 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750942793
