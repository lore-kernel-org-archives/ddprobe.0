Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0562D1901
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753360194; cv=none; b=rCRc5TiI6tXADku2Po562fufoL3vHjZatEJmY8Mpe5zVPe+RJ6gRCO73ail0JmQtAv96wz7XS8KtGDluGUxdtBIv+nUnB/9eemdXie4tO2Fd/dzSDEHJ/Wgp6EijmXBbKwjAbiZYDpyLA+/pS87GgccZbdQl9Fo/+oQohGUrYuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753360194; c=relaxed/simple;
	bh=pDvIgTcxoJs9DvLKToBSUjdYFwGIOeprFcOaRZGIQbI=;
	h=To:Subject:From:Message-Id:Date; b=CN7fqhzT8Fs2LGp0eg/95kMRwRW+Gu+ChgXAw6EAWZ77HRVnj0ao2HPIQACRrRDw6iwO/Zs0DqNl3ZItnbtlJ8gOEn+X5zbZCBdaXQD9aw5cTTviRwieRbNsfhIAV/sY9zB0Lxeu6ngsDKHBnnBBsdvAYus/cpbcaLfzc0pDG1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSB0CiRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSB0CiRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2A6C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753360193;
	bh=pDvIgTcxoJs9DvLKToBSUjdYFwGIOeprFcOaRZGIQbI=;
	h=To:Subject:From:Date:From;
	b=aSB0CiRebxfFaCdRpIaaED2XvYNzsW5mkeDb0agOUvJS/yCREtdw+GsMLoJ9eYIux
	 NWfm8PNU2Y+37qXEgzves9VS15gIA30VcoA0loTpA6tnwAq827Zr/BLN4KrExzZ+K7
	 OQKHE/R0q79oMiFE1kySpYyX545huh91o+L4MAcu1IDRanhfI9O3TOxYkhxqtWvrO+
	 dIiWFUzv9lIiAc9zdSFuvl5ji5DI5UR4gr8SG/uvqoYmvZjh60iK04e+LOFjabvA/X
	 WJmKN2biuysqbABXJdytnvMQ6sczj/5LQfkyZsqcqdTztLe1m3zei8lEEVbAGNq4H8
	 a52DtzEKqfrKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F2C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336019358.31377.9516916897152705769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7badc68fd0350df8678ceb82d7a1dea7cff7b394ce24637da433bc7a1b86853c
Date: Thu, 24 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753360193
