Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C3C8467
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728875154; cv=none; b=kxxFL2AhVuFt7lyGGeUw55J+Lj+zvdYOVQeipplCUeHKUB3zYsoliC09eafLh7YRbksaSTChBuwYHRCp2IKe3x+OCO1kBtscOj5rxTToy/OliExPPiKLI+mZ1ekH0yc7PflNq1NkNK0BeKpV7j8N/O+ooFbLTKmXkAYwxQgcPc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728875154; c=relaxed/simple;
	bh=pX8F2ohZgFpobnLccdrpSBLzqCSVJwgXcNx0zjqmk4o=;
	h=To:Subject:From:Message-Id:Date; b=Nc96Mk6WU3bIi3NDeSY/NqeeUUcLpTANxd+PFwFraVFkTCPsV8kZm84NTbiIiR0xAqFyevl6HWNAYKhBtH40L5eTTHYMFasobrVG8FMaHdne8M7Meb3TlpsoOyval2EsqnIsF3luf+p/UAZ9TApRA7I+v8tYXb3IZ837l0+dNYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohE+l6AH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohE+l6AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B641AC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728875153;
	bh=pX8F2ohZgFpobnLccdrpSBLzqCSVJwgXcNx0zjqmk4o=;
	h=To:Subject:From:Date:From;
	b=ohE+l6AHgtpnvBXZ5zI4KxN7luW4jcYRdbzPtGdA/1EUq1T1JdNOcq5fwhqo3FA1q
	 W38j9PqBwrUH6iqK3wxDIyYtJSUl6ez3ukY4kxer8FWOLyEWXnU+rsOk8Oofkq6Uiz
	 /aMXWS4MBsZrSa0NEgC8gZvoLEJZY78QWhRRgWl5vaWMNlKg7berwx7+GfyhM/CvEU
	 zLAFrJV2ZzrkgNk29/0z8XMHZ0oG26SEYWKDmhHQFs4M1lYD5XgIhtxeG6shngl2wK
	 fWrbOh7YF0NK9w2JVuZT5xdCJtKvXlSGTEA3kfxl3hp4AOYy7Oxiyh6zABV5UMZPZj
	 oY3byjfQT/b3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E211CF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887515362.29476.2647543178002300819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cdd963f15f967cbc183342d6bca884c26b673e155b16921205e9bb4475ddff8
Date: Mon, 14 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728875153
