Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340C61E573F
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749373194; cv=none; b=G751DERxQ+Y5pd6EjkpEkft+YipVfQy5brfXdDwWvj0ocMPqhYKkOZsdMMvVmc5KXCwW0ji4lXYSwxCChpuTrtxf0RIrew6P8hPYFT1pouc4g0/rQg+zdjoc1DrBX6dO6wxo434k/ko+QrmU6o27dhtSDcw7ZcWdutLiv20pGTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749373194; c=relaxed/simple;
	bh=gLZGZ/PPpXtvuYfsO+rRUqiJ4KuLZ9m3rjzvL6LN03U=;
	h=To:Subject:From:Message-Id:Date; b=ZXXfvSx0G83AnzFIVDln+d5NfKYPnr+JP5u16OjxmLdZvL/GvdhU+W3IilXp5PL15QHw3D/NxVlBu8uy07K6dyYhzZugFxvuSK0esXiS8iRQWThzdT7mTbUw9t8a61ATJTSsbLKgtlnXzntcd2ndR4RmLlGwnFL3LGTmfkNb1RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCmPaZRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCmPaZRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA6BC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749373193;
	bh=gLZGZ/PPpXtvuYfsO+rRUqiJ4KuLZ9m3rjzvL6LN03U=;
	h=To:Subject:From:Date:From;
	b=eCmPaZRV5fTEaxH/SS2lGbSllDVIwQ56LsmxFGCs7VeboVzVKTIDhCk3pm6+7G9GY
	 MAs6O2pHR8/DmbCDI6Hkb7vJco9+iJaOo5dI1c/FoKjy0xYYEGcpYY10gbnRsIElHD
	 63GTy8za8oXG3aRDfMek00Zi9bxOLUjwOz27kKrdvMaCJldfu7U6hxgvb9Gta5tRQ6
	 SvLP6CU2zWqtqxNICZ+4wEEkfpv3AqZlJMrdhDfGkUyIr3mcfxy71tZPV5TKVEkczt
	 SPCdN2ranS2Y9AAntPT4Oo5I3WOIjItiAnPRk1nnyx8ORDCLjYhPklgUNw4P2aYsaP
	 aLP9J+c5nC+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95726C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937319357.5286.10399591708459193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585dd184128c086a9dbea0a8ec8b5154b7c1873635f9d18c61669cfe0a56645e
Date: Sun, 08 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749373193
