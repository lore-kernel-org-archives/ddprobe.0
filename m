Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496057262B
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785643234; cv=none; b=gbS/bsXIAEORlafHcKYWmnoNhZCw/hu9nZ3weqxvdx9ywGrNmvyfFZSHeSmoPrCwTcZhBWLQhmhGdk/3tcGS0c9myH0sN80CqAyzmVCRyCW6Qspj31Mx3kZyTR/qObVfeHJIJiDifM/yR+R9NuqdSznT/wCSkqxYPEN9OrhcvBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785643234; c=relaxed/simple;
	bh=GIwamyf8y8N4US/Ehf9ujsPiUDxIrpSyVTF7qyQ7V10=;
	h=To:Subject:From:Message-Id:Date; b=u4idu8pNGooZ0+aFd2Z3Des5QNixqYtPvesMs96tAAecQzMuX+z3LFTuq6Qe6372prU6V54KbdLMiKBgNwSmuNAd1dQcQttICU4Rfs/P3iO6QPIdsy1QQGrJWbfFGCvnHSLtI1wyS9XaXj8lWgkCqp1+kerBhYyyrehm/NTxWK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/k8NTn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/k8NTn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36A9C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785643233;
	bh=GIwamyf8y8N4US/Ehf9ujsPiUDxIrpSyVTF7qyQ7V10=;
	h=To:Subject:From:Date:From;
	b=d/k8NTn2uOqxADfWXR2XtDU/YPoCSLR7wSte847McJfb1WDo3cbqgqtECcW8B4NSU
	 4qtOUaKdbiMWNcfMLePvwPcrDWIFQkx4UnR9TN6taiLMr48dkLjJWnOzmXvuh9gefE
	 QWcNWVJJjrPLsVPaoN0WQQTSm8/uPJgJwEEybpWG3E1dytT8ROO640w6XHUN5iOy7H
	 fxMHjsoVHTrF4tjxoLxIMdmnk6aVWnd4wnDX6X8qJ9f6eNNY4BFQRfWl0Wv9SPa2he
	 F3XGCkDHdC1myJKmYZ765ZqT2JMsr/vvbynpzXN+3WNbJ0r9jGe/4SZL01q18edU54
	 TZbaSZ/CAyWow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE79C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564323368.4618.17152382658455825277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83c4c6df623a7df771bded0a43fb64a55e18fd83e7a4615417752781ff6890b
Date: Sun, 02 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785643233
