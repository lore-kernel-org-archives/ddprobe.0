Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3123B2309AA
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747435794; cv=none; b=lEstIwdvkZ72dEaOKH9rK2arpQR6pVrFzBimDmcTsM741riF/0BpNkZJvaerPPyoFMqzaPdAfVLtazFuhgJzJBLgk21k+vb4XFRZlFMe3mp19mEOri8sGGqY05YleYj8D2Nd83uzFcyOZTO1fYu2wgnTOjSEiEa0ccCZJGxQfik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747435794; c=relaxed/simple;
	bh=jSXe4mqGhv/t/AE0BRxRgj9TYYNwyul9mHmESYpyiTo=;
	h=To:Subject:From:Message-Id:Date; b=C4nTOk8HdX6+XtmuZjlDrnvpWBuy3nNuC3d9t4grlFuQMpG+TAzo7DNeXtAAqH5SNZpUFKzZryoTJcJVUwm/cSn3Ab16L7JoTsGlsrzp3zhIKdafMxtKZzbZ92L9p39ISymGqZa1laHA39k2A0TvDWsXcuNg0GQJLcYCC2M/XFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqG2NbyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqG2NbyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23BFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747435793;
	bh=jSXe4mqGhv/t/AE0BRxRgj9TYYNwyul9mHmESYpyiTo=;
	h=To:Subject:From:Date:From;
	b=kqG2NbyEMpAVy2w/VxCAoNiLT1j2Mh5YOQu+q4gE7cESCBrIwwG6bVzID53MwZ6HI
	 +k6sAny0YhTwsQwHwAIYkVnHqLm9GeEVPX3Cnry1NC/6xiXp0gTTn77wxKJgF4O1Fi
	 hsvd8PpHihezeM98D6TDeXEF38oQtRfou9gpKpxYXz7+xq7jLJOkcaJ8K0H7MAnveb
	 ygodYTVWOge+RoNn/JeCZY6rvdq0NyFrju/ZR6zGxLqo1GhIlBQ9UriLXduS+NeWxw
	 ImA92VPSymqk416e6j45x34rKr6xwHiBlPchr+6eFYisIpKI7tzExTvhI1DILtaYjZ
	 ax5QrtIPTfrZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B84C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743579357.29313.11938817502291804001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf2b750fa2f6723fdcfc59c02147fbed67ea529195d446b2dddabbfe5e8aa1c
Date: Fri, 16 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747435793
