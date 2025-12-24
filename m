Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75583314B8F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766573034; cv=none; b=guEXkQCks5ZDF2Qh/Ipi8ucp4TcApspMacuLhUw4GzfHlzvl3zVvGCTb0Xscn30+Wa20tqNspVLENE/y7f0WQpbm+HnZz+QydkEK/jGiaQoPAAZMI8D8TGPRTiqmzaRgQ8/N+H7WOvZOPbAPdGOs9vxSqAYnHJj/9Gk3v1wft2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766573034; c=relaxed/simple;
	bh=hzly4HD4NW01BN2bW5dUhgNqwuTAYJzQZispnsWcgF8=;
	h=To:Subject:From:Message-Id:Date; b=gIriu+2aOlahBKKiZPgal/kMzZw5WnuKsasd94sXhZ/6rB2pOISnUiy+F5+up7bpMCs91gdp7TRfvv3ZaUubTmu3D0xHDA0YqrjymNmeFf1SXoHm5xd4R/wx7iZguApVy9yLoFflzxsV8h1uo0WkpAlI/l/fhy8bPewDiOiKgwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrN6jcgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrN6jcgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B47C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766573033;
	bh=hzly4HD4NW01BN2bW5dUhgNqwuTAYJzQZispnsWcgF8=;
	h=To:Subject:From:Date:From;
	b=qrN6jcgpE0w9hsV6Q9Rn6nEl9RSfG5yWLN8AHkfnZVY1yi0H0Dlx/gj2MQVHhL5+N
	 JmdOveKozEHOryntOMjNfc8Q0xhGnocw/M4/N8pSo/FnUH9jUwI/7FCCE2XmbQDc+y
	 wPwGe0Jxv9l3XawB50t8ZSfr1SEWO/M7WzUiO8FR/xkIpN6jQYHOaYgVglUJZKaWGC
	 odVJGhW5b5QR2vhQfHKHoHVo0+rl/43twHVHXUA4R4Cb7lDLoyeWomKAOFcKzMUmUG
	 zShkbIXMbFH8nfozOJbvhYoxFEu64SauC/Vf7KBgvjdKNBkZnp3YkrBDUYyEv1PbFW
	 /Kz65OW1g+3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90199E7544E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657303358.19652.14515717329772125333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39249e95fe843e8ea3cb76f00d64e024fe995a0f5f720c5f763b10c9ef0d269
Date: Wed, 24 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766573033
