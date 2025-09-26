Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194DE6ADD
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758848394; cv=none; b=UofYX3G6b1rdh3GdJVfbi1hcVv/4NGMUYwGVe0sMBEVqfBkgZaXJpukU0jZEDurxkIteltOhc9TZVHKPIPxPk1NO6sCJwhYZ+rsgoh3atw3hBB3LtEd6qVXSiHa30CIreJHZx2btAulwyIC7HsQdd0pH4juxL/K5VzM8bTCLT6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758848394; c=relaxed/simple;
	bh=C6NN9cPiAp2m+h32PHN/RiXeHdYCxpYXGbTSPbDDIpA=;
	h=To:Subject:From:Message-Id:Date; b=c/kIbduFCWEGe77Ryyaglf6JtS2E86kj096VI0JLu/ls9HDN9tW2fw3u+4UzWO6hH7b/1+YA92/WcGF78BC40r5s0l6pkZVnZmv/hOrbgyUjgPsSvj7B834IXHhX1ijAVLZZKR48ZDH/rMYZIRCvVb+02Si4l2Mjcza9+3ahmkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9cnYm6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9cnYm6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2805C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758848393;
	bh=C6NN9cPiAp2m+h32PHN/RiXeHdYCxpYXGbTSPbDDIpA=;
	h=To:Subject:From:Date:From;
	b=N9cnYm6MllcWpNaHO3gKT4UMpLaaUaIcuuiT60HzOEoew1U1ytqEhl4oAa8zdRYyw
	 ryzdyXl+98bAu6DxrpaePrZSgi/hXmqOjY29dRluGMZBxCVtXHvRbK2s8SzoieU5TE
	 AuiqxAjLIZx+HcDxjW11WvZzMAtLHpfkafVAZIwOQhJujXgowbmVeFXKzvpzmwxuZD
	 u1Z3lHwHQnzGr7keWUsbujJUvTHBk6jzXXgO9Jak2QGdsucXLAJAdvUrr3OZAenbtS
	 XlKkwgM3nEJdugu0Z5ptqB0D4DfADbucKChYJBCFyceHfVJlYL3N9Fys1Y8IvZSUoq
	 YV8sQX4jjyv+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A79CAC5B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884839358.20577.9923049915991745581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdd850716651cbb46709c7aece054c91eb428701cb76b34b6b53c4894215241
Date: Fri, 26 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758848393
