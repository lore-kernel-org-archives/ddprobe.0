Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C551825F78F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769162634; cv=none; b=NYT2QD+aozIGG2Xgo05ia4viI+/SL6nmxcje0SLQT29nWTX1S/FLCUwU2YsK7igIvQCOZ5nDG8CDiBftCEaAiO/GPrOdgimWvmVO3fsKphHeje1wO1qlvIUFDssPgzU9kabqhax2ZfsoDlouM7VtRmDQYE9PecTRLK7qdxcQ4vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769162634; c=relaxed/simple;
	bh=R7fT803U/GkLu9bUjEEx6p94AEtKuwW1CctnmRNr3/s=;
	h=To:Subject:From:Message-Id:Date; b=ZQVa4+4J+WKPZp0or7XKzB0JwdBieBlbXbzV1uT7L8Bx1YNQR6RZCM3lEyFZZticTyjiuM0YajdGDMhkRKpehYc0yHTKp6o1TtcwXKNvNQ9yse6l38RGwfkVikQmmxH9w+kWQx+WfB+E4ulJdQJTdF3gMzBXY2UBaFBOFinEUh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kR4pT5AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kR4pT5AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B608C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769162633;
	bh=R7fT803U/GkLu9bUjEEx6p94AEtKuwW1CctnmRNr3/s=;
	h=To:Subject:From:Date:From;
	b=kR4pT5ALdHziWEi2JArOFYYogb/4EkWA3zJlU1Fxgp+CeJ7xZdioAJneMog6Gg/GW
	 9qCfWScUTe4cg6CF+/dOR9x2j1poH2/96TOnr9/6edAkoN+r/P/+tO/FPA787NKp7X
	 9Fvk++g7Pv4OdAexdAJT9cCrVK2wPeU4uxxXxXdP6mlM4qs507jwwh7mAd44nPWx4Q
	 dDnnsN8PaaUi483K876cY00h7lgcDH17ZRuZsrqLL4Mj1Q0nCijk3Q26mH8DTwGyuS
	 6m+zouUwVFxtNWSq39AqOQcwkl1jjBMNNFG92DQwXtS98o9ndTme7cheD3oImQzTkJ
	 zTOK+/gbXpelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93261D72366
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916263358.3870.16938539633273275359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54494c8243d57630edd9ed071d9cc55ec3628e1fcb0d10754682bd41f45fa6b2
Date: Fri, 23 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769162633
