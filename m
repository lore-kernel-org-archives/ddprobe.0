Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384041D5170
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743152994; cv=none; b=C/4/b7thCs+UqLpe/XRB5Aht2uG7aIhsQzVDrHh3RngxpnrZHX8YvbQ0g+WzPdhgKEMcR5d6MfKHVaPmW45t45WjxHDVqWYPhjStFIkJT/tWCat1MIvZMv3u5hAoqhb2U8qE1CnVOXvYu38rwow8s/lsnK5SrRSMXwxLP0Un/TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743152994; c=relaxed/simple;
	bh=tqAHzBWNDS6vAbzUNUb9cUorRp3Os3BXMhfQ+pxZbqY=;
	h=To:Subject:From:Message-Id:Date; b=sx1Zyf2a8ZuLKgjGEZc36TEIM7yxIjSnHfxHZGTzg6tRePv7Q9v2bYyyodzu3OOg5JngDXCJfgpV9/JUNRtY0s/DCqHWZmfM4y0JNTQNCqL1AgJFqXPGfa9AQTygwIMyXmdgBzfW1ajxlVvuF65oQYO6jzpskOK1h/VzAGUyT6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNIE81pQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNIE81pQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A593DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743152993;
	bh=tqAHzBWNDS6vAbzUNUb9cUorRp3Os3BXMhfQ+pxZbqY=;
	h=To:Subject:From:Date:From;
	b=pNIE81pQ7K35anX2XKtN+p4buA4uhbmcJU56kP8bFyRLzcZ9qpT/SbKlQuVDOPE92
	 0P31QA4OR9/US+d3ltUh+gGpTo6vlLPUUWVNiyZP/0RVjSYVrYAdSDmoBRz0t58IG9
	 UplvBscYJvC96M65snI1Blr+EoMPvgchJ7RqRGezgvNGS0ax389sSvBwR5xOS2H20z
	 lQdWOuDvI42DqExMA/qXOo3WzzLsH/S+dmFxMya4rZyWVBJKfPBt8VULKoyh+b510t
	 IWnsttjKxwzGIoa1HJjeVUl27420g6XDP/92Fmnix+xfOcQf5B8buIcHwuPezzETNE
	 HkBNCvPfeO6xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD55C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315299358.19650.6656095606466680290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ddd1dc81ab3d5e1f07527c90e930586a2992c2f18ca1a68bbdba286bef39f2
Date: Fri, 28 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743152993
