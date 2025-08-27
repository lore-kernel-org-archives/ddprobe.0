Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271171B4F1F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756321794; cv=none; b=E2+/ahJyel4zyzEbpHdsVozF2V1wTz3MOkpvOK7kbTyuz+EOSpKDpriqGq6qPjqVp8S0srcyNGIQ9LMolDD1PS4vO8yx2uZXffLdOEpjgw7GAKA1WGBvaXHxQdZ3kCThTNOLs1EmyxbH7f+bL3wxGXLXvhU+lWoS4hLICVoM55Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756321794; c=relaxed/simple;
	bh=vf8yxPLqwZUFs7iTMOuwyWworKBzCb1oLceKteXXNmI=;
	h=To:Subject:From:Message-Id:Date; b=Jfy5goiJ4mXb2TzYBT0CKSFRu3hg0FX3iQiWyBmt5nCMSPqfrcXOjIiTSmWkaSp0QEN8gFtpQsfp8UulGVcfnd9ZTPDDV5IJKuuZ26CUhMFiVOv0a5YayNDOEzMxAj/4Tklm2CO84EazfzTXXEtQELOJwEeazHTsVBFCjIBmPNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlRXZ2Zo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlRXZ2Zo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E91C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756321793;
	bh=vf8yxPLqwZUFs7iTMOuwyWworKBzCb1oLceKteXXNmI=;
	h=To:Subject:From:Date:From;
	b=BlRXZ2ZoyyJhlP4KUoAH0661fs/5NeJjX9lpFQnu9nNPBYpDoXWkXBkTRM0PJZxhJ
	 Ldw87jiTUN1/Gx7kxmncZqItDSUjeNNIQKGMUdo0D9RhV6bXl76FJJFasutPSgcc9w
	 OBmKD/LPzNHbTrfYjxMrjLCB8kearx3k4nGQbb6k/I/CivM2KXQsg48ejyzBt5vGpm
	 0GNZuAVEX+gMBqnccg9DhDPmdx86z6UlsyXD2VKhBbP5Z6Iyog0DjlPEnASOshzoKY
	 m9ydvZAKaaaZALBDwOHSTiDOfaX2Vo2eRS4dVdH+yZ/f25UUGGge6Hlez6Nw33pNae
	 I9Td1FGn6txZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F1CCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632179357.6643.8458298127007828795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ea13de066857977ead455113017e78580cd3cb3b2f3a3276caab683d4bab03
Date: Wed, 27 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756321793
