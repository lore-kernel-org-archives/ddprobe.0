Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDD726F292
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757133593; cv=none; b=T3AnFyEIHX1X5wXK1aZ4xJ4K7aYxi1FDuUQdLXr0fQY4DZLbKmhE6X8d78f/0dvslhP0jH2BLeNwZV3sdMzxfv2vxO8zA5x4Kj3QGPOBI4NI9nSwXZKXLFg84krSuIP0u1BOeGlJtJfnKuDqETkgkYIZcScWF8Q/3NYKs2gD7lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757133593; c=relaxed/simple;
	bh=Z5UCi+WLbsehvpw/+62I6rSO/9JKP/Di+QamkrjSIQg=;
	h=To:Subject:From:Message-Id:Date; b=IVHB9TY+K55LpulkTJxDn2k7vrtHwdWaMhqt3sVw9lB6GbAedkUqFyKdl1O77qOhbGfS7GSDFpjOU7/XyCGqykddHIAyZcSLxhMxOKGImaA8KzlHjSJQt2KDXe9KVSCf9iftQYRUD93mSlAooZk0/rVQEqxobheW5Exo18yfVhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCbkFbAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCbkFbAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA27C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757133593;
	bh=Z5UCi+WLbsehvpw/+62I6rSO/9JKP/Di+QamkrjSIQg=;
	h=To:Subject:From:Date:From;
	b=vCbkFbAgCou/ZcYdDlk37Zz6DFSd1AZfkBWzXytcbMIj9XvC6lJJdw1T6M/byZEw5
	 j+MUFnYQ9XENFCMAOiBhoqi8Mvyua+rf3ekO7+/Vb6ZfdxUP/MQu3ffbba7uaLsrJq
	 R1weIuXD3zE8efXFFaDACIfCHOGLC5dPBbWABALnrbBtsJMlCZ9PWV1Ql7YvEUyW0U
	 jCUw+27xprr1drYxf2zkl2YRCiDPV9sWaFKqj2pmVZXBbkHTLTK5Zbcg5ex6X0IIWI
	 MYjoyaBAJ6/YBVSzO0W04PYBjOnUAR98Ukas/lftQWxx/G/B8sX/92ai+jmabj4Mdp
	 Ab4P+CNUFYu5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F909CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713359357.15051.14487770779937255882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c293450b9858f8c4132b247cb98f7f2347d66da99798e46600235f633ecca9
Date: Sat, 06 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757133593
