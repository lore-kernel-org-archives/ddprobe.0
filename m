Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4314A1A276
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727820954; cv=none; b=sDrSari+1akV0z6QLfeyjqoyi3SnvDmqzw9giC9uWHd1wDZk1c/N+gFKY2Q0gfaDkJGAEI2aEmMBv7iNIAHz7dxTrqIyUUCnZV0Hsgo/bQKKNaEwmHzhqhRbniGNoj6MmoD1f7e9ECfyUQ/U+BZ/M4jTYS4qS3N5Li7kxACsvbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727820954; c=relaxed/simple;
	bh=MB++wDUW8V7i5k1KAZxvm6G9lUs9nPeEbSyxG5uELK4=;
	h=To:Subject:From:Message-Id:Date; b=mwGR79IImku5/54b+/jCNlHeIszLjVxnnMaxFcDQellmd3++hhN/M7KNGJ1MTfWeh29oO/l1Q8NjbrhxyFtjS1rUQprJ9hMDkn2xicjJ90Z6W0DkLAdTpv1Vu5cuuIeC7rJY7nPXz18VVlNHU24bc8PSIg9Bhel04pa0XoULsFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAJvBUno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAJvBUno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5406C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727820953;
	bh=MB++wDUW8V7i5k1KAZxvm6G9lUs9nPeEbSyxG5uELK4=;
	h=To:Subject:From:Date:From;
	b=iAJvBUnoyyrIu3AesyGHwwqwIb3Dvc0PmUOW1mmg6/lgQ8Q0NWgm9CEfO6Fh3eQxC
	 hhdcab+WeEzeEfEvD7J7JVW85oZXIkw2DHWkZQgRMhUrP4MJgTw/pfnkbzyka9TWyt
	 JcpaeCR5gFqErtKaZkX874S+TJOIrLf4V1xAB7g5wwemGXLQ3A9yrr6E4FjqKED6Xa
	 JmFFmrfuITB/Te942qsvBaw12jbwvHPbupLMe4GuPPnYbsFwoHk7Qn41FLQ7atO6pR
	 +ou3qzgwGQQiizpANzJKdO2g2XBSG1v73lrbPWwA8flSyLp0O9N5aXyNWpkJQFvcVv
	 TSnP1ers+AexA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C94ECF3188
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782095362.17353.17152880692595626074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f29f25b248149b71f20c64f08859d784a53f08aafa5c854c08cb58e15c4b1a
Date: Tue, 01 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727820953
