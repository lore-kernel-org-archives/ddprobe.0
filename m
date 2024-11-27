Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C6920309
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732733154; cv=none; b=ZDOlU/m+yG/ibtsESDxAdn4uzk1x5x7mmSl0+2gszM8sx+CAodqC87MRGl4mykS64lAsYD2l2V0gJu5/slbND2jCxHUMTdZuuW6d160R8vG2RoNYiHuM5BiDaT2GEM98LpUA8f3ZFu1Vt5a51+XMAFCIfHKSqwd+uJ7zN8TSy+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732733154; c=relaxed/simple;
	bh=GrvdVF7rlc+NkDHBN5fXsukt1taI/hrLu7FsZi3QSZk=;
	h=To:Subject:From:Message-Id:Date; b=G7BNVJPWrSFsGvuMcP7KNZ4jOvfIyCTuTjh2U68I4gGh2ZF/pBVM8TROLt1Xy0p3fg2El93MTlOFhGoc1iNa325R2cbP0Mu/+rgRFMHUKcQwxlANK8eEAc/WFvwn7IumWKkY5IndQkcGw+FzWSutARU+cB2r+4QXQi4gkFFCT64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHTAtm1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHTAtm1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7F1C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732733153;
	bh=GrvdVF7rlc+NkDHBN5fXsukt1taI/hrLu7FsZi3QSZk=;
	h=To:Subject:From:Date:From;
	b=kHTAtm1wQeazfWVK+EE/zEte28Eak2cn/xYF5YRvNIbW4sADRKg7VRE7rWCg1fI8h
	 h2ssNpzEBfCb/jABh0FTDfuig2o4nfKaxwByj1xmsM/8zt/ATue1gE2eUcf5jWo/1r
	 1wlFRSAKrF13rDpXRL8Fq4NAhbZqrtfzeAAPb8ee7TQqJ5v0fp9oDATKi1n3Pi9EhN
	 CjUFWT6BZG3vwh9avkv/6hZGA67P69ixPT5lAWbo36f1W1KG5oQDI5WwzItyvuLoJM
	 xYHayQWDKtLfY8ReHWSrQkO79BMLyRvppwsdbjifI6lxdxqRGLjxm35FcdSM/QnYgw
	 SGW8DXNzdhcqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B6FD6ACFD
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273315359.26795.15910924321732702019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd72de2a0aa739d3cea492ce8dfc091806c4ece2b66acab6bc2fd3acb8bd0a2
Date: Wed, 27 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732733153
