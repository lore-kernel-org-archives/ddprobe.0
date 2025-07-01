Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6672770B
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751332795; cv=none; b=ciMeGadgYOi6v2vt87bBOqx3jDp862LAgojBAUhfrj0lkxLIIJcgAINsUX3MCe+vzTB/6DcECuyoaScIA9OifGbBdwQR7j3m/xPqyOhSBBwhAyV6zV1a2oxjkuCzgCWlOjstG3NTMrCpRb3DzOD3j2l1jb3atYX2fzOKIKlF0q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751332795; c=relaxed/simple;
	bh=Nh4ABRse5L2++9hDfZj2Olf2AWIeQVgp+ZDPnPWMGLU=;
	h=To:Subject:From:Message-Id:Date; b=kglPy57/fUeiTb7+9lpibGX9ycxQr8+rPlf/nOTMIauOYUyEJcIahgQBSDx5EWY4aCQz2KlkpUlKdJHi20mGmBxNOmnjrkuKJQH+J8va34NPS0GNDoNlC+h2LhNYiUga0aZq5KhulIFvij0vuP9WJ+RO42G8git4QVQiUxqr6VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL0XGcuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL0XGcuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B92C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751332793;
	bh=Nh4ABRse5L2++9hDfZj2Olf2AWIeQVgp+ZDPnPWMGLU=;
	h=To:Subject:From:Date:From;
	b=SL0XGcuCei+f4QBZbgxk+bH6Oi/8Z1p3vwM4z/hdTSHlcXNhQWBT+CnJdv9km5PxT
	 TYqGMqU74OZhnE1ER5wFhPXlSEuSV8OBJOuJzCEuSHF83CdClj9ACGpT0U5kB1/q0Z
	 cRIoY82p6EFfBWP2u7bF7ubUMd+PvIFTEQJVbaRx50yDISDfTN+DZ9zBbZCnPzEnl3
	 0tbCWR1YfINIuOHDTyFJ/FcfrTWLVQ39apYAuTlZ8wGpaLU1YqJ7J/O/jJ939/zuKA
	 S7VcEJuHBq+VKWbwhdzN0+emHYe4KvylfPBxAOT6QYmx52Y0vLlEmzH+2KS94d8wo1
	 2TYWrdacBl/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D09C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133279357.13732.7345173843046807996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dcf6ab2d7326eb06fe9f3a1c1c9aa8fcfb7c157988b32e3f4c600e75e2abb8
Date: Tue, 01 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751332793
