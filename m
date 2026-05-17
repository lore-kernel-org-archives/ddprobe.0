Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A0B258EF9
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779004834; cv=none; b=hz06msjg2UB+lJ2dFkMyROa250CPiKX2UKikQwOMbyH3BUfLO/7yStTJEMt4yutnRB3XiOPCCMpQkfE9sfC66jWwAQRqeZt2XhfasiIgUoysF6EdPOnLJL4T94DKE6k4RLXvEN0Bto2wCXlVSKpARzK10lAzj/hWAR+ZEsW4row=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779004834; c=relaxed/simple;
	bh=F7EStks7PBmm7uniBMrn77fkgyZKkmJ/BYoab+MZ9S4=;
	h=To:Subject:From:Message-Id:Date; b=sa/WsFohZzDIlpbkny1xjtPZsU1ZBaDsL8AfUL7Q/MRl+gism99CvHES0Hhkh6itTEheBf/s2vZ03ejsuuDO7eBJa3ujIDxJ5ZBiSbVxspfk6VkmN9Tl/5CPVvOTjQRoN9wL7TUnjbrvQc+IJZo5dbD+0gwfOSes2HOe8v4DjXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeKF/xXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeKF/xXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BB3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779004833;
	bh=F7EStks7PBmm7uniBMrn77fkgyZKkmJ/BYoab+MZ9S4=;
	h=To:Subject:From:Date:From;
	b=UeKF/xXBWs1JKu3mXPXgxikqvb+LWUYLaNW/2CSSRzbPgZ3+LWWrlMT8ORWPRMdz3
	 trSUNYoI1f5EqliWmvoIzs11KnVxqK9rfSRQu1ceHqVheTG8rNDKkiKgQMYLfaQNuZ
	 lEjhT33rk7NZ9qu/9t4PsozeBEQKs9IalOp5SwFp0lf7DH3lBtQeQRPqeROS4r3U0i
	 F9KhiKroXdCNMi1baMJAa7zgrGbtRdgoFmtkaKLiYjc2rPhPXQFGeEYK+IPntrXuO2
	 cC9VLSf3XgRtnI0TM4PhdobQDVJuzFcsjmakIP8s9QGw7lrm+0PxsXS5dDo8/q0Zwr
	 Fwi9sQwbY+IyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB08ACD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900483369.13840.15864300195100810337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5baf37ea2b374bd71c46c6eedb093c45b8111a0e5399cf60d64a8ff462ea087b
Date: Sun, 17 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779004833
