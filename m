Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D205464D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777338454; cv=none; b=Lq2B6SlYiY6JhOZZ48ZfwELD03+HWO+XyHgrhKrKudh3AHUxTB8ANaLoG87+o8xiXpZJThDnRQABUakdy6MJDUW1meqLZ2JOec2mct7TMrY427ausj/hd23/G5D1azF1EIeq/K3wrQ45iXFIQtenzsTaW1NCepkl+9+GbLuOZ5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777338454; c=relaxed/simple;
	bh=7ZqzFuRleq9jvIAdfyjZPFnESd8dbgm6LvX7OZQOzLY=;
	h=To:Subject:From:Message-Id:Date; b=o7YFYsSvazQtoA/+BaPd/8q9YBY9O5Mgqg6jECSaX1QFCJsjnlpOVs6CM8XPuKVQeO4o2I6Mqo8m+3jfQuO+4hPdLznnLLAY00PCQTB3he01IzOy6qCD56Gt5LlOQu0XyPf/sVZplLepHpowaBvzEcr+IkOiY+4/g76gjNExkLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkT3UMpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkT3UMpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11E7C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777338453;
	bh=7ZqzFuRleq9jvIAdfyjZPFnESd8dbgm6LvX7OZQOzLY=;
	h=To:Subject:From:Date:From;
	b=QkT3UMpqE8ix/2yrxmQX6RIvRY5rdVrh7gkJdIQy1s5FBH2X1XF1ES66Hc6Pt4iWB
	 AL2W2aNUf1lt1Z3sPam5SRxF0zu6FZ9zgWCyLKCXhubKA6lSgx5NbkCPMJQfjAt+K/
	 qJYfn80lQP7U9JFM+1+hwI0umPpEASY4iGGbrgtQ1nKcKGLAZ0mT2wQfmjKCDe7D5/
	 93eAP2r/4nULOfGpMGQmfGs4mZmA8iU2Y7UACDCbsdgHBCHy02AdILwVmaVaY0X+d9
	 cJh/tvmJ4S+J6/YHqjI28mxatS06Dh59LnJpJ2C8NMFJnM0BWQUZjqkKrZN4E2ngex
	 lW+rGRLyRy9qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC590FF8864
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733845368.20398.11714903046513656231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8659c05575937a9915e66c979a16bd4a3a2c7d16ba060ad6da1c17dc90c8a5
Date: Tue, 28 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777338453
