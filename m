Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26962E571
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763178594; cv=none; b=mFjieYjuTCPFfsbIu03/hWv4PlJ6yEtwCwGgxA2gxqrmy+nay4xUfwGR4fTkrb7HtuEHMkMW6nOQ5+FARF3qpedTOH23Ho7grkWAenVJiywbFVLq/r/ocWiLSzEi/gZIneOi8mIelAS5oLGzGUcQ7M3iqOtcRVdKpvUjGVXDb2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763178594; c=relaxed/simple;
	bh=Bb7jvnDR0wtiRi3R0iwoR4jTl94xuCeFp9shPLneQF0=;
	h=To:Subject:From:Message-Id:Date; b=DmZ7zP+TaEN7qQkQ0XIfb6Hv2H5tTI1F5IQCZTfQUE7fPMeDUbNnkqY2kk1B04ixVTz7tKyrPwDkLhQqEUbowKY1nS945EqW1kUqDI79HzKYKUAVl5Gh+XCtDG9duSJh2+Cg8uPdFNkDX5qN2tGA2XUef9ECA8pj3COe7EAfXCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRGGXPfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRGGXPfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B0C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763178593;
	bh=Bb7jvnDR0wtiRi3R0iwoR4jTl94xuCeFp9shPLneQF0=;
	h=To:Subject:From:Date:From;
	b=fRGGXPfD8SZOePr4/m+zsZcS71S6jaNGt4GykjFTG0GQoFiZTbe2qgpDd9z0L+Yz9
	 5aH/0bwwA5Lc0cdd9OsfY9B4GcxWTxxnVpjNMNLgOmcqQ/f86uOPd+83fbaOoUTLlw
	 54RkdiK2JyKUX6QGasNcTt9e2sNcxRYDOjRYBR8JXH+R9KMHa8j4DpLO7x8d6L9VZd
	 CJmzcKzKL3/OBEKrPbNNpkzv0+i/Ok8jOgP1WT6P0Z5r+/bCVf5lzM+2PnsVlhJxyy
	 uLAoAcHjDQ+gtVGuFn+awLMdlykTAYOElIUXzu+fJcJYi2FsCgK7Onq3ylA/cp4wzp
	 vDFl4/X9ou5Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A48FCDB47C
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317859358.2722.3338984707914498817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151802e518c596e447c2fd846ffdf50c638641a0a51ee0807d38409b6f7a436b
Date: Sat, 15 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763178593
