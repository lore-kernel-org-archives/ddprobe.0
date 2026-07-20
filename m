Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8224248C1
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784554714; cv=none; b=ZlFobiVeFXXsd+TbLo4qk5/rJ/89sHBLDC1Ul1fqs4ho3ijr+lRSG4GlaYfbY2KHpOiloUQjyvOlVsB0EX9ZqMjQnRvGOgTteT1SILZ7dYMYBi+Q45M3Ampgcnzoy3v/AOTWVSqBat92h1kNpTb+fBDbczNjcQIFTriOklSFa8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784554714; c=relaxed/simple;
	bh=HuJpAk82e5VFErEoNc++wYL1tuloij89JJIIK4uxwt4=;
	h=To:Subject:From:Message-Id:Date; b=XpzePt01iK31/mV1oPTFDt6WD3Z84ViBK2m55Jeo3RVDV3Ywqn7EMm5kaqy2CWfHNeBgg/SbFzpVBvrlit7NsVMSuQIBA29VJVuhkkdvckes8RL2EXZqXbsP6RQxajVetr0LX6MVi5h1wRj3SUy+7fRD+D9/gJEbaZzKmrtEdHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZXBznuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZXBznuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8B4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784554713;
	bh=HuJpAk82e5VFErEoNc++wYL1tuloij89JJIIK4uxwt4=;
	h=To:Subject:From:Date:From;
	b=MZXBznuAoiFVSO/ShklI4OczLOLL7Wv27qfLL24xnbqk9ehSUKX3dXopz7/baKghr
	 OWOI7LCedAmX/A08NFjhyIzL5QPLtnVLxO7+OPfyEieMACjNGN1Ou6KXm+gt0Xz6rY
	 enAR2WAOEGUispw/7aCA6me1uN+W3ksn505LI+keXYWsbjeL+Egp1FfBhnfmJKTlrC
	 8w33I3ihcWlesTGvEPDWPNLlDuqkwCFtKI1wwRh4CBsG4bMlV8L3qy03SjhK7FxyCp
	 CbEqlk/TazMIgR1H8aeJ0Pt2dZZOk8rEXo+8YLc304OeAdx+jZQQyhxo3gImWl1/9v
	 Ia888CJc+qlQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D8C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455471368.29503.12176126176535163356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d9d49a2b582257f5dfb28656a6dbb86a9f72211335b80bb7b61008ed138ae6
Date: Mon, 20 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784554713
