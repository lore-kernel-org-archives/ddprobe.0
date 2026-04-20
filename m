Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E257378D85
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776721054; cv=none; b=jeDFpUBZvWkdV9VVr/W0X3+qat5kTd3Zc8rSaEiaepnlADMJEgbR5CT7WUFgZMZ8IWaDzpSnw9jn4X9LS6Y/AmJk3yutX5I8D72XV5UUd7WMbcryM+hv32TOAUMwwSsBQ9knnHYqY3VjoDY3jnDx5XfAJLOZBuea6IHn3FSM/Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776721054; c=relaxed/simple;
	bh=QQoMykcLhDnwjuj+ochdsAryOrLojW8hvykFEr3LXK4=;
	h=To:Subject:From:Message-Id:Date; b=Ng7YuJtVcfgvoDMx/qAeH3yQKlGtijQzGQOOqs9XDFavbAmoP6oGhnE3BuUKc7lpUeSX48Bg2mP14WyDBUu16REuqPxGtjoZk+f6dlABg1T5vsK4iEmAi4XymlaDmEY3A4iNBW2G0+dE/HlPMgYCu+/hy3bzTqEj8KaPhqENWJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN6qSUy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN6qSUy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D86C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776721053;
	bh=QQoMykcLhDnwjuj+ochdsAryOrLojW8hvykFEr3LXK4=;
	h=To:Subject:From:Date:From;
	b=XN6qSUy74hpWX49tM/NzoUcVlgUlG823bbPqbPk9aDh/AQK2Q+kOzf1lLl4UhCqvx
	 JCr4yL0U5PKqyYK8mNISjlqKoMe6fdOxomGvf69/t5qMAGSBbE7m3IjaWXuL2HJZoQ
	 wOdnouzw68Jg46Cjh/doYcrn/m8gBGgtd4d7fx1bz/P+FlNRrw8b2FOPTL9OGuI0I8
	 fy/5l+8aDVsDtScEHaJ5dU9kK+wnhnPB+/4fOrBDwYD7Ae5pe/DLbOuOIzARrRDdaY
	 phuIhBzm7IB6UffOqjGkJqeeTB5ooZ9xatjik86r22J2wwI6quaYy8FIwrocNO21iK
	 wR9Sb2YJxMeGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA93F5A8BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672105370.17725.9103651792405478469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7542205e95964c9be725dfd9a68a43a7a5663155bb910650b83cff62eea49845
Date: Mon, 20 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776721053
