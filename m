Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755FC3E1D05
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787409034; cv=none; b=nl4hFxFaM4Ph3doJ1iqo8HChkImfzhqsEZT7CdNTQ7U/gGLijWk2YFJsdzEemLgZPjoN/elXJsC7dxu4JEeI0XdcpMwWadF/eilE5XouGfUk1dCQ8KZcwkJRwcCRvntGGfOedlXCk80QlY0OQsiVaAwPOL+OJx7NLQ1PEEqvSyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787409034; c=relaxed/simple;
	bh=7ptOGz8igycjXFekwT0nPlF3E4XXYjpjrnQ2R4SuSJA=;
	h=To:Subject:From:Message-Id:Date; b=fD7h5o5oF0OqRba9Oa4QwGuf8EyZBvMsN89fLklWxtvFgGtToyPL3ICxK5/DbcTNySw/XaoA4FRGCWRMS/bY5MPD/ovgD+2kOYwXUerHSKJ76vELD5xP/mFFAUr+y0lHkcp2mbnATx8nTiFLiH1z3hS8Ht37rTazdCI/ba04xlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYUVtM6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYUVtM6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F72C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787409033;
	bh=7ptOGz8igycjXFekwT0nPlF3E4XXYjpjrnQ2R4SuSJA=;
	h=To:Subject:From:Date:From;
	b=dYUVtM6C/bEMWHGCyUXM17ZL6KCiZGc8MgjZiKocM7YXzihX/O93C/8lMuCtNvQT0
	 YyCxIUcot8z2EUyS+89MheGAGT/o7TiLTAeNvvpUsiUyyCnrhSwEpRtDkDIuu4dGeB
	 LwDaeLQ82riyxq/RKksj3yscQ3LAOQGOWf3n4JvEzHizHJdfnEEfWBkcjQ/a7vxIY6
	 oqba+48XRwHfx+zgJg+AuZoJ2xrF5rUZT7CrB97iiXSzcCO3b6Kni+RPzA7zQNdfpb
	 pjMvoAiXEvVjqDkwJXl2MvzpLmLfm1Q0bXO3PrAOkf2VFzhX4J0DseTNz6YGhBEWqH
	 SjusxYiK1w+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD69AC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740903370.2326.9253920857877041798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e8b95e9b1053e842e11a181f6e3a7c21d9449f708a8ad809ca76af3f26b4b7
Date: Sat, 22 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787409033
