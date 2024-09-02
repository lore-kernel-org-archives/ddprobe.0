Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C242AE99
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725258354; cv=none; b=RrYQGknN8pUdWgY+u1bWbzNit2kKygca3D0Kwn9xJaBPLPrQprUteSmZXuaePHhwoUfhT375vmnCdfrJvBv3puYKc4VLKK4CcV2sG92fj/lWNYD/xP4ZT8GINubdyVTEma2tHG9XBYK0j0D/8bVXg7Q/rGY4vJZQZoZv0kzlFAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725258354; c=relaxed/simple;
	bh=iVfpRUCTZQ8TnwaJYg95ZAXFjwSedhd9MBwBqQoS/vA=;
	h=To:Subject:From:Message-Id:Date; b=oRYN6DXh7OtMOe6YLcB3pgIJFuprTfCgif82g/hhWVP7IGvV5xCVUg5EBnrqgriRWJvLJU4UxToRfzC0tAEE61ygSoccJDvzVJ09IetzQcT8mGAUpCQ8khTeUTK+JYCCGg/sWxF0STyxDfIGJwRww1+5vLwZ7DpsHHSU5JQ5sxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdHBLso4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdHBLso4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B72C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725258353;
	bh=iVfpRUCTZQ8TnwaJYg95ZAXFjwSedhd9MBwBqQoS/vA=;
	h=To:Subject:From:Date:From;
	b=QdHBLso4nhjXmqaDKbhh1sBP6vaJBbJSpvl27ov+Vj3PbEFG5zN28+TU/8E7QmVum
	 08acmRSlwSJY6/FqYYlLEWrArDPW9iDbLfxUAmLtiT0Fs7qlH0EBldQiwOcF9rStxu
	 xPQmTp3LW4hPGFrI63Rnyt/0mq0HXdckTBv/LNKJtqjolsAAH0AHOSrjfwAXpa4kKX
	 18ClOUPa8Ud8K8V8j2ywP/ZlmQd1/QpEH73w7C3owQ1PIrNZipVvBuOeu7Yyi3ybKL
	 d6IxKth1K51AckNo+N7VfNJtAOe1VupNvr2IcqcG+dT0Wa3TIGItPrOLS5zYFPxQ2f
	 ZsA0vperQlS+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97618CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172525835360.19919.1563993777687105216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0742fbe8c4cf4b708215490b1566a762d8862f3d8769ab4d3dc8b4815080c6
Date: Mon, 02 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725258353
