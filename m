Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384382E339C
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742740194; cv=none; b=BzDu5CkM1nKUVdbEC86TkBIkcn7BQJVRWNPD+jrNloaCvdh4m2ZnfPGE8wCdzFnx7Om3OOJgWc5KXrFQdhcl+sjdebu/FFekHlv76eDiqqXG8yDtr3GFXGqyZZXJqtPvTROND/jvUFyVlYBCxOlmLZaFFYxFicucERWmJDwdzC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742740194; c=relaxed/simple;
	bh=GcXa1UK6hpV7HhbdVAoHjch9oeuYRbeY2O1NTLNPEKo=;
	h=To:Subject:From:Message-Id:Date; b=sIYph9nsoEnE9chMNsGU0ZTZFt5iDEKNPWQMygAxfhBHHXc6I02C7pjuCZaX0CDPLZ3N2sSmJzqxpTv/m4Xa3qdqykxM5epWX13m6U5DXmvTKgmyGpO2e2S1tYJ9JZcjljNr9RAdCiX9JRGhJmRR5wWbL6JoyuDLfNfvjV5W3Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rN0FV26E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rN0FV26E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B155BC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742740193;
	bh=GcXa1UK6hpV7HhbdVAoHjch9oeuYRbeY2O1NTLNPEKo=;
	h=To:Subject:From:Date:From;
	b=rN0FV26ET3g91eiSWdWZBvcgmQF9uPwjKCf8Oo7+upvxH1Dy+JcBo5ihS2SAf+Xdy
	 zZZ2U5swDI4RGCNHyFM5tppA0R94t3/rafhe56qSnfpHi63ryO6LBXVig5PxeuHsUe
	 J7js2FLOcV7MFvSrFURPE1JvUadNZvvJ/Jc7p9/LkYDCflGZWjXJmx1y22hbwXkcrM
	 m6dKQ7KRl1d2TzPAZIUJ6rLPMZFyZ2qb2wJvn4h5NgqZw+TBx4tAA5bu0MYJfvJ2KH
	 Ox8W2fF5CfBVQAyTxv4RYcMZRcnGeaLEi5RjDlZDtAqFUc0ENWcl1iTTEZgJ9Nw5aO
	 vSZ6TR2pyfTlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7ADC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274019357.16791.14993950865421602708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9677fab2c10579fc5cf65f35c23a44b44fb544777778df55328c9f358d4e07fc
Date: Sun, 23 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742740193
