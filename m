Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EAF3CB8EB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783368514; cv=none; b=DRxibNKBRbkVCLkUBInaAb4NkQl0Zr29OkzE5RLxaMh9T1Xnmq0C/stl8XX49OnxzUdMpVxdT69jFV0VWLzbOCuNzDD15NszjWvVoG+dTHQxgKQrqSPSKGqn2SWh3Thf0LBqxvpp+JJknPG+G3XotBuDPsyhCkbgbK7dV1w9bO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783368514; c=relaxed/simple;
	bh=liu9nlCPuWgJovK/K3XWazyUYtjXM/Mk0+OhmHNS5n8=;
	h=To:Subject:From:Message-Id:Date; b=D5vrAfheiV+uxbBncXyddHaz4RWnyq3hF9APFrk5l+oXTU4XOSKvDtQ6OcDjcFuqL9fZSsxp8mT9pSz/dh4gIEC6iGq48agHDIPJsBOgstJ0tdrJoFguoAjhfOWEOIGtG1JjJjrn4SN6kDqnyWhlu52vkGHQpoRduoeJRKhZETk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2D0F3Ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2D0F3Ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3E1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783368513;
	bh=liu9nlCPuWgJovK/K3XWazyUYtjXM/Mk0+OhmHNS5n8=;
	h=To:Subject:From:Date:From;
	b=t2D0F3Ie9cTLdnsoaUMtV24Vjpo7fn81bbSvxxdQwaBGzgj2vI0IOnaQuQKYVP7iy
	 FvSW4G6BcS9XxrBqQVb9klNALX8feH5wAhWaCpk6aOBPoHro1NITAXMvxzcK+B2LI5
	 PK4/hljz+9jB4OHM74i264rCokrjM+TO+JbRPv7NDiacM3r/NH869CvPL7rNCVC9QB
	 rRyp7oxq+CRg+OooXOBwgHIeeJTTe8uE4nAEbXep6l+M7VG68Z22FKyHWynV0bdYFS
	 XShmmhqHSdhAjnHOhTl41yX9QPaLCHkT1uVJG08luHmlZ1wtJXGpkmTFHgA4SiT7bX
	 Kx4hw/RSSTX3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84BAC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336851368.25814.1484859308496033838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf75ad92df43e9b0824e951da123b8f1ab0cfc92b85aecbc8cecabf2338e486c
Date: Mon, 06 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783368513
