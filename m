Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5DE24E4C4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784638114; cv=none; b=cviWoIxVZqjiWaVG6lwinDzbRUWJy/T5xBCSZpJkqSm7Y51yZgiAfOtkBRz6zfCED/VQz2YJQ2eXALyoaF1FzgDgd07vY9GQDxba9TVfCh7GNrVt2HOm+L8k2NsRR0RqgsARKupcgDPwzF3x99lxkwquCjSpC7s7RcY+9/hscHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784638114; c=relaxed/simple;
	bh=oYq0IN5J7h4lsnniv8aU5RJqlvscjUh0gczN5lW8040=;
	h=To:Subject:From:Message-Id:Date; b=lK698wExdtpSpxS9GRXQ8DDQiGxOf22bXErKWX3FoCx/YajWGuRy7uAimpnTvbCf2967uofNjsYRvtXdBpuxJzQ1g/3PKuSuJdgKBYVZ1k7TSDF2U9P5sPcIYqlgrjCeyYxCNa/LIOHs4h+HxYBlFOHCuRQw+fG3kaH5y0hy74E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L932lWvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L932lWvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E11C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784638113;
	bh=oYq0IN5J7h4lsnniv8aU5RJqlvscjUh0gczN5lW8040=;
	h=To:Subject:From:Date:From;
	b=L932lWvWsInD8nm8WVtU1PsQKnVnM6ZgiLD7WJAvtORshVXsdfFDdI0M0TFCj0VS7
	 TLca0X6LRN2oOWcX/77cAGGIJrzxwRo+ZCmOfgVVqr7A63L7kbMa6x/7s/o4P2bzYJ
	 Sx5/DBkNZ8+x6QU3MHdJonAMbhsSc+zOdgI2d420Tp0H5rtRqTqus8bHDL+/fo1h8I
	 jbbPfqBdQSlzYyHwMsTPUBOwYzE3VsuJ/jDOk/iG+uSA3XXPWkmJ4MCfNG44SXHiOr
	 bjJHaFW6R+9n+PXzvlFABEuPJAWe3zV9b70RNQDUVQGeok3Lxyxdd5WOWX2tk3gOKA
	 sMkHiA6gtA3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB370C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463811369.31134.15844844185709313997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84382e395ab262690af2a18907c7f47223cbaaee2666a6cfbd1fee4125f5c8a0
Date: Tue, 21 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784638113
