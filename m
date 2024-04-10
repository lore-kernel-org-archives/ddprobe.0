Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D6E523A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712714897; cv=none; b=tZwqPyO9SUfELEyehDBOdQLYuJb6MfiU9JH7Dggh45fNIlAITsuEVO+tiTFXz0Sg+rjmonmIBr7Uv4wAM5buAPCPsZyr+h9gODd666QXX6DAgogPAJxU9QpulcFBWxfR8RyrnmrVdYvWXsiVtksiiffcMBu+ydRU4HHA+Mhy2no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712714897; c=relaxed/simple;
	bh=7CgSKE04hAEaZwhWYMOz/3APvdxDWuwhUg/5Y105eKQ=;
	h=To:Subject:From:Message-Id:Date; b=IrouAm+awmycZikHg72hD9+Np0itqbwR8TcFitgmMHjFVAbpgBfcn/oBt+fj6unPRqesRhe84oZI5N6wCaXa9TYUBe0AIkrTEg2GkmRAkclWJy6NONDI+i0tpoeJ+GWboAZ2oueq3tfaHFX8wb2coDSJ9NzjN+ewppjhrZE1xbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWV2peZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWV2peZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A592C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712714896;
	bh=7CgSKE04hAEaZwhWYMOz/3APvdxDWuwhUg/5Y105eKQ=;
	h=To:Subject:From:Date:From;
	b=XWV2peZT5De55rxrpP7rB4pVj5NsPIFg1MCunzDj+Wf6vnGY2pMWcypvMCZNMu+Bk
	 YNlsw2oJAYgc1uXOmhIgPJGCYVr4KxR9pQoE9jU3GsFbt6hAuj3zE0GV/AhEpPIYBD
	 l4/a8+sBYnNx6IiI48BJ/txU1VHP7JULOnO3J7yk9d47Xyn3UrzAtqF36OQ0nU5SpT
	 qcC/lMC3o/1Yj9P79bIkCp7olICTxwm4hU4H4Bbot1cVo5e9A4k+uLhwDoUc+OjQfq
	 v6o84cW9Rh2WGmiJH8gon181aQQ0iTGj3GSMzHnnjQuA+IXc+2wQkO4hTd2y7rrE0k
	 0B0F4nQANpKKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A84C67861
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171271489640.15182.7344365697801107554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e5324fc9d9d67fe05576c4183f7dcb1631e24e3f904bd7c804ad9eb1d13368
Date: Wed, 10 Apr 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712714896
