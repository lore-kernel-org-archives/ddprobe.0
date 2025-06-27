Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2027D29A307
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751016594; cv=none; b=cUM4cgFJPBzLtx+CGRF6AI1uVhDw9PF8zgjGd7bLz8c3GuOYnmPVCN0Sj45JaxzAWmGuRkk4PbaN0BLJnp2peGH8EBklZCVHbXm3YsQVSXggGWPO6fEkH2ghputS52v6Ar1YeVdQl9ap2qFIIGwQt8EnkGu6RDRVGrbyA4wwD0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751016594; c=relaxed/simple;
	bh=IdS96UYmLqnEHD5ppfNKyIbYyz/V9lfuSyy4jaSLieM=;
	h=To:Subject:From:Message-Id:Date; b=gnzp2LMc4JVYyLinXOQYwZXEaYuuv4d8smeRx867+KQO3iy+JtE0aNKQB05nZ92KnJAqF7ZtPtr6F3q0OxpZYWlBAFFvJcpoJaS0zo/tioXROvhLMoviiSrbM1pZM9ueWU3F9LlTX50D7IkM2Uyoo9kI3qrZ/JiB4Tmix3Kz50Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaCXUimd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaCXUimd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99F9FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751016593;
	bh=IdS96UYmLqnEHD5ppfNKyIbYyz/V9lfuSyy4jaSLieM=;
	h=To:Subject:From:Date:From;
	b=KaCXUimdoh3d9CF6ktgYMMe8cmEwZav/a07Z8Yq2ej7mWKnDhQCcRHWZJOCcSRV8x
	 pFcb5uHE7pICGXqGTXDEBPx2ffvg+xty2Lg/l3rZhVFT2c0ziLw2Lv+3NMYdZ+/Oo/
	 4z/D6IjzaOpMRl0hSP3sPwNpzpNTJoYZ6ZykmlWbUB/L33F95W+IE/KKR9ZBBRclQW
	 dXYHlRGWT8vRAF6oEIYthLh4HfeP3oArz2a/mbgNNhR7b6gGcB0yY5Mdk+OQZec0aY
	 YsqOl1ZAxBYqtozJgg0Wyj+Sjt4gTIfyKHPU6ini/oamD7bViAi7EVyENge96FLhxi
	 NIlQXkQUNuj9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92505C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101659358.15821.2930876423840216686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb656581975e548a2d3644841addd181af63565957aa0307ebbabf7f7834d2f
Date: Fri, 27 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751016593
