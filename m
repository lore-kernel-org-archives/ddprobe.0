Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCE915D1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745120394; cv=none; b=LeWie/CrMTF8s1jBMnGlCuLEbnminp2gwuhmoBAWpBEmjZBmqOyX552PESlA8+foP2TZhsqgJl8qHbrcM+Fek4CHyEbh4Qk/BLsdQEprkeRpVzRTEt8ZfIC3OVpZzpy7wYSvIzs0lSz5OXc3UNY37M9U/q8NMnU+pqUP7s0F2z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745120394; c=relaxed/simple;
	bh=vhdIfAdJQe5NDDT31f3MP6THq9TOw694fpkHufn94sc=;
	h=To:Subject:From:Message-Id:Date; b=LT5JflpIZKEADwmCS1+O9M3NYwrob5p6g+Sktax1dSllW5Mf2wjWI4xZFvFtXsWpWOOZKh24lXlfJENAlif7cg0xrJgiSR2atW4U0vZYeVyJfyYQZVyG978Sb3Kt+mih8c7JCCDbIczRpJAzSn074QfQkTR0Pt/UI/qclgmCK+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWxNxvJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWxNxvJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01FFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745120393;
	bh=vhdIfAdJQe5NDDT31f3MP6THq9TOw694fpkHufn94sc=;
	h=To:Subject:From:Date:From;
	b=aWxNxvJ45hF3/dxyu9LbUuiPPda9MVXpWYaE+qAkmCy6bhU+GWeFEb+e6zo0fSS9u
	 AOiglfHeafWWFGmbAMSaOmHjyQBLVK/k4Q7ZFUwz2f7w0c2GAB+vQ7rzr286kKOGhu
	 pmKTpAzRoTlXHfIIoOXswv3tKjqEupnQQ162xn0ZVt/UE9OgpcdtdIR9O87SOStXFn
	 UeiDMsOeQGRKSwh9eDUUMk6nJjsI9qWSKY1jsDca8qmT9+sO+8ZcnAk2dlCtVX/95L
	 qBbE+SFkQGnP9t0RpI8hlLZ2YyilV0LpQni4FpohdKBGappuxUpywbMpKTcjUZ6b2Z
	 nXH2LrqdC6t2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A627C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512039361.31422.6640138832164753201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004e3e845ff89db8e3a2f7bd70bc144b8ab8123cd4d5d5ecdd4f7220b59700ff
Date: Sun, 20 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745120393
