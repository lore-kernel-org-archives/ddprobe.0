Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36952126BF7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782099394; cv=none; b=nUNWx1jgVJWem5Xw6pofx73DjbXXWAd1ffbpldS5fnLqmS/hPTRlQLQ74QgLIx1V6JAqeAR8UUWC0yCAAkm4F52/rglGcTySAe4enUeoulwOREOmKZGzx1uOQIwZnnXSXNG0UbAqZ2EQ7RbVU72UbbvsdDjB4IvzMrRdj64cOVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782099394; c=relaxed/simple;
	bh=9ZFvxZv0ryB1B1ubLnm0IP2yjEkUtm5+tnD1hFKfnvg=;
	h=To:Subject:From:Message-Id:Date; b=hhP/nS4/y9MLRx8xc1JKm7T7xgAOlh6CiL1Ly93iWO3j0SldXxOiKl43VCXvY5ExoOgA5Plsn6SHIZRTOJo6Zfmo114k+mONW77qchX6HGe50O0PG90G+m1vxwavRr8k+KndoZCYzDdZ+85odKYYAVarvzz9aEBs+KH3YOkN9kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcaiJByn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcaiJByn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D061AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782099393;
	bh=9ZFvxZv0ryB1B1ubLnm0IP2yjEkUtm5+tnD1hFKfnvg=;
	h=To:Subject:From:Date:From;
	b=HcaiJBync8q/8zuaocAwlzVLOC9SCnTd0fCGgTLZTULpvlqkaLNWciCI4tRlI+eMY
	 413XLRRZ6x/cdxPFsoXqydchuU2j+DvKSHLNHvKYMq4wpGZY+OZdBZhQ1cLER9WGvH
	 38CAIrEbGIHvW3QEbIleTSMYLvNfvwUQhixE+QeW/ZtRcE3bf8tRokntele4P6gpOB
	 +4tUPL+pFWcXay6Sqc6AJdMvbEqKdh0AUcXNkryBntmi82WKs64/++eWSsPvybgNTZ
	 Q2Z/IYCU2BLbK3meAgVKJKnoPiMHcX3TulNRi5AvzPt89UsAis4NAU0+8KUZ6fUH51
	 9dlBF8H8a39Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2037CD98E4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209939371.13824.13463402191425960346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2dea09193dd3ba4ed35970fcb3097297f1d9c06390c7ea4301e9fec2cafe68
Date: Mon, 22 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782099393
