Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554C54A15
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720485383; cv=none; b=bVCvcKrkraYDBcau8Dyj3xCOjVc/ezUmfweI4CMHGOFuST8niaNDq/i/DRVbw2TbKE32PomcoBKcvjkWdsz2d79OVLM/aBfOb1IILCLSW0EwnzK04Q+f6DYrDoNveXSwGk3NL0q9rOBBKovzMFEbYL6m1bqyw0AOIoJuLX3HSWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720485383; c=relaxed/simple;
	bh=PegpqR1iz1U61YbcQkEthuQamF464HcldaT8mSQ5Ago=;
	h=To:Subject:From:Message-Id:Date; b=tYOzrRZ3sDkhO+y9t8nVpzC942cL4Uua0ghR2FzHmM3kllIFjvJpibR7vAtnmG0RsGX4qMTbxdeWTwhtJQHUF07qJUvcTUlFBX42CHY8YV3upQtcnVNzonhMwedyx/7xbw9aDgo3EFupHvqEDtIOHjDAX0ExlYefp4ElNK8I220=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSt7CXm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSt7CXm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D42C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720485382;
	bh=PegpqR1iz1U61YbcQkEthuQamF464HcldaT8mSQ5Ago=;
	h=To:Subject:From:Date:From;
	b=VSt7CXm1AIQKeohB1kEhUhFp9XMzUyUbeq+R5yILG0hJ1sFHvWESdP6Ug4GES0Kwj
	 V2hEa1IJY4r4y13kiABINYG++hGO8SMoG+3Cz1Ew+riAAOed0ZEjsSHHULuEPDbt1x
	 ChS7l0DN7whwm0lhj8t6GmKIaCiFaA/EjBcwB4OncpB1CnkMWeYCAfVybrYYrzB/gC
	 9Urm4KqzJI4YkEHgO4i1MPH6UJAvIU17fqG/3uKnjHhbZuq0BXWKCrf4wEqglE7fWY
	 Bp/mZ40TqeEGRYO1ZlHXP90+9GLiLJQEZP2JYxUAR0+gwbRHPi6BPXe0B7ImH+uZuJ
	 oypwv8T1p5Vbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CCEC3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048538279.25269.17501512261671400368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d662c7f7300e02ed30f734fbc8acbca1c9afdf160fc62a5188edba83f7405c55
Date: Tue, 09 Jul 2024 00:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720485382
