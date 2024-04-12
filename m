Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40073824BB
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712927963; cv=none; b=jylGiVyHCyTvoDzuHSKU2fT6koQWjhlRcSyieIiQN0xcb0J7ABjz7OCJmjCCnfYfaTRX8IUVpzjT6q9wmCvSGzCCZQHg41vF1cnbHrJTp+IwCmAjxJssd2C5k2KkYOS1jytSToEBmHOlOIoZplQV4MMlQtUHHNfQH0175fW03lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712927963; c=relaxed/simple;
	bh=EByl58+MjMtFhPR/FThXvoPNn9tnfA6KmLcVchNpFfU=;
	h=To:Subject:From:Message-Id:Date; b=rqlttlrZYCCu09FVfWlFA0EUg+B+D62ea2OS5T+y14WRy/Kr6t5yZWnkr92Eh+kJ09HU1hXM7GOx9eTJTjzbb+ai4+PPg1pLYF7Ha1CAUUCxBPxXAPxe3thUdd1lMXI/up/8EhxOGc/orizT3/piQbGtdljvrZlLDdIyDSrJ1Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUojw2o9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUojw2o9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41CAC4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712927962;
	bh=EByl58+MjMtFhPR/FThXvoPNn9tnfA6KmLcVchNpFfU=;
	h=To:Subject:From:Date:From;
	b=qUojw2o9biOSl+3nXXY9KYS8WgQLLy3GTqsNNXNACkRV/16vW0kFk+FSJN2aV+RsV
	 h5dz8j61IHb82OuvlQd34HxYejnUxZaNJGwjCPCHTRUTrifGhC1JDlWADphegRnMxs
	 L5SC7mKHTqzV93tDm1F5b5gs5LE4mUakYrBkHruQUNCXnkJqRSkfynbIE2tzwguURS
	 yzGVB3jtNKqebAalkVE4UD/ZuG0jAWHWtdt43bRkunG8fPNRCi8nC6Bhgu3GARSmlk
	 lMZRCb8vGzZa1drSEhCh/A5F3puoUZaW3IrxIPNgLYiiIUpdZHBlhliYYORC7PPiZm
	 JTn9sS97ggCHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1667C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292796276.25142.18183718453870943057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71973008625e367dc24c9a476d6698b867c45e833431b388b90595fc554fea7
Date: Fri, 12 Apr 2024 13:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712927962
