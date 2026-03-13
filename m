Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E5D3AF655
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416094; cv=none; b=ZMTeIuEkAMCp+4NUC5BshW0Om6Rts4w99en8WRCaTWjHH6gc7YMA5FQqH5nVuk18TUHpXCraj0mPVRZFid/k3jMimknoyQnMamO+KV/v8bTHubh6o+KJ5AszMTIxIdFg5A/4HdOXzhvTdTQuEL2scl0U9NR4MZcQYvsYhdLv4Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416094; c=relaxed/simple;
	bh=xPoYAfHOMSi/im+o8iKRmtK0eUIYQ/QLiLh6pd9+FB4=;
	h=To:Subject:From:Message-Id:Date; b=OfVKeoL5iYR34KmkcnvuQbv2PLLFSDFs8hhJc0gb+VKwilPKW/7FGevVH1TrE/G8OLXCm7YWJZsjrxXf18ENbqFLSme3an7UqFIf0ycuWXdNr8CvvQYplxEWJqw7+7ddnr0Nu33FYdLBWDL/IyAlrVFlRSScxTaXBLMZLEfq6yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuHSz+6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuHSz+6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A847DC19425
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773416093;
	bh=xPoYAfHOMSi/im+o8iKRmtK0eUIYQ/QLiLh6pd9+FB4=;
	h=To:Subject:From:Date:From;
	b=JuHSz+6iIqCcJN+sPY9eb8fug0eFI9nXEwcfS9nXmDZJAo2ow9zO6UUO0uA9j3Zwx
	 W0W96f3wyuyjVOtx8XwNQlg3IPLRZ0y5nRSbUMvOPsm2KEUJJhQCHQqsJ34xerhnH2
	 h6zAK61Yd0areG/885AqB8CLLRxpE0DaiyWyYXpXTq3Jv6mj376d0qtnv1cb2E6jAs
	 aLpWJBy/xB7YPV2RI4ssb7NV93rMTyh2QiMpAFZmyc7fW6mMrKUajNpIhblIis5H1Q
	 LEzE1T3/RX1NgFLo4rGVrEsYWyHTcLfl4kqI1EHV1ikkwPf5KAzxXShpm7E/UP2cHx
	 uIoZDdjFWYE3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9942C105F7B5
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341609361.11528.10720318521736760039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9a722f9b548077cf4a09df7f49067bd2e1eb7edea74648ef80849339a1f618
Date: Fri, 13 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773416093
