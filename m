Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD06218AB3
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746511194; cv=none; b=b2Oq2HeVuG+hU+aeQr75PJEmGV2gcnxd8rhJgkgAHfCqDmlJnhV7JYh9pJjSgom80A7z82aPQ1yKuGyfJMFwkS8DmHyXPqXMUcuBfbze02B4FuYjd5e1uqITqq7i5NQYRdItBbMPchl8wgBUDfHnppr324eI9LkssYBebLFyb9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746511194; c=relaxed/simple;
	bh=xK9hkATiuae1R6EIMboYb+cLlDtxoCLxKZ44IZXxoq4=;
	h=To:Subject:From:Message-Id:Date; b=EYnuawnRXjITIG6KGIh+X8uhTTU0QJeijRY7kxLqOY+XiyJXPTVfG71uhksC/sgjuvebi8upwkHFTjyCRBmumRMaN4UCrbnYhPzDr9wCpbsjc5mshRvNXmkS7CuEZWdz08DAr5E8uzThJq+mZZDb3cQOVcScFOG6+zUBB+DaHsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLqI3I60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLqI3I60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B1CDC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746511193;
	bh=xK9hkATiuae1R6EIMboYb+cLlDtxoCLxKZ44IZXxoq4=;
	h=To:Subject:From:Date:From;
	b=qLqI3I60hk2tFqteGig/cvQ+WnNvyZ5yrxUuhdYLc1pRyuY1OHdO4Qta7l+Al6FGR
	 zDQYJs81lEVuHBmkte13BAVLhkGWb1u8KaEaSTvtX9PM6Vxn4Mf+D3YIE49/CCAs1N
	 Q9Ni7trHeoMBUTOQFT7hWiCZhYjwIcMIy9Y5aj9eom+0x7atytZbG/3VIbjwvUY9pr
	 uNAkXOgNzkJTe/OJQdXllMkYBSAtZc9nJbyu18O+p6G2yEeq+2hsmYJ/mBfrmvNtxK
	 1m/OAgOLevYEZ4SBy2Lu8iPl1b8fdLUkGMkiUCmzWdU6H7+PHQoV8kJVBggqoHnOGK
	 xLkvJvnCUaS8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1BC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651119357.20098.4804327298626520561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4b8655b4d005b5cf3d3d99dc0d1f37a7dce17ed0508cfc872e63a1d771f530
Date: Tue, 06 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746511193
