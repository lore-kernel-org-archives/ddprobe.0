Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E591D5ADE
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773201894; cv=none; b=q0JxrDN5YjD7p9wr1pAQm7iheTFbofHgByr2X2O7Ws8zWhqkSbf1mUmqpabcohPCuXAbfVYdLXXeGIq6BVtblWQal8N4PWJmg17zh68jnbSh6HWRgXr7wDSz7mXBAicbI4M2x+q3xk5+L2K4lQmzUdGRtd3YN1RrVSpFGrKm94g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773201894; c=relaxed/simple;
	bh=J7Gd4OJl7iJj4Uy+X15yJ5HhRN/MK/9l4p7A5zmDTiA=;
	h=To:Subject:From:Message-Id:Date; b=V5rRywLdH6RkCUcpVsLyxXmvXY6rLYzwmf9MYSOBFMfb8Xpd07/ZDgWRW2q6ia5jvsEbehQilBr2fsXhVKpWiMpPRO6k8rsPyLX8KxaLcbKdDyQ75Gb7i2KIfuPy8KmjPGBdxb9hEVqPXvIwW0xjmLJbGanH3aWKEAbMe6WnR0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivXsOjAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivXsOjAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21EEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773201893;
	bh=J7Gd4OJl7iJj4Uy+X15yJ5HhRN/MK/9l4p7A5zmDTiA=;
	h=To:Subject:From:Date:From;
	b=ivXsOjAbqzixLie5LAftbt05uVmSG52w0GT9mtsRnsdVi16ASFzFr6lNb2L3VjIbc
	 xzXVOtWJkSzIWfEqmjrTRiP/EQ5PdeBaapeSFSNcBTvuigqlYEK9uIdTFny4fNOd0B
	 Ni10UIh5mixTVY/UtfLNKlMHlIFe1c97EUmsSFuR/xKheYdn0ID0PNOLzQxqLt92fd
	 Ba+Oq+IVgnD6znH9m/yjw5pfNG2R+/u0wceWpRhjGGqyj+SA+woa4ma8jD4hVl1PwQ
	 8WBrpSGEklyJnIZPCI/PxsnMnm5plUYaAogTATlDegs2zhC3mmOFo609JcwREof5OR
	 7+yZaMresC89g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9037AFD88F3
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320189358.6038.7891821865382235463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54529f0d954fa90c758b8a2c82bc6f082e3d3b2ea6f2b68bc6367ad432b2a347
Date: Wed, 11 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773201893
