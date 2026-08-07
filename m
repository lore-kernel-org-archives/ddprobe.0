Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE1E30FF1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786110635; cv=none; b=hmOSA9NXjZW8ea4y25ewJmWuWELuA+RadkZnKOUghI/d4ubbi/8NiXSnSLutNoCVvIto5S6XiUQPn2ziZd1KiWnJU54qEGqXJTYEd1+7Uyo++Xy+4X+lyW9oZNrQUOrz8zY1HvUIP1gHg4Vsr7XQYOSOhGUk0FfWr+65mf1qYEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786110635; c=relaxed/simple;
	bh=dQAzp6A7wSuv4b3ycirNvBx1ztbE2Xrx/nQLe18tGSM=;
	h=To:Subject:From:Message-Id:Date; b=fGm2qsVTrPPfhGlSD8SPcMmMVQC5tWTlNuOOpFSW+gXA7Uh1fCM/89zgs3Qhx92AQMo2GFm1LknAjesrzfpzLyR5M8Y0aou2PZb1e5EbFy9m9gYYkqFzrERRWm5z6NCj0ceiiNRMwQkY4qE8R3o7v5ab6dt8W3pyq4SvwMD80wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1GAAqcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1GAAqcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEE3C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786110633;
	bh=dQAzp6A7wSuv4b3ycirNvBx1ztbE2Xrx/nQLe18tGSM=;
	h=To:Subject:From:Date:From;
	b=k1GAAqcl46+LtMlgxLdOEfbiSfTbhRvLYfXw9ReKhyd/M4y4xPGId6OMd/WgWqqRh
	 4tzGIyGTbXmyVTHYUnYGE58vax4JPsisLm+igM6JrSSwInmpBRsCAkfD6vK1UECV+o
	 tWp/4w+eA3ACLBFrXJYFOa3pF+ISlMi7C9pCUF/A0Z8YhJtxoJa9ySr7s3bg64zmjm
	 8D75Cfoc9tlVtMZdvvbxzTU63z+bw2X9FJQrWVDMF7sQRlEYTw+kAWvnBMavV2HAzu
	 LGfrAt2YvDS+eI3rCt9h8syGmpKFpt9Nw/rRqqDKidIlFUQT1F9QK16wMiRmXdH+JQ
	 8B5IsI1UPxxfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D34C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611063368.10567.16288516187423449423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b475e01785a0ee71827f38fc49836856873324c2dbad95b8179c42c7eb1d875d
Date: Fri, 07 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786110633
