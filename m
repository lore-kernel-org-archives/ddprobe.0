Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5876E3A7F4A
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779640354; cv=none; b=lgYF5BBtAUgwPpfUGV8rJ2ElDA5NO+OiSuPbmJYTei4ZFcThs4TZgSBGvQcF0xkzo+VWXvghSm8hZatCKr4wskStM1q1tPR5FfAXvGmfFkQKmDZI2Z75oLwAntQvlU0oJjs71Y2fJvgYuPsovuiUw3EuiA9UX4ifKUh3utwuveE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779640354; c=relaxed/simple;
	bh=zv0wkxfV8EfEmXqgVQzb96bSXXTBP//5w8G3d8bT7g4=;
	h=To:Subject:From:Message-Id:Date; b=agpXT2K+v2ufh758B/1F5nPic6U+6JeZvmhVn/S0nmfM9vVAQtJ51hBZYhbc/x5x7UoPtpuPO+G7nOC7ZaXHBDt7mZ5r6nwaIua1FTGrGVIjhrmSeyZSjc+qEJmp2vucFZfITYRB4i+U4Q1LVP0pJ7HdFPGBAzrhRY1fvQfYv80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGBxxmBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGBxxmBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63C1C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779640353;
	bh=zv0wkxfV8EfEmXqgVQzb96bSXXTBP//5w8G3d8bT7g4=;
	h=To:Subject:From:Date:From;
	b=nGBxxmBtb9ZNDUt+0rSualWzA9FL9Rhik+idSsm4DcAqit4ZuAxKukvYF1BVZ9OAX
	 4nJintvuyG5/DNQLaYfs5o3//OrFFNtCEiURW3AjnHMm3WFedWCRw5La3F4yf98k23
	 r2PzOCG2paXZKsVD86jGuava0ietNJv6uuoyryJnZ1E4814MDI7CA/2yniicYPzaVM
	 n42dHnMMpYQL1j8B/CHQgrXFX5VrkQPa0XhRjB6bZ7HJNyfDRfxQB4KrxhQ6teo8VS
	 oPG9yiCn6dKVtf26kLaP6uJYO0M9HujgQoeDtM6e8QFg0BS3M5pa2RutGmnfLj+kMf
	 d2XKtE4Nzh0dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE51CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964035368.13502.11858332027902643609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5934a7dd17be27db3d5314e10cf90258eb1665a47774a3ebf11f88b57caccc35
Date: Sun, 24 May 2026 16:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779640353
