Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE0423ABA8
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752589194; cv=none; b=jE1je+p2NeCg01MGtMi+8PvoZdnx8bRTqR/odiWN3A6uh7QZo1jjx0i5LnvWdUTjNo2OpLzG5NoyiwRG43nBXEJNb2g4iMxKN3Eaqm4RmBQ3tl2xp5r0ekQh258L0Hgb8IcRAKLbRHWrE81kKZyPofLXX2ydjuim3LwkffOojX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752589194; c=relaxed/simple;
	bh=HZRrUv09QLI1zptN14B6mkKk+pecgWh46ZviGWe5vGU=;
	h=To:Subject:From:Message-Id:Date; b=P27VWYEXMDkIMa586CmItAelxdhqHbRikNKBVAez2sM60IcfGUy0nVMYqUH8V76TJ+NGEjqkUw2vyFJSbhufoPfc5+B/5mqYE4X9ASDvZSsW11pVWYkcaCVXuGLT0qwddb7B1WiKfdJ5pygn6F/7Em+Zyp2bNtJDU/oGG2jrTq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekEs9V70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekEs9V70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF5BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752589193;
	bh=HZRrUv09QLI1zptN14B6mkKk+pecgWh46ZviGWe5vGU=;
	h=To:Subject:From:Date:From;
	b=ekEs9V70AjBXoU7PC6LNBvLmSZ2/SyFigAw7O2PVHaW4T+rfupmVY6ulbVVQy0L7a
	 JnohJzulJodGRWATK2lYk9SgrGc7aza5VKSEaII5Gd81mXVsFFXz4v7Q23hB3hBd80
	 +Dpe3bC9WsGy94KtejV2xtMjUrq+Qxi+qgdgvLmSO1USWAQgb6IEdx09FHa0jAeIU9
	 ZL8aaUZhLi4Z/VY30Yi4oPFWmZEu6QASUUlx9ARczd/ghsgDjjrqfoJfQMx02JrT1X
	 PUHwNeGxbKR+EFOI0WxGkZbcelIfFbgo3VmfQllLxLTzXBZnPRfZqhYkbBJ39RjFyN
	 Xv3dgpFnJHY3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F77CC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258919357.23629.13270426444382304747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e19a0453439387a2f1eb1468076a1fc5997a5d36e63c9deb59c1661d7535518
Date: Tue, 15 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752589193
