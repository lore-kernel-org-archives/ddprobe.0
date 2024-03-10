Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF60BE6E
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710071897; cv=none; b=g4tQ/YvjRsmdDmDjm/erjMy2DqdBRebnpU8mg1OppslvHhuLtvqX2jcP/Uc29olZmXsZb980adJ/oADx+EiyFVdc2mAfpbICxj8YKbXZ4GcKdYtVpLUOUchACTtSjrJG8XPoscWu+FBS/cjORYC8/0WU4499KsW2jlnp+0HiKY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710071897; c=relaxed/simple;
	bh=EZuyPkxXpED8q+EDicbzfg7j9tWyfgYZYgJLErSstvk=;
	h=To:Subject:From:Message-Id:Date; b=REuBldmnkDwPUQyr5bT9Peu9WsKsphPfvxEcDgzDpLH8S/cQcVF9kzOYEWYKhsloK1lsDCYRYtgdvJy22Zxihb5LwXYbvenuYsrK4BzAD5pNuTKZkLKGOEwz9ooiv4vDMI5b6plJbRiEYnYv/IHfk1NPpDuymXr2J63mfhRQ+XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MubuqtA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MubuqtA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB10C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710071896;
	bh=EZuyPkxXpED8q+EDicbzfg7j9tWyfgYZYgJLErSstvk=;
	h=To:Subject:From:Date:From;
	b=MubuqtA9bAWLwwdyTPuu0+CM0gwx+Dp1YjdjRXo/AqRpqj9C/g0CqCIfIVGR+ZPhu
	 XD+cHPhlwkjQRD8WYAbg1bdnAZ6ugVwcu5pkSx/CnAcRCf2Jt6IjPTz4MJwmNStD0N
	 fAUBu6amuRLRr3D6rUDZgDgGnh6xYSTwWiFP/uwpPJb/oxPUEL+pgIUxhelV8V0tg5
	 oyTRas8/k5vGMFvQpVWjRv9frQI1+Im2NBpTOzwPJlOlRl9SRUPo5lrQbjsc9rtUN4
	 wXh5TsYPKiauVBY3OmmnRDgrPOHP9kiTIfjcj/AoXvEAzde8tCPJu1/egcysNCuOyS
	 OvJGaaerHSm5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62617C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171007189637.1730.6497878610050985091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116433618c2b0b5f525a420e351b81816a6200ec5ef586b21b0ce7bb7c1b2cac
Date: Sun, 10 Mar 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710071896
