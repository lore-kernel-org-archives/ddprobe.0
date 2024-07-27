Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E906217997
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722056754; cv=none; b=eWmVOes4DkU87mXFmAlFyzRtG21qEwcdaLX0fPgn0PJonOyZigm/DOn+pZlxLOagCALoGM5sDrICtRz8SkbHEzgm+zJuzLfVktZ22aRFI4gaHytFr8p4TtSsaw0IlE5HnJEsCgJ8bDGylfS7lX+l6L7yT8uSSQ5AH5p/4y9NnMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722056754; c=relaxed/simple;
	bh=jJiOXEeBCK+Otmdggftdgw1c0tohIOBUCgQnCu6ZmPc=;
	h=To:Subject:From:Message-Id:Date; b=EqRjNUk0mnuOkQuaTjzHasHN7Cst+AIPWKacdHZPmQf/nnvLp3eREzjlQoe1g+4apiIYYzGYiPuGGCgy6c6GgRj1gnVrxz2IvtnSs4Hj3tq1fuvTVkQ/AnDbjeXuITSaQ/cRf7yW8k6tI5+FDm/k82uShbA3Ok70Fn7KjE3dWjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PohrJFlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PohrJFlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FDDC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722056753;
	bh=jJiOXEeBCK+Otmdggftdgw1c0tohIOBUCgQnCu6ZmPc=;
	h=To:Subject:From:Date:From;
	b=PohrJFlzzZuoz/yYpjuieqDkk9SGL5JvEFHgpQibY/wVB9cJ6QDcW+zxAUmo+Z1WA
	 rOFSEws2qhqBVT4NN/lf3W56gMgOz6leSfKpDyt5mhHQTH34CtTFQSUPm+xHWdS4yY
	 OeKh+7OltvzT+taKE4vPY3vlavwlaU/hZgdBVFfEZbMU9tunPafmHJItcHt7RrZFcI
	 6Pg/kiJxayX9jOpW0QLDYhvR9XwPV3dyzWuD06n34iJzFcz+6t12JTdwacVR6FSbtr
	 wgZ+gYlC2yBjjgdQqal1sYQBE6Mniuc4sLu7OUMq1NwUIQ0rwNNz0+JalUnGY8m4Ml
	 PnloK4RbdawaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93164C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172205675358.5735.9051431701424367186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad36bdb049bb4c980558459ddc077e57dd5715358ef2ed8d9555d1578084321b
Date: Sat, 27 Jul 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722056753
