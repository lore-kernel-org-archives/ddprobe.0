Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A6834B43F
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777131454; cv=none; b=EGbLScNLMFpHWjaZapFTTIpRLrZh1i2p+qjosQVy89/GX7XFPm27j5oe4xgv0sGpG3WEZIWtm/jP0bDtakIYpXJXnYzQuFsJERUKGuzkpSxBBtbNlXPApK0PcIhPmH/EtbsFtBfPTYLNMGTmmHlCGUmQB+5CoelLa2qf1GVcdb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777131454; c=relaxed/simple;
	bh=wmFWJ9K2qbP3lnNqfDxnnIA/tA+zhu/6OLG4jYbpj/I=;
	h=To:Subject:From:Message-Id:Date; b=iKii83lz9lUYWoSwdHYJ1HLoLIXu2mmcM0vdiyxkyKYuBXmofHirEKfOgb5uleR6AvFeeLWJ/Khgra4ybodU6hOUu6mGTrfOFa+UedLxTdHwmQbdfhmBQZeKYP/wGeHv27SvWAOanOtaToBsmXyKwjdeh7UkCaxzeEj6l1mnGd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROUZaayF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROUZaayF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBD0C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777131453;
	bh=wmFWJ9K2qbP3lnNqfDxnnIA/tA+zhu/6OLG4jYbpj/I=;
	h=To:Subject:From:Date:From;
	b=ROUZaayFXOwjluPvBo5GGhvG2D7OR20/NAHIicfdWMpHm58m19/ytoJgg/Ht7MItA
	 f03yrYE+cRo9OeQQRV9UIYI0b4apcJg4l7kHcEJX5YnjeuA8g6QVo3naDa8+KPKPKK
	 k5uOHOmW5wBaqzaadsYsUwHW4t5+7Jo/TmTt7s/zL6+pVCaLINQ8XJ2elAEixdCRmg
	 oo2LwI3jBaBvoSRRPiaeO/c1gWR6zT5glOPI/Il34FD0SXD24YfmjOO45ERssqdqvU
	 8OTSRh0vnh5YQUlh8DHa/MNR3NnkocIU8dcUIM3dL6WGSt20fsPYVGne5/gU3eW/xG
	 FEu00/Xkuy4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF41EFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713145368.3837.17522008465350715581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6fae804d14a9458c49d1619c2e50b098534dee04a32b246d58e4e18c7b45a3
Date: Sat, 25 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777131453
