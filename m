Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB99F1C8603
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777252053; cv=none; b=ti8Xh4YxsU4hXeCvXq589pNz0nxz+M1PcXZLrz8la6JcjNBzCfQu43BDk1kDshSruC+eI2ts4a4iLH+GOG5Sczyz5eplF0vXoVod4pog37ij0ctGKW904kXO8ngTZw/WKGhoGGKlXKawWLQY/vt0HZuT/0YKI8CHmcmdeiMebS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777252053; c=relaxed/simple;
	bh=8ZlEVTJmtMaOjkZLlxYpzJC4INf3XGfMYllS9TqMV+Q=;
	h=To:Subject:From:Message-Id:Date; b=sQ2iI6r8Fe1MMN2Dzrbz/ofxddpxiDIaaKWGM1j+yhx7dKeN1344UskBmPTA4iWWC4B6H6aRI/LxQVHqWip5t00lyRUxGmDmHgpPrlbpNfEHvX2F68hblsfDBUIQofcNPeaM3XzhVeuhUQOHhJsspN7j6VlPQr3VemHl1s0U2sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FymBNF+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FymBNF+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05E3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777252053;
	bh=8ZlEVTJmtMaOjkZLlxYpzJC4INf3XGfMYllS9TqMV+Q=;
	h=To:Subject:From:Date:From;
	b=FymBNF+vwDeGQfzQNAbTPhckCcN0noWR8Fvl2T47s9ZLkariixLV4JXvjTDYn6QHD
	 6AmV1jR5/8C+pmjhLWNAd+ZBDAtf7gFdnkyMie/agIwK2hldzgbdZcgry844LLdU7l
	 ZTBkOW+KW2CPKCaUNkLpU5zd7kIuqsMJiSAcAPwnKwQ5rbADtmssZiX5CcBVpnzSe1
	 keUWquODb3NVTUSk8tKE7QQxIg3wRRM/D3OCPKnsR8J4+EiynCJaB/NOkzO8UbCoWZ
	 ru1AdQktMgEiem2m3tF2V2VaG3tP42W4/JUuGsVWGu+2UFOrW7OMoUfrkfxfhpwVCJ
	 /M32QHQ4XypUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BCBFF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725205368.10943.12335720752138253112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e14a68113d5ac50eb683258aed5641d1b80cf00e302fb347974c7079841457
Date: Mon, 27 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777252053
