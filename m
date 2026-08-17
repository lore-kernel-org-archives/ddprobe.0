Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3020325B09E
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786936234; cv=none; b=jiFUDN+hXuSBw8WQ5x/C7UODH7TZGLJ6bFWj1ocCbKiYtRItjFThLhmwOrycFSxrIXkJ4PiJ8m9L23U9qp+cDNICTUt/aTpEnRw+jjht/M5wucqzRg2eTT0hJSlpDeygkVaJ71LWMnU/+A09/r9nJ2Ilt0gfyIWUI+1cvsHuDkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786936234; c=relaxed/simple;
	bh=QmkcLRyPdWeXbldKFuzB81dRuZYi95T6FNh7Lq3p5qY=;
	h=To:Subject:From:Message-Id:Date; b=KcLeyizhOaCF0NuDIK6cc6wjSXCgytkmFqRQelo50BO5hfKK1M8phv7YDt0BRSlZq01Q7KUqH21wFV9d7RbdCHzysUTbK2IA4Gpmc4JLyJLPTSPC5oa206NBKqQYFs2zJcwgiFzgZ2nEArpAsNziidNAHIi0BJnCLrV+j+dxc54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kq6WnyDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq6WnyDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AE8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786936233;
	bh=QmkcLRyPdWeXbldKFuzB81dRuZYi95T6FNh7Lq3p5qY=;
	h=To:Subject:From:Date:From;
	b=kq6WnyDYLyRKJ26MLyhOlXL8dRVTWeQ6KKZj3UkoBfNkzmGVTlM3lZffqRPTMtach
	 vjqR15FtzpiFT5WY670EPCyrccALxlhSmvgtURwrw5yWF+TQSwGPGGwiAij6itrBav
	 fQ4buIYBkDuACARUpl7wgVnzX/xfCgKzvWuA52lfSGqYxHpHGrpBNOaZmL1MUMKmR9
	 tpvQKhOtIiOc1KSHPRmLtikfFsk0SRcsHCKiakwLZFNA7QlHeYI1h+OdUT6bwbdOdW
	 THaYqmXgXLvTRqMNEpaw/SeIdAEMcMqeFzLUfE7aD/tJlQtnSUtdEqr7beES9FMHxj
	 sBASVWKBw2E6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA57C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693623368.10980.8200332520537874900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a8286cb257e0c1a77aa37137fe540f54ba46f7265a9dd3a91c359a3fcc22d7
Date: Mon, 17 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786936233
