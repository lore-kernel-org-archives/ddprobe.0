Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E241E0E14
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786577434; cv=none; b=Zgo/jPS7zxIzIRnFwpkEciEh/zkKnSsKHe8iU/SL8AWoj0Q1GWVdY0k8LQ46/sMPIeHKMfqkUiUlXdkKkJMTda4oMAq8HeCfd6efY/BdBDrY+UcaqX/wNLtp3cRTDVqKISclQwmcxsjhHCzZexaPTKM/5SEdBJ2h5iCDWmlHhmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786577434; c=relaxed/simple;
	bh=hlptf49x9bx9yxOWxbXueScJ/p+UHCBLjlaONSLBa+8=;
	h=To:Subject:From:Message-Id:Date; b=TqLm2u0dujAOdfqaN4acMYYPjglqSnlMTCbX6QbBkxkTezrRuQX2bkDC12CJxn0qeDckoobJ3Ow3Wls0PCUGsw5uXoqK+RbT4qfGAhCe/cRi3WhDoOBWngduVfXZELeSoa3we7+sfeEFhQ0kLULjsV1YrjRo3CETze1/5SUXLPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwqqm7+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwqqm7+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE03C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786577433;
	bh=hlptf49x9bx9yxOWxbXueScJ/p+UHCBLjlaONSLBa+8=;
	h=To:Subject:From:Date:From;
	b=jwqqm7+ZZEnqH3u5CwO0YWtQoc1HDjWV5TyXLbwjISCwlwLaxIjU1fs5Bs+4Mus7E
	 MynyuGvGPn27XoXirGsZY1c2r7ejMFOMJfsxqN6wT3P/vKoTJpdF9NNoKnW8hwqT1Y
	 iEQy8E+dDW0w2kLLwob5CKAs9y2gwnRMTyzAFPbnMsBBHg9YU63yK0rBLsN2Q9Ro0T
	 ma71V8S3H0LP2QUqGIguDe65zYFcDMhaPq9CB3go6YwiEfDBcXn2xhaN569IaNDRfx
	 VklHOmI0Ir18B6ZlnefRc6pCIS83imKhaPUBnFEAQdjK7DINllhSxeLVCmIsqvyF0c
	 5Yf8oRzvR0BYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA444C5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657743368.14304.8037716099381092228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8040031fe461ea6e31bf1e9a5f1caf582d4cd323741b7d5eea90e005858cd91c
Date: Wed, 12 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786577433
