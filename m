Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3601B3C1F45
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783087114; cv=none; b=gDqFZFmZMiqLj06ATc4rfo4kaai5J0nUI0asKA7CDzkGUh3vtrU9ivatCUktVn9+HyEaOI7sX5h6iS0r/BsZYGQO1rO3aeE2/15jXQ0VmP/yLG2Y0qanHnl6hp4nUhLOysr+CQC1FlSJZ03kshf5sKEN2PBB6/XKNsrikIpUk88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783087114; c=relaxed/simple;
	bh=mspUeq2R/MNhIHqOwVaUZ6VZgtVjsBgt+kYye6snPFw=;
	h=To:Subject:From:Message-Id:Date; b=XQ4EITg5A1dF4QK2LEi24GXn6jnz4mvyZIeW8QVkK3uGo6lmOSMu8D3OLktrJ8S7N0C3AdN/sNOl5ecsb/MHcxx15xE+kHgdRAE116C62aRHdooGk6fjQAS/wF6vgV+8WW6HUc8d9ijZr9K3s6Uum4W5tPk711YzlBHmlgPNn0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgLoIuBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgLoIuBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA5CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783087113;
	bh=mspUeq2R/MNhIHqOwVaUZ6VZgtVjsBgt+kYye6snPFw=;
	h=To:Subject:From:Date:From;
	b=OgLoIuBQ9g+VXzEzK3sHDL7XnEujEmrDKAO/bGXhPCJyevxr+K1i0U+z9xf2U9PFN
	 e1/SA9ULEr2GRav0u7eMEFEm78iZpTSXl9cUOmJBCCc4OeK1G7erpQWRoT7MXfRWya
	 tV7Sk5SAUpn/Fzy4mquU8TD0Zs4XL2WHVHtFFrjd4oeSR2xghbHVBlZGrlVUB2a331
	 z2wmjSABunSsf0DG++ATCbEdavtJ37bJmuWb9ga0cM0sruHQzhCmpMLjiM/bnywU1v
	 eINl8d139eaiUgk384kQ0iHLFTD4RXFX98KgcZ7uI/VEpes9Uajtp+AXeHuDHtg0z7
	 m0f9WWHbWkm5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA645C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308711368.27567.8377974976601707107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5ddf3677677b7d850a54fd21a9781fd3dc5bb6fc141238534bc68daee91459
Date: Fri, 03 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783087113
