Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A47928D8CD
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753096794; cv=none; b=LpmXS3dzx6A9OfKxNeflKsharwyAzELGkG86sAO1jUwkHM7TwxaVdDsU9OIcLMH/Ud/x84DfRndvt6TSmnyS5Wwc7EsKWvLZKFaRh0llaEimByV1G9CfvdXKdnsrJqa3zTdArhmjK29Obz3tDkc23GQNMXDpT1SekmUGWSvSOp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753096794; c=relaxed/simple;
	bh=tD/SUntUi0clSiwcVuNmwmrMtK67xBhTi/GAu1ZYkXo=;
	h=To:Subject:From:Message-Id:Date; b=oPekCE3AWEIkCMA27NyMfvZu5ci41+oPu7fR2X/Hd3erYk+Wa7Dw3PxG/yXqQBu6IZRkKD0k71Syq6Gcfk2HVDsOZWiIuiZ1YojkITs5It9aQCRHCJirNwEnWcIamnNhRki+skQyeinBFMDep8ETNOgZ1v9qcJAEZXXfRyKCgHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5r4Gg46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5r4Gg46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A360EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753096793;
	bh=tD/SUntUi0clSiwcVuNmwmrMtK67xBhTi/GAu1ZYkXo=;
	h=To:Subject:From:Date:From;
	b=Q5r4Gg4679aCu9bCdsHZYDnHZ2egCHE9xoBABvIXYsf5bShS38m3JN5RfYppK/Jj3
	 /RK5b6WFQkLtMLvxblFCfytVP6bWqqX6IsBurBcO7xN8AJ9pP97DoOlC2IChHTwkyE
	 FCzMamSXQP45/Euj+1cVcIQext1zvCdNvOktxSYnCMeuGxDaPqWPVhDYXEYcjl8y2A
	 MJPviL7b+O8UjQU/r8wUoHrxC52DSY1eLvKKtk37xmO+Qdm3S/DDOjb7tPt0fZbjlE
	 5J9DuLThEsLLdx8TTkWdRona3vAZnbJBqupDN0i14qpozLXB0+SjHy1XFGEfMpOEsD
	 fk4+QTpO9vDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD9C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309679357.31159.13105294599133682489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c824d201c25905e9345d92b5777ad4bfc08c215202b81e2adc8867b3dc3ce549
Date: Mon, 21 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753096793
