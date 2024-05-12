Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66122225D4
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715522543; cv=none; b=US+8PkcDtyZAkb7wz+ffDMq5kE8246Zs0PgpCrdVwRxOsng7UG86+ZJzGRczw4q1s0ivA6xO9v3YQumMEdoimyCEV3JhlR1+Hk+H4OwjGGVcHjdbHL08FbGXB67Sw6tCNwmj1o2K8FYPgf8zh8V3xoqxBNpANn+0aLzbZDO/960=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715522543; c=relaxed/simple;
	bh=vZh7Ut/Kud6bLbh/IX52t3bw3LzMoLHjyk0R5QXIkYA=;
	h=To:Subject:From:Message-Id:Date; b=R7w8KTdqN68uMWAvPPfEfvAPdUnR+fi35reIgYxsgpBBcNuMB71BLDIgldxrQpdDyz1OwttCJIq1boECu0thxTOfZJc7EMxbdMC3Glhhly1bjZkbbDAiygb8ZAOq8jzz2zd9XK6xh48fbu3131FYRpgM8EDJkjrKvwFZYs4Zzk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg2qRKQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg2qRKQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0222C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715522543;
	bh=vZh7Ut/Kud6bLbh/IX52t3bw3LzMoLHjyk0R5QXIkYA=;
	h=To:Subject:From:Date:From;
	b=Vg2qRKQzsw9pq8FtvXmgl53UkiW5vZNGiRVGSfkqE0bUbZrtTc9ZvaRt03oi18Mcr
	 X499DrpIFclAw2VcVBemFfHQIaIxKlfPTBWBCaJ/GYPPi9o7uQD8qmoS9wER3o2yHL
	 V5PDma9AfNAJc+kj9x06i/vxC52bhoSijalvICnqgzThGAmRBsI/0bbg5QXHkXVjX+
	 lrPs9eVeavyyuwEB99yTzU4tMgAMW+iGH3/w6d1Njs2/PAx6iITWQZx2mW+iznUN2X
	 3vFkCkqBPI1eDllmXVOUUoizxh0KCi4QjOEWvxu9cBQzniywMmbXY7IQTaGQWd6MtK
	 O3g5HYrzDkJ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3CB7C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171552254280.17151.17016888855244055944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc6e3b888467acc7817ae5c3c838fef02c025933f3b2feec72b802a2942e57a
Date: Sun, 12 May 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715522542
