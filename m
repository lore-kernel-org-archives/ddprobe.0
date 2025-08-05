Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229E91DFF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754365795; cv=none; b=p9vigBnB7ioat3tD/Aw1y1QzyapVkV70MdS+akU2jpkxbm8WdKo4R99JDRNesSXw80Nr30ealeLzXkBCAr1rTwwQTWf3L5Sw0Jh/AJ7Q/PHcv95D7nZZTx3VuyquTYfNxkyA9OygTezshYl1pz0TaSajxg5VBbo65xqWg6dI2/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754365795; c=relaxed/simple;
	bh=E8d6JfS7Dk9xk5qnYmBnKWSet0r6gWuQnyzODSzhRVM=;
	h=To:Subject:From:Message-Id:Date; b=G/G2+oYX3s2XEKA4h4yNq+rR89HYagwRYHJIlqRfSuPohuoB5FvRqNbEtEwcuONhSeWAzZEqzaV7TUM8jSQlDE7tkHTFhogmpr3pAi6+RduzrES1O3J2XPyd5mzrQ+1eY+wV8e+inJF1sCaFoqdSyeofx6fZ4/t20s+/C3mb9LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBmoBdhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBmoBdhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A341FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754365793;
	bh=E8d6JfS7Dk9xk5qnYmBnKWSet0r6gWuQnyzODSzhRVM=;
	h=To:Subject:From:Date:From;
	b=KBmoBdhXK1zKNc+9V1icao62biSfPYpb1KpkoHXmAwxJ6qA75F2xQJZoB1ruy+X9g
	 kc1piCeps9ZJK17UStObXN2e/E+ydbz1typg1u8xqaZzOgBE6jP9KRl7XJf9eldR93
	 Y3vKQp3Gt+qe/Q7aJ0PysNy+NGnlwToi9HrmBTv/CNR+BDs7rYbbfVLJb9ucqlTeFp
	 wlRVprSIIbEnr6iSm4T794iohVi/jw0kZHBymX5uVFUjNLQ0BVF5lB4IkGK9dhBLcd
	 2/NX7RDFcqUJFvk1srZ/XRWlcrV7sf+ujMEUXKXQd87LZs3JnzSMzaHNYE0HH6aotB
	 0QcLuJ/1HHWjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE87C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436579357.3826.7993874362843373284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fdb280b707dac6de3e22224814db6d12337bf83a8821f549b58cb1f564e2b7
Date: Tue, 05 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754365793
