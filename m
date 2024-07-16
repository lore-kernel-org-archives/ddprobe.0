Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F2E1D68F
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721113523; cv=none; b=a1AVTgehQ9kf4OSU3l6fY2GECGoFtqg8RjMkD5pn23QAmPoSJNsoHQSejNWITVj93G31xCBqZAVRX04FmtkkcsiA8XTzNb4tIon5KX0QV/FiH4VVEN29dFRtbLldlAQt5VuBXm2LEBYbspuTHk+cPjCluKcVJ/aMzSkHVI6bBE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721113523; c=relaxed/simple;
	bh=wV5XDwib3HDGoo3/LZEzgH+nq2RAfDPu0Gx9RKumB9A=;
	h=To:Subject:From:Message-Id:Date; b=XWQ3dEo9fXQGbMB+hKhJPidSaQX92eABi/hNXSAds5Df8jgOPxRwBnIZyVmv2JqWc2WRVjn7y7MpJezvxCdK/bjta5Z74AAvYkOj3BO/EIDkI5+IsyHzWnDew52syurnUwcIBkOJmVItDFI3b4i1VSxR4OvtzaCf9+/AGdKyLR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTzvajsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTzvajsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F41FCC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721113523;
	bh=wV5XDwib3HDGoo3/LZEzgH+nq2RAfDPu0Gx9RKumB9A=;
	h=To:Subject:From:Date:From;
	b=PTzvajspNY1YQjUAFOhmnahrQuuQYG45ufkyKm/FTffJ3Yqse/aHJztHoj0uAT+BS
	 dIWMpNjpZ2V2zWzCceNWSuk8TEMj6EV0bRaIrGdhjLsFGAqU7ZBEjdQJVZ2A8u4WLH
	 blGQMa19+sRwGFKP+k73Ks6+Onavb0BvjGnMmsMIf0DZvEOJMlGFwk7WQ3ZiBc0bPw
	 BD1xmGmphippaKu3cu+2wqhjCOheQDKUp21wytswbcK4dDC25UMDUzH1ENr58QEPjO
	 U7ibNF2NZ2T3uiBp2yNiFBNIzCZRMtjWUATm31rALc8lbVL87D+oWLNqEDHW93NS4n
	 krKlMyHKvzFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C43C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111352285.6781.17438288907169631588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d51641dbc039a2ec710a7e940a28d59c0abfd3b71a1b7b56b0e1af19413c39
Date: Tue, 16 Jul 2024 07:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721113522
