Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297471DB12E
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747126194; cv=none; b=hqeTzlH6UfRaY/gjNH6+i6aOAaxK9GfULW9aRejBJI610EoWh0QjfUm0nODeyWVZz7pWaoYQIjBuOd8LKmcQa5dTVfitemXVDTrWizvYQHEIBqZCJsFcEnyuzu94/cbtqSmTTmvCKRiu+JJgiQnDzflwMYLslAyeK1b1ioihlKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747126194; c=relaxed/simple;
	bh=fgAZGc7zqbKbXMtDxRmhHwfg5m1Z31GP2cZKr+AEmkc=;
	h=To:Subject:From:Message-Id:Date; b=G1S6Agbt2uJpZtCHpzI1r287wNjEZLpXhfM7A4htIaPml5A1Axxz8nBnoM0m7shA+vSLCW3DIH7xvBgNg794ksHxZLseZ9SP9pQlWpzZB8WfdX5L0ZppUCyN9L8jMP7XKxbJ6vzyThM3ej/rV7ceETaLOFQUzuQobmMS6/FjGzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOVwoAob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOVwoAob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBF7C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747126193;
	bh=fgAZGc7zqbKbXMtDxRmhHwfg5m1Z31GP2cZKr+AEmkc=;
	h=To:Subject:From:Date:From;
	b=LOVwoAobSrbpEtKqHlnYlRuBTScXdveY+tzEevra6eTdRc5r/9qtGbTZ1rqlWYKSm
	 644UUA7ALXUTDPi75URlaqPAUAt8KXWDZvPYIfMK+LuOfzgWH4jJhjM1erBY+KCSCv
	 Nkp40paf4UOR2TL1fbr4LfA4jlyibN+KcC0fKtDyu4ON7vVCpGQCPc+50Sy3X6k9Px
	 CNqhnS4/Ui91cYOrZTqaIrD4Ssv/nGG2DPQFkWQJYkUu0k4kNIXGsWHQzmNRBPJit5
	 K4LeCoBNFSK4BWZpg+9CHvJRH+ZGelYZwcsxRs+Eysijm4MHuwX0f0WlOL4AE4jZSM
	 E5cByuISGj12g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91549C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712619357.2186.764184257611498701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580d07007cd4399e1395c0416d0711691a3a4c14639d2e131a4ddace19e7732c
Date: Tue, 13 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747126193
