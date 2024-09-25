Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D86815575D
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727250954; cv=none; b=ffhzcDuKpk1a/nTJj2FrN40mJzINgFA7OUMSYR+oedhbTm64VuyDTa6vDK2lpEjLQB2+d6GM5e/MBFbbe5UbelkXHhknhWFjv3KpEpMNhRRXTHdOHtUoVtRAl/SPzsol1v7/D9sTZiZDgx89JM9vohCiuSyDySjh2dm/Rv/2UAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727250954; c=relaxed/simple;
	bh=UFTvZP+BjWVpRcTb4VLCaRybMzaBG3j99DRXzVq9/dY=;
	h=To:Subject:From:Message-Id:Date; b=O6Tc7Ik7gApzA1+OH+UyTB4PsS/RNwJoJTgTWaMbwBK0iyEtY24S5sHvLftkZfqlHD5xCAMeKDYEI8/0/yWwFS2K17VQneJT+FL6iMK66WYVPjewJrxHgeA3OlXXkg9yc3NsTwcBc//pmAN/gU4hyDKwUR3vXhe9EOxMHpBBicU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpVG70FI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpVG70FI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A966DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727250953;
	bh=UFTvZP+BjWVpRcTb4VLCaRybMzaBG3j99DRXzVq9/dY=;
	h=To:Subject:From:Date:From;
	b=ZpVG70FI6NJinRsAtwWnaRsUl3aOA4gaGxeFR+rgCqfuN+aoKqFKOPnmRhEjxT1g7
	 zvmJRodusHalLL5tLCkNB8gbdkn3cCVqS6oynciSGXV0cir/NhJ9V62CgDlJ60dXlv
	 H4ndp6Te/O5W0xM9MfqROdFgdPTWt6U9bpPkHGhXuKNWJ3ombaJKvGJarV1D5xB5su
	 grwjS2/386KxORDeqd6uPHDufLb+hQZjEG7EtDHzJkreuRu8pZEaR2ZC3YskUpqhnt
	 jMSQthZNxaK+ssjQfIipKwSKG81eS+4sblNz5qRlYAsu1q3yMOAX8gmWzwghIK2USQ
	 4RUBhaNAR9WWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97802C369A9
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725095361.17577.18437359849825448840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4434ed6fdb3d9adbfebc74a75aa39dfbdad8f9fde9f8a879854c314c4855f965
Date: Wed, 25 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727250953
