Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9544219EE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781601994; cv=none; b=AYItt0V8dv+fJAiv0uJ2MkgNJxD8FE9dM2x7O83r+9sxXiK2TEzkQr84bNQdxPfcNLYBux3Pm/m3+W5e4yJ252Bdj5NEok7359PBN2A5sb/2zL5wvoKRem41pIud6qEbCtQpKoiwAX3+hYwtd+QoQL9+B5T5X/Sxc1A4DBjHZYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781601994; c=relaxed/simple;
	bh=ePhX3r1WmJw1pXGWf2RsApTn4I9UJe358MptDG1cyCU=;
	h=To:Subject:From:Message-Id:Date; b=MImhQkMSL7tWH0mueNkrvOCDjKA7Doj+02xbTU36I/dNFUvxkF6dbA8Y16EiNpwjL8IBftKThD+g4exxqWVzUtheGqbcIYsgrIWuQlwfpq/Q3m05OkVo4XHEuZqzfYLcCP20lHqN4QgYYZT+s9xjBsctDf6mtj9i+C0+P0BUnc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj4oGyWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj4oGyWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D005DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781601993;
	bh=ePhX3r1WmJw1pXGWf2RsApTn4I9UJe358MptDG1cyCU=;
	h=To:Subject:From:Date:From;
	b=oj4oGyWiQd/L3psgF5bXsXmyIhRlBG+kx/Cxe+w6yIFPz0yCY+M1PeZIKFJX6nyYh
	 mFEAj7QIdSWYVEaIjk/sv8JlIMAlihoJQPYsjXUqlAjpUY9nCobln4ThMUnKMcDslL
	 y3Mxxn3Y9Gj3TXyFCgb68NpRMUZjFyQLtfNawkEzDZk0U5ewbobUvQRnEdLY5sDlPv
	 mK/JVHjQHP0kiimFBMFf8GBfaAEkUNi7fbOCJ45mZWIupwTHYS6M+6pQ8ochK0tmp+
	 H8XeK55n5zCBDxcSoBrkByavuxasnPFJTuzkhjk0gY/rT9Ndt2ZoUx6k7IMEqDkrmr
	 wtHzQfyPPtRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A7DCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160199372.5897.932095801922101917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc415a10cf2a44382dcfa821c17c37c6aeaa7bdaea9184e2679eada95ccf7d9d
Date: Tue, 16 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781601993
