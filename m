Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147F13A1E66
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766876634; cv=none; b=eCoHFPACpybx3tqfc3sZkIJ6xbwdeFlK0GhEuth5xECgB2NZIdmh0UE5nwM7wjuZaio3sH2pDrRrHqM3WRy8d2gziQaTDtQyTujBDGzltc6MEpPv361/bug74Zq0Oe4WT0O7Qssv/ll2dIEWeK8yBfnc9wTKvizRlRhUU6ROvCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766876634; c=relaxed/simple;
	bh=rzvmVd61+3yldxY3GjEzBXYJmGpNndUmmz5FcaoGoWg=;
	h=To:Subject:From:Message-Id:Date; b=c0zWzQN7ttc8+7sDQb8tEGG6jxpUVE3Cwy0vnix2/f4ycVl9T+kE8tdrcPobTZCyuR2y7X8eOukGf40rmx8qPaMrvyqGviT2GHjHnXspakVSATfwIaAub7qA0Q90fPJ8+lkWDKAmQ8pM73usSvkqIf20P5suWTYhtO3psPQFIgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLo/nYGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLo/nYGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C08C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766876633;
	bh=rzvmVd61+3yldxY3GjEzBXYJmGpNndUmmz5FcaoGoWg=;
	h=To:Subject:From:Date:From;
	b=oLo/nYGf57107e90xmKfoFaNZ+5VXEeyMc1VAmMkrHaKY1p3884I9j4+KGyhj0oE+
	 +D66dxe0niZ5G/zSUvRsQHPbaUeod49xWGrZ8MVIk6C5+Efh+D8gXv/Y1ir1YxIhHV
	 Mbf6uh/bHHMmFSppOqWR6UTSx2WmwIQHzqGI5kiuXnFvGcVNaqAJmFBeFBD5I/gDPo
	 lRe/W5Z6VXV5Ke1Ur76FlyOjmjteo/8u5tpXuYWieAbLkhDkaDC3FtXJMpuqTDi+06
	 S+GJVSC2zEeSq9Fdz9L4zd0swFxj03g59O+4Dp4hyGNHTf3r6A3TK0z9ROR9sk5Cx9
	 xBZGL1gmHN8iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94190E92720
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687663359.19144.9007152530659900630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d2559aa46f892b47b2f9e668057bda4eae2fb6a40c74f5b2ca52f848d603fa
Date: Sat, 27 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766876633
