Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E3521765B
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756659594; cv=none; b=hQvtfKsRSOxIY3DxJ1vVKbF8aRnxBoHofvsWp8rPASIK+yiQmFvzhASUCh4d1V64I2w+je852Arp9yTNJqNHxZ/k3m7ROx9pdpvBBZZdcOnNNesado1ictXtgpK1EhGDRlmUSWPVBgzQ6EJ9bRkP9XRA2SMIqn9ViXqeD+F3BVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756659594; c=relaxed/simple;
	bh=lUU3rEUhPsFLrT1qjcWiD3QJyrarWTeLArdfQw4PRRo=;
	h=To:Subject:From:Message-Id:Date; b=AWloj7RjbF2Zj3db3OO7jtjxoQOSuGWJgAgc0zwnpDo5nBbcrI0sl0Efa2mVTU0QG5RYIp60cqI99z4zYgYvdiWZj0S8ybmnHUvPe55i+XR4QRrWUCTl7Zkj6sWQjEkajdrBHVe32r3e0MVMfmvgU07skhtQu4ZViwFxUXdaomI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhufDKVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhufDKVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D94CC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756659593;
	bh=lUU3rEUhPsFLrT1qjcWiD3QJyrarWTeLArdfQw4PRRo=;
	h=To:Subject:From:Date:From;
	b=BhufDKVXjh7OjJC8eI72Rzxfn67f0dpmUMxFir0uycZ32IyyhKGdp5Sc6Jjjc0+Lx
	 ZZ43BCWZBm73z2Jsw754nP713iUwGKBWg5dhdW+LrvC/KrecKikV+ts+9uNX6GS6RN
	 tk/QBrtzDbiDAmxp4gihisjZ5HU268f5oOeecUENOOuDDBgHEg4B7CTFQEt2sEbwjP
	 1WvgOaMKj7N8LNA+NmKvklTbBIZKbNcwQF1mwKOV8waL4x00qbn083DvhlQwxUYzAz
	 BkJAIzZ75SdfUb2+Ea6GclyHoy7lbEY7LTBuiuTin7mEbn25RYR9+W7mvnnnWvjQwt
	 kYdM0vx1eXe3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA2CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665959357.2390.4946689234956881691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64c479660a1896dddfa62fad59f5a1304b27b5ab0aa296852539381d3450640
Date: Sun, 31 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756659593
