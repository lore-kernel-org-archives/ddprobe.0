Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6C79CD
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754722194; cv=none; b=UM0ajMBVwO0ZYepLQLWEXYkFcfMUqS0vmuqdoep98vTqsOWf9GQ6p34vYPYqUjQJaTsETzLIgiTFZ6TnPIy6iaI0YgOHW/Qf3k/BsMuEg2GIjTOzKQbH0kXePv5C/dpX1Rl037FQo2UwIEvi++DRiuAodesrAwZ8sCOBWApqMRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754722194; c=relaxed/simple;
	bh=E3+duztnl3uPtnSUoErkXQ6bk4d6gyikEEbkekYk9Hw=;
	h=To:Subject:From:Message-Id:Date; b=XbEYOFG1XpBAUDdadMfLPt5RXqCqkDZ3ERTLuaiFc+YPmjBy5QJZVvkGD7RMwbPzc7DiD52w9ULr/zMRlO4aPlG1vCzg+HYO7t0TL5EmO94IsSHd+/T2QYQ9MO9KdspCZiRs3jKbHln+KT8VO6a5Z019nOjG8p3tWn+0zsDBmMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ady2YOQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ady2YOQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC2DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754722193;
	bh=E3+duztnl3uPtnSUoErkXQ6bk4d6gyikEEbkekYk9Hw=;
	h=To:Subject:From:Date:From;
	b=Ady2YOQVsUzPqbepMMDwCdD6ss7AXH7UYgVNZAr0DBSvBZ8N4qj2+HGQSeHvjLjHt
	 Iv6YOTVxwaKjevVtQlB9g3mm0L5UqT6xmajf4dy5whAgLubg42M3te1TpbMLhzfzZt
	 NAbzZCDeJvdOfKBVz9D8tbVIAef8ce4YB1K1NeYIKsasagZwVejd10s4XPw/pn0uiI
	 KTg+cl+NGMRHoe2rLRgFwOS/Wz/w9bFxYcy+/GYILnjHW0o9Z9nxXlEh6XhC3A9Pp5
	 BKq8cjwi0kqrJveq30mTp1L+TpkJ65R0mUA/6fXHCSqSAwnw2/emQprHnJyNwEvgum
	 9jqjy2YDt5RyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE53C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472219357.21443.6040156214684594253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a9ccfdf2e7fe427bb2a2999397e61be8ab9e7bdf1d9a46bd53e9f1f773b006
Date: Sat, 09 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754722193
