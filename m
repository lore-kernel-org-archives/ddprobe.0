Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F3D45009
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754204994; cv=none; b=N5m1wzUgg81lZWY0CL2zaDAB4V46xsQEOouPpO8MouGj5yra3841cPgTTfSuBSr6PC1KcZTXdUpW07miu2Cv2CVl7/UJZLzzaDAF9paxMgjQB9YYKmvUfpyaHTcWdKJo7FPtHXuy0wSVLi057Vj3JX4BQL+80jZ8tP7mahx6Vf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754204994; c=relaxed/simple;
	bh=IC+bzx2vXyKNl+RA3f0KHnJOkjPHRPQ6Rh/MyRreImw=;
	h=To:Subject:From:Message-Id:Date; b=OKYDtKvHxyV4/zYlhM33H8RlzAD9y6UCX9uBrMX9gOuAcpf2Vt97gQabccXnS2z8clL9YlUerrPD9EcfALyFV/hLVqVql3hDXHl3zMRwdWHBt9YNWbdR+37QQIULcbvt1Ah1WD6hIAvgnD1lCvNLXCTO3Mb+L0/FalybfOvBwYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7AoX7ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7AoX7ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E0EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754204993;
	bh=IC+bzx2vXyKNl+RA3f0KHnJOkjPHRPQ6Rh/MyRreImw=;
	h=To:Subject:From:Date:From;
	b=e7AoX7ahNuXFI8nxBflsJ70tBBkuO1NHj0uq2yQ+hygk/u9qov4AxIEQmwqYbEU2y
	 F7Piex6v1qny3mxffyniklQnOE9HLIDnVYUIGa4E9VuKkyHDzqUjRny2nIdx1JWO+W
	 TxMchu5T03WW2J4RLjFiIsMvzAdDIf3jD9lHJLWuNWPRnSo7m+k3GihiLqHYsQBcIY
	 Uhx/efHvc+QcoLGvPkd0zvbGyl0uHonTw2wq4zK9G3L5gOV/LQzthJWnEo6r//nsz+
	 15FJN6htw2OCR9lu0iwm3gfoAWKbqd+5XcBqSOj2xrBsbkUpGv2GL2BthQKURHYkRr
	 E3wtzFOpDTWlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CFC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420499359.10683.17553641028299384270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f0c2cff3962b113a18f5553dcf6f5443061d2ef22853754dbaa56f83a925a9
Date: Sun, 03 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754204993
