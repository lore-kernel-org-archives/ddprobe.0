Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2788B47F4A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750799994; cv=none; b=qgNNWK7VKwO+26iQ3ycvnE4NvjTER8p6p3Fwt7BfDqlEjOS3kmyyqtXzec/qZR+Vf2iJ6bKiRi67u/u+S1aA019L7CUft7v6LIQxC8Smg/fEsULxYrsqlMsrjnz/axQCsE1Syz4UmgFGdrZP5/TTzpK6ch0dW2OHFHJnC73ZP9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750799994; c=relaxed/simple;
	bh=hEktR/96Mv+v2qLM2Ro8Or246t7MiqLl8pLp0E/YjzY=;
	h=To:Subject:From:Message-Id:Date; b=SQkGchRmPgnG1dvwfej9r433q2gvzBJelNEqqv5JMh2pwsm1SZD8NQRDgC8qWzb78iJxnEQ92tOfSgBjQwLOgRPYJFi08jVGuaIh2Bgw3adLbyiNJs7ajOKW1VuteKo7/ApaIEcnTY0p9/aIrtPXiyhIxaqqIn0yhXqE4MGxuHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PS/clcj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PS/clcj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E3DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750799993;
	bh=hEktR/96Mv+v2qLM2Ro8Or246t7MiqLl8pLp0E/YjzY=;
	h=To:Subject:From:Date:From;
	b=PS/clcj/ckI8VXeM83mnkhCp6XGLI6dA7DDj9qVY8utwjnfruZWOXWDnoEQ+bzbo0
	 IgjIp79/LR6wnflyZxRM4kz4/VBdsCgos1k37yvILxerWo7vHjucKbLfGDPduXIZ6y
	 Ihnrk6joGhu6Y6KGpUjv+Q4KnnUlE3KHnv4dUorJL0PssNq6Aa+Qg3Qb1Fnw6rkYsN
	 DmOeRWnsmcPwa4hEsQ1gqoYidKZAin/AtLp6nJ8y3TbdE/ckVXejYxKihNBB74lyi1
	 e7kivy0cPXeI8htY++hh6eaIikCLf/UITOOXxWBviIcH5wHUNNHjebknpLfZOiqd6a
	 J/Sl1kIKPDXBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9599CC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079999358.5481.4484432373193249201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c64949e9c7bffefdfcbda33bf96f3578e19f3d63b7460bb7d57a41e597b79b
Date: Tue, 24 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750799993
