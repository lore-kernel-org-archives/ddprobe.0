Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1AC320A34
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789879234; cv=none; b=tCMNZvuE/UPs5Ii6K9DeZIzhV+tzbw235mIyECOlVXR7y+KV14aZY/wPt7/GMWWDjOyiZPQuKzxRta6NfesuD7T6vOTKN1FikokFSrk2u1YfGnLTL67H93Q2sYnAt1W2bXgBZjnyAzLWAt6GjIL8oMaaIncA7WxYETs9zXtySTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789879234; c=relaxed/simple;
	bh=EyA9CJhUbQj8uVtGEO12lM/EPNNdIuGvPJ1ZYnincD0=;
	h=To:Subject:From:Message-Id:Date; b=r/aSmWdp4KJDGJ6fa6sYgJtSrOPkv9vDbKSbbRSUTEhhaIepw+DOyP7XEEGiZigIWMHmwPd9Rj3n/m5uwkS5tNCgIdFNR+Qj6z3kqI97lRL3tO7IKs7gZukZCk7ZXfwYhsxACqDik6yAPrISGtvBKsRvPDe6sMFCz0iSqyItNXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuP/O9Ho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuP/O9Ho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DA9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789879233;
	bh=EyA9CJhUbQj8uVtGEO12lM/EPNNdIuGvPJ1ZYnincD0=;
	h=To:Subject:From:Date:From;
	b=GuP/O9Ho6i+FgCJADNb1mHZWKJ7dK5FgjnKWbkBBr917UvyPv4en4P1e5S7q7Weo4
	 6WyCpMe60hTdZZqowi69Iw5l43ItR5gXI4ys0HRx8D63J42YcQdiLqEkgR5mhkC0mR
	 rV/z5CjG3R3xM+Im/UFdf7lakBjpiFYrd+s1WxtA4MxIFgNr9rUy7R+3LjP2Agouer
	 RvoYcnuRfrHA34kbpiHKarp7NGYZgUeFme3fIUcUKuuxxbX09+HfR7+CjXuba7RWel
	 Bn/lRVGoIfVTHk1y9T2PLOIYJeFXLgUTHL1iBMTc+vRoVKAHx5R0DNkc76FSh5VQqp
	 96HuHimm2nWXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE724C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987923369.26432.5870129942372980546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70d5780724b3fb3188f7f8d9964dbd05b1f0448c9c25cbac3d9369ed0d2cdfc
Date: Sun, 20 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789879233
