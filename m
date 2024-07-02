Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDB916131A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719922523; cv=none; b=XBtIl5yVy8JQ564t25+096AoKeNgAug1zGWT/l1KeEjLLOGn9RhcxB7JgioPYrm2ZFL16jXz43DdvMUAHZEpHkIhegSQSd4VB3tGpOt4jYnJDTQJbfC+eqIkI+XZ/fiqO+a+ZcevNBWopaHuhRJ4xuC352vmZEDeasrm1uipnY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719922523; c=relaxed/simple;
	bh=blWHbZsyRXeizKScw1X/VvQcO6ZCpZkDQnqElm2lA6c=;
	h=To:Subject:From:Message-Id:Date; b=alGV1RYV8GQmC3KVOmR2WMw4mx2nfmgTWXjRZnfy7Zcc5usrPi0u2+3HpsxAwZ/9+7L8gkPathNst56Q8a6q6xWw6x7RHzfP10C2OoJJ//T9f8pBYSVid3sENCneB6HLaDM+apsFt4Poy3yJLOzRahYLPwEm0A/mDXX5jJ+Iq5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LE+6ubyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LE+6ubyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D62C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719922522;
	bh=blWHbZsyRXeizKScw1X/VvQcO6ZCpZkDQnqElm2lA6c=;
	h=To:Subject:From:Date:From;
	b=LE+6ubygeRYE44y/kWtfEk9AdYHZZS0Adl3fvnRCjlhFICr0kIsQYud2gvKFN888z
	 rTu7+aMzG1XWYLP3c84Y51MYNpPTAC9GddbZkKR5zA1H1QvyDqnXVi/QEORTIO92zH
	 G7v8jWxWzej4Oqh0Otr+6ZMOSQj1a8HdYBPc+6kooOxEA6TDLfLJ/C0kKhBiHXK8po
	 zHLB6vhNARtQrEQnDxbKtplKxv6oLJhGo2cLUYqQDnXIeRr2OiJUTMVR2GXRPr3Ctb
	 RCbnAWViRLrH9+rLT0iv8Jb9KhoO/0MVwLgKcMUGQyMlHVgoJUhGu0zAFPd+gLIn6O
	 a3uCmq3bqixDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A69C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992252278.17822.14675296151855633098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b38577d67cf0acfa00795ef486381f29ad8c6bd4485e70b12c1acfb87005d1
Date: Tue, 02 Jul 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719922522
