Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C3118A6D3
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733067954; cv=none; b=IOki3K+Shwb6XqfgLFiykIkuczpjHQgU/AfPZG3MYBh2SmQIi+qgrpkobEE6UIrk5F1iI+AEB8Cj7pAnt6jttc0KhF5kQWKeytSxMT8R4sb0ZTKwTvl36l5V3he0CeZk2JTqU0rH1ZzTtgsuiZXQ1/XlYgJN+H6Dt7jPEltS4RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733067954; c=relaxed/simple;
	bh=qQnPSJFyTKqrNvgibLgOk1pW7YnYLDaVu7OIU0d59qc=;
	h=To:Subject:From:Message-Id:Date; b=M6NUB73UIz28qfS8RVCeO72si2DL9zKSHh33wWpXH0ME0oBNqnr6zWEwuyK4etsceuQ2o6qYjzliVeYfmDDc1CNWhZESvR1aow7GUckEKJkQLUuViiDU3T/AsTfsuv25GZf7bJhGS6+glLiwzbtDj37CBPOZ30KljBWyKUNJeI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAbWEhJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAbWEhJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A840EC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733067953;
	bh=qQnPSJFyTKqrNvgibLgOk1pW7YnYLDaVu7OIU0d59qc=;
	h=To:Subject:From:Date:From;
	b=uAbWEhJPCJjZlmQkEmtzzCw7POhEJ4GMhdTDHu+XGk2vbM0Q+CeR8PgMEzeZhQGVB
	 jP+2HcZ6OErFrhAKTmXzV8armRE3DVC/RZXJtDvdolqh4few09MeRGdO5NyuaArSK8
	 q9vw2iLCvfP+C22QvBbmfhPyJnsV3uMuaxmXSr7hebGtpNTPUpt5FAAlPZXBhBnIaX
	 NpSBsR1E7eDUpBJWbPmhUJzeu6vBUuEP7G1uOVsn/jTOnBF78LuQW2cQcJ2MVhdyjk
	 xqHndRqNNjiWjawYpeEcbR0Cy3yrKjNfrP7gzTYITArdwxGtd//VEN6Hxo0ywgg7RG
	 vwBnHlkFGOVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A1D49776
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306795358.8474.7430762774660563501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3420008848bfd6b6a17db27978f2495c40d16184c93cf0af4c2bb7f8cccdc47
Date: Sun, 01 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733067953
