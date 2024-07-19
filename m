Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF2054BE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721417754; cv=none; b=RrqLZcvD5LSc+bE1DKzYpYvt7JqEGrCwb57j6smNptW6ConWktS5s/c3tSewXQSzdjB5RAs7IruFhDYwwoHm1XFqzQvoJDA1RJM+5loHRsBU+mlRvtUzVtOH54ImUWjR36BgDgYGfAhmFl62m4LL6DnLiJtmc9tDKuokZYZMAD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721417754; c=relaxed/simple;
	bh=+723EwfHIekmuVjDwcNK8vZyx4N0wSkq0UQLpmn64yA=;
	h=To:Subject:From:Message-Id:Date; b=iU6jJK+vKcHs2Crj9WV6iK0uy4vqMOHk0A9N2b3OT20FjgBcIN7JqNwpoN/yFY7HWJA6ShrbTTsUrZpYEaTebHlkGeELWqHAges6DBC4wehyrl0xDNvN4dt9RaWSL7PSPKs3XY71DTvkcurGwx/0Qa9Cwm4Cho0CkL6HfcXLN9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYItWMRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYItWMRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE147C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721417753;
	bh=+723EwfHIekmuVjDwcNK8vZyx4N0wSkq0UQLpmn64yA=;
	h=To:Subject:From:Date:From;
	b=AYItWMRthOXhTf4vMOmtLfJdn+ZZINNx0zV1yYJ0J5NRGFw1uzt3jVnHGQ610mTCV
	 tadGt2Wcpw73mtj3yYtiJrsSHsNpSVoffTAl1r+6OUc2H643I2v76xRqBaDuBjTQNb
	 EA0qNNbDKDvDpXhBJBWhtYYdNcOShqNrEWxOl2rnw3jZzPGzuRiO8Ed24bGDQDqS1S
	 JCvFSWRl2rM3mrir9Hh2ybAlV4+r/WGEKn9CaLjn2Wm/ZcYUf+KQyed+6VV5uqxgU4
	 l51icQAx0s0eIqW89U23LcbleLHAAx5DoAJnkSAaoxVZNSGxYC9fjHKTeQ4agFWgpZ
	 ENwPlx4eOHkgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989F9C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141775360.404.17054204001043153526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566754a05919d97e46d5f88dbe62837ef70aefe40349b0abe1064d235e7376b9
Date: Fri, 19 Jul 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721417753
