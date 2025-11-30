Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D10617D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764468174; cv=none; b=kumlvNMmWs2z6xvONEs7wjyox/WLteWxZNJlCs9eLI0VQ9JPZHw2FhvzpIJdWXP+yTJRTdN9HEUbAQNZk1ZevbO4CK000wLmdCTxIgVklSRvnj9WjBsueZueSpFWMY/DBJO4SOJz9jueUN47s5Q27XMDf8bCVXdtcNbuGPqjyZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764468174; c=relaxed/simple;
	bh=CeW4EPvyAuUGuqby1xKkpjHw5nr9AbE/LSw2wMH5oiM=;
	h=To:Subject:From:Message-Id:Date; b=sKn9p0wj6xpf+r4VH5aGdo3hvgyaQO2t6GcgUbxHIxwSmdiYI5LLK+joJPLupUQCJ+/IPfnKBerJiPzV7tNjM+hRHnGIrawpujpUHjpNE5i3aD7klKeumX6f/miTb428oDoS4UtUFYUc8NX1DMVkG+24vd9Wi6e6ahMlt+UIKTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDg5zKlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDg5zKlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD60C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764468173;
	bh=CeW4EPvyAuUGuqby1xKkpjHw5nr9AbE/LSw2wMH5oiM=;
	h=To:Subject:From:Date:From;
	b=dDg5zKlRgOGeTSN77u8Fn5wX5QHh5afh8BhV2+1tB0fYrSsDrbk4dD3ErtQ9HXeDm
	 Tl8jO0vH6gBmIFeGxzWX2rR+6YhaRtl9qY5I+BNyS/6agDD2jQdKYVh4ETY/ydiuRz
	 nnHZwSlaNaxq3PgvQDZnMvQMbMAcxhWi9Nze1VAcBSHKG0CLDkwTo3/Ln2tyQnL8WL
	 gJnsXJWZ8gSfkc4Di7JRDQZWcjXMUlbFKi3p9PMQdm3N4oRaO44SKV87xT9MSe0AWz
	 3I+ZCUxTg+YzYl3XJ9ik3+y3aFd6nKfM/DXr6OL3PT+iKHgN0NG1bvr/vFXjqB+GHd
	 HN7tzbbkCnIoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97943D116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446817358.30774.9920984869854680042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5605be14c39b06ac0e6863496294bc3fb7ffa9c7a2ca0e3833fffb776d13f683
Date: Sun, 30 Nov 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764468173
