Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAF84B1E6E
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747491594; cv=none; b=EEsSGZ/8RoSBeXCpMcPBwdTOTKKv6NxZGPhUbp6fz8va3Ui3wh8974GPsVd1Fr3AXVnnq0p2RlJrAi2Ld56OxLgBqvm0at3vBTeZ0Fxjg6TmOXzCwcRY4I3BtASB38nL6GIVgMa7tkYKQ5aJXj4nqXAWZYnzt6RtHC6K6PmfVKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747491594; c=relaxed/simple;
	bh=MuDSRNy7xP9QgKcK+cZVS782rnpSLAkEi6c2F8koFtY=;
	h=To:Subject:From:Message-Id:Date; b=G6IGoYaMWiTkCiMiZjwRnLFdCuf7qV9fbPJu4BNQP5TplOKWMYSo1HszgNgjzDJDyXdDjrVia4BUWVYZrkHPBdtZtUiBE6xXjcNEdBjMY9xDj1EcqTNzN89j7AzAVtwig/awtb2YtP/PqoTvWTXvI4AxpnJPelszUzQLZCdp+yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Esra5vL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Esra5vL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A1C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747491593;
	bh=MuDSRNy7xP9QgKcK+cZVS782rnpSLAkEi6c2F8koFtY=;
	h=To:Subject:From:Date:From;
	b=Esra5vL+9lhg3BRn4jDfGyvEiUIFqoghErm93TI4+CLdqKjFYxJJ6L6ArUn6W1A57
	 e1DuH9q4dDe5jbPu79c3iZ2RAced05salyZ42LLv2+EqXbmE9Vpegk32bAykrfRYZp
	 xMi1ZfhJjzG2hK+MsYCD8K9wFS5WTmHsDDejPm50vTMGTtd9ELJjJoJkbobyrXWrVG
	 1eIon5JCdY2eqHtZxHexNTThgATVNGDlTiCGNMI0ltr0VRQXczn6z+FRM2/UsMtdH/
	 nMzKnS0b2PaD2VQ4n5PK/6Q2XjFolL283M+GXJXZ+5tlSD+uGbrzK9Jwlyv+hov7AQ
	 iHZtT/n93HNYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B3C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749159357.17183.4818761855228073756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883be371200a99fa48982eb6d387709ac88326812d064a9b158821ca43d19b34
Date: Sat, 17 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747491593
