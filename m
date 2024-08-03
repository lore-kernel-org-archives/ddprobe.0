Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4244B153BED
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722697554; cv=none; b=aX5+erhZLZkYallF91MZe31eI59tQaqGcNk9Y9Au1qAQ+/LmODBt8D4+kSDqhoF2dWplpiCF2/GhYOH4HNc7GHKnLl1CZAdn9+MTOulP7p/3Jlvo+4xsHiVlijAZ3adw195dbf8KJPuPknxe/mGyrYHNtdqaV21EjxvrO7wHuvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722697554; c=relaxed/simple;
	bh=l7Pg/7Mh61NuYAcky+AsULqGiOlqjn5+ZTLYIM4ulj0=;
	h=To:Subject:From:Message-Id:Date; b=I1VH2NIkgTp5+Hwq8LKBPUHM9ADdk3bZG9jF1dvB/7EuWq7fysMYeL52DA1Fb7vNh/SfdKxz2gpdFE/8tyPEmaKat2dZiZ5fIxNFdCXsIU4dQPd1d4nLr4P5qMwqu7NGaTwHsdcq9e9wrCNxUBu2Kkp6pgZrFbVNG3nY2QMYW90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSthAc6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSthAc6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87D8C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722697553;
	bh=l7Pg/7Mh61NuYAcky+AsULqGiOlqjn5+ZTLYIM4ulj0=;
	h=To:Subject:From:Date:From;
	b=OSthAc6d1AfFHx3tQvR07ZgaZQtjFN/tiQ7ciXsfiVvqhUy6ohf3hk0hEpO7yqeW3
	 Eu8wUbeSVMd2SM9yIuUXfvH1/rCcyZh1VCP9X+m6cca7iVOnpB0CHjzz2i2WxQ8/lT
	 I2syw8E4sS04sD9IC6HOectaDC7Ua3zVbWgaawadOJFl1LcJ8NZ1xqquSTlBMnGhz0
	 aJVJe/IoRLr+9G5t9PnhpaWKaPei01QOACIVzvq/OSyOobnEzyQ8nteAWpAFKkmRHe
	 wI9zLa7H68LbfH6bXrpFR7BpYWN0gceHclLmx1uAXKMja0pmX/BbSGWnBr1W+0TqnO
	 Lp2Lz6ghRz+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F0EC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172269755371.9333.16644243725505301080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509d37c00effb932838696c5f67527bd287e0bd9326f49c9df570ddc8eac6ab4
Date: Sat, 03 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722697553
