Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1685D477
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741574334; cv=none; b=FP3OlZm+b8X1Ikzb76PW2KPXKJU8k1JCOorLv91RpL6Ww1mdnlBSS4qT7+eDaW7EKMHLws7IE7mGkLrEKZhqe6xn/JFx7b8Hh1S1HPLrbSYAqsgGXdINOj+aoXVQ46l2BfAejQRAVPOOoNq7/2q1ItwvWv/It5ajfohverMzKNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741574334; c=relaxed/simple;
	bh=BraMzfxSmrCFgtIguv3d9ibetJenKRrjZmvkV2k6z/Q=;
	h=To:Subject:From:Message-Id:Date; b=GUSntDGeIUhTFT3cB0HjjZ3kDVkvyq/GXY3ROo0iAB3hEgeIhLACMqL36MryzWAecLRvwQ5iGovwsJ5PGNlUrXPG6nFcREAt1b/sOQ5zliVXijU+oMwueNZq4vlEFZkrR/9THRe3zUZfb+WoNjDLaN6HRjCIuH3lpAuCa/oPI5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yb51ccLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yb51ccLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5B5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741574333;
	bh=BraMzfxSmrCFgtIguv3d9ibetJenKRrjZmvkV2k6z/Q=;
	h=To:Subject:From:Date:From;
	b=Yb51ccLQXwM29qFfJSt06SJ4jlNSsxFFEO+nf8GyOYH81pcXR03vayH7/kOsQEnos
	 TO3cFdOgc+vNKqzd9XoES9N+0dXTUivobXSuvuHbd7Mjjsf/n981h+F51t1XAuadvI
	 Nflq2KpRauR/9wL2ggPk15EoGXo2nLxrM+fsXBuUgSo7JAJdJZ2OxwIf4IwrkX/qGr
	 I1TfBIs0QxAIGJQoaCt4rFKJ7YHfXIXbmo+px1l+CyrPqgoDZphQLemN7pVDNoDnkZ
	 msl9IXqbBAtbhbaAf5kvEgxC+pyLFvjsveKqQRTQbk0eSXHttRznQfu+7xMbjIjCWx
	 ZkCf0AvEEmn8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9564CC28B28
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174157433360.24022.15363090803018758745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bd150e00424513ee14f2a87e4170f6a692c294481b5bcc4954c78a5317d4e4
Date: Mon, 10 Mar 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741574333
