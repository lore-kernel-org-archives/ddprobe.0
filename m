Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B1114E2F2
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757058594; cv=none; b=ITnBP2k+6zDmWaXy22g9aYxY7d0+9/kcOMwy0CzbmUZQTBb2+lBxix4Wy/J4OtxzWiFYiLB2Z9eLleWuc6R6/DThx+3W7iL0/1dpwL9App4NViO1Z/wnvDcXjOJE+cZKuUoARyaSGC9+hx2JpWLY3EHVwLzmgXLxbCFCDMPbD4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757058594; c=relaxed/simple;
	bh=L+gANLMr3odaN9dRYvrRQYFW2lteLc+jXhhQDGPuUHk=;
	h=To:Subject:From:Message-Id:Date; b=SwcjmrWKaeOljF8eEQEsQxB1JeLU7N9n13uTUNj1JRindhT2n0SdsW5dVZe7YqdQcuBx2m3c/LJdAGAmbkdO31k0HhBywVun2J5HuWVvY58wUnOveAKdrDTJVgUPIm4AOttYV3iyp79mQ+uJbtYXESIxianRe0U3nWcsggv154Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jERRWon/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jERRWon/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CEEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757058593;
	bh=L+gANLMr3odaN9dRYvrRQYFW2lteLc+jXhhQDGPuUHk=;
	h=To:Subject:From:Date:From;
	b=jERRWon/PBS8knxR1Tw4nHak2JvKvvMnKBSv/nRIy6dPEyZOsVWANB00QzWHghAtu
	 bDIKqpX2k+kZchSSr21zK7O1cELaYNVvzgitHNx6xHthVx1igA2RENM6aO9191P4P/
	 1oYBzBe3g3TCjglE/vxtAuhoweaQWdrXCgPNnTHNlg4eOMIo3WAlIZvKvVUWSwRCBq
	 gdjlozf91a/LxHPcWq2Ae4UM0QQgILLjns2E/3deDTS7yP/pWin6VuqE3AqUop8jy8
	 5nevZ46C4+E46hU97R3Ui/KBekixadaCPEqR8qrc2RurHVhOJOVKeGUoaaFZqFFQEw
	 ZboUzDekW7qjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B4CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705859358.5817.6009612537856188095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d37f0d58282887c94545aeb32fd7d2bbe2514290b99841e87fcce1373ddc4e
Date: Fri, 05 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757058593
