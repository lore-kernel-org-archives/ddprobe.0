Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030F23F0AAB
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773960294; cv=none; b=kZXaSUWOBLsoCJDlkorohK8I0V4exKgal3UyHUwvaX2SYG2cAQMnULV6BZ7se9CSoHWyRjJdeXy4X0dKjmyYtgb2K17NGFxA0aarBUj6W/xBA9OhLTWJdPYoeRRSxcgrC6We9IjFcrXXUiLq+K4Y95t+LugJpEOYKAA/r5y1EVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773960294; c=relaxed/simple;
	bh=qhuZ1ZYJck1vBPtt7ZjVYHFTjdY18jofOvaBdyo+uAc=;
	h=To:Subject:From:Message-Id:Date; b=fOoVf0gpQVTcKQoEKNpFEb2wpiN+lvTD+sESDgwedgyropqh4f7tdnpcujDu69L5bgtBPIMxUM26yUwvuHOKTi1OFDxoN8VbegemYiamsvVAqA8/QL+J8c0W9T2zmvNtUeHEgm/89QKe3zj1kLBCzOyqa7LRZcMVYTGpSDtD3+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Efg7LLGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Efg7LLGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21FFC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773960293;
	bh=qhuZ1ZYJck1vBPtt7ZjVYHFTjdY18jofOvaBdyo+uAc=;
	h=To:Subject:From:Date:From;
	b=Efg7LLGNRARkuPJDbSFfBqNd2M18EuWWzryfTa03dztHbjYbDOoaANiPd4B8cJc7d
	 xYNGA5zTUiE9aTcIlvoXyBiL0Cqg4kkiT/h8hFmnObgfwBnKIHR12/NTgxkf8ib2WB
	 wxzZ461MgDXkRyTNruXCLVpG+/pQN0lzN8+G3bDPUAFpG88M8IiajVP7wl+nXy+MYl
	 bZAwGgarqrvlrWvuRLBlJDT9Sf9WQ/mzxxFMAOGjPItfxc3UUR7lkaV2DHdbVUuUfx
	 kvQJke7kEUfSLcjP7flf8hliTpDoW5Pb+d/qfS1GlKN9CWQghoRxWGqpVQ5KAV0a6f
	 xiIanMgzOen+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD51091929
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396029358.10753.12669631480968792974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad94b69808cbeec0fd3f27ae127b879337b6f91cb7ca0c351b8acf6200135b13
Date: Thu, 19 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773960293
