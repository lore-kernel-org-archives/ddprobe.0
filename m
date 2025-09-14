Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D8E635
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757873994; cv=none; b=tqHSgaRm4Olm7ERHhwkN+Rulbp373FpoKw9Q0nvCC4LPDnF9JfE60qt8dgtHAna/bGB+T3vCvErKYRPhGOp0YDIQV8vmCAVmbtnjQ7+hbPWLTqiYlEDnQ/pTjvIlYgFpFACUtnfN4zalS0UifMPtnbZtOBklcEjWyxgYc/9Z1vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757873994; c=relaxed/simple;
	bh=uxh/XW7R0SDIiyB9K6GTHUcvQDT7t4aZ9UQ5j1BSe1g=;
	h=To:Subject:From:Message-Id:Date; b=edtFFb/v7Fmqge9KnofGo9/CBAik+7mg2Xs83slpu/nuOWyw978lQ0DGC5Ej82A/3IV/OvgkBGqgYMYJQOTT5Y2w/aQZa4Shzckf+eI/sQxgnnhXQCdleNw2T/tcMjdya/yfKoUenPWXRYDyoaC6f/Ve9KnUHPOb4MsGmEmBRuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctL/loI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctL/loI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FB9C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757873993;
	bh=uxh/XW7R0SDIiyB9K6GTHUcvQDT7t4aZ9UQ5j1BSe1g=;
	h=To:Subject:From:Date:From;
	b=ctL/loI/aZ9ur0N5RTvIJ9TcMB8OO6ArY87eSIRXVj9PzaMnbC0NAfUJalT8RhGEk
	 AY6SDQGgvM7vRAJP966Wg+cgtjD+eFYauko7uTshO5Xxr8LIdTw4z3DTl6K3DSdRS9
	 ezQwYOyXNmH8yeBthuftkQyxSb0j44zrvbeUHjx12le9xoLfQgtqnzkT8r8qpU+WDQ
	 uKXU3P6psggzHa11mTO6HhEWmLF/S6jF7UqkzU/yNw6XOGfM3lTIPCzwXqtnmqcWQh
	 mebXM0jggXGwpRRwfxJg1rhS9g7FbOVOlcgThiGCyk4ePWsRIx1NFyX73cErdEpor/
	 vvJcqpRTb7MFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B93CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787399357.16523.17627515696757490801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931d415a18d3bb0e8eb8b1cf06a9d0ec9e9bd5131212799547620241dcee0ace
Date: Sun, 14 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757873993
