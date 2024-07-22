Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB1716EB5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721672154; cv=none; b=P0I7BMoecmgDqzB37YQmO6S+6jRYHWeTAWCWCIVl3WaDMdI4L5CbM1zT+/wOaqQugf5zuw9dZvEA+zmGyVFswgnRteXJZ61CxZTeLycOLqsP63L5j15oAsjaXCZtQuEXyi0JazL9WhJqADAldvnEnUEODUmY1A+KyZsIFuC9ppI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721672154; c=relaxed/simple;
	bh=hYkd0BwTXGIsikTJwTaGcj0Z4C3RWDluE8ksJ7f6HQY=;
	h=To:Subject:From:Message-Id:Date; b=gzeb0oD6NgBodbUThBNo3vcxxD2DMNW7JtmB5OG+ZLN5EmDhMNC9VKMS/RFPbDdVxV6CCVTTelCX0+rwMEwSxbpCjSiJKK2qjc8SceeaBs8jvEaR0zD7rghvOYTbSEMMpG4s8jJ56exy6r8WWcPDQtYcHffiJAs0/OhArd09kxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9EOZfPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9EOZfPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F06C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721672153;
	bh=hYkd0BwTXGIsikTJwTaGcj0Z4C3RWDluE8ksJ7f6HQY=;
	h=To:Subject:From:Date:From;
	b=Y9EOZfPXPG7/1yVj8JyWzeU9eRYGpx6PRw+v1oQFd1GfPqPUDJ89fXzOh8XiGkkAP
	 3XBy0Di3QknfoCAbgmieIr/TvvRlbjcDhiF0XDOG7KmtiWUNgAgd260DwC8i2SwrW8
	 UIX7YaiDv5UGLbNDMAm5eGWwGBd9Ovd+r3BY+ogbve90PYgXcBgqeelzwZOxBUq6db
	 inM2rEWlqYSPpvHqPz+wDHoNPNIZB3CPh8MzrnkGXXU3EqgN3F/qXj08E/BCJ1QsLD
	 kygAD66Uo2wiC85roqKGKEwAazIGY4R5Wix5F4aI5Vki0tvgD/1yk73BaG6ZCvpoBb
	 7A4zj8azu7pfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93165C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172167215359.5634.10885179090406002150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e0265e66634d7f0c7d97823583a0c8da8214478d2e6f2c984dbd36b3780ad2
Date: Mon, 22 Jul 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721672153
