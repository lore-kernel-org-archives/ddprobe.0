Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBD4301704
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766414634; cv=none; b=qe93WDvIrxTknqI8nReY/se0JMWGpE6zF9nTMLnEk4uC1ROzw+hV/GWc4K5DZW7kxmriULA6tt9r7xBOTMsKSdDDsl4J+44k8+mXdEgA0TcjUD01MukTGp2vpIwtnE/SOMpDu03KTo86zlYqK7aTCVmdUjZMi0EIGq8eEysTM0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766414634; c=relaxed/simple;
	bh=HpzksSU0UpzMhgmQmODrsUChGooThjEYb6Y5oi3NukI=;
	h=To:Subject:From:Message-Id:Date; b=jYb3boEegvxKHJoeQRlJ/5MRtVZVmcTkfLHGrdDLyfyZgUQ7YD7cf5F9f7vBc76uR0ma9C1vy3aJ0Z657/obGSqEAVmbEov/a8mUQ55P+969xmHBBpnCirQMWIP61a6jlc7LA+IsIFijnAeLdM8vrFx3UKgNv9CALbVWdXegN+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH6PGa8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH6PGa8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B9EC113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766414633;
	bh=HpzksSU0UpzMhgmQmODrsUChGooThjEYb6Y5oi3NukI=;
	h=To:Subject:From:Date:From;
	b=tH6PGa8hVW1fmGxYwnUuojrMWfeTM9US9eVc6syxQEPTQwGe5yODFZTm4ZIF9660/
	 W/GtWFewAl45/cRUDKpX54eSPxr5zHvBqQf++FjLm1stQKpyKGs3VQtO9tPm+lIxPA
	 QxUSl5DGOfIX1s8BVJ9p3Okj+DOWfLR0QM4cbixLh/5rdUN3h7XHpecuX2sJMUkunV
	 ZmV8H0XqNihW9idytSb79AR2CLNtvafwwgRkTwOsnJRfjOtFPUlAPYlZHrJCbgWPXo
	 jAAe3yY6mcoHPyDqFh3KO3RZyxt1Tt95KclAjGbPSXP5GGhHw7zSuQx8e1kTh8vnmf
	 0zszbxQ9FEb5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB6E674B9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641463359.1717.10543504707261423176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57096a3c1ff5bc1bfac34d4b513cf7435af5112ab19ec2bbd82716ebe36358e3
Date: Mon, 22 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766414633
