Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2932E2DCF45
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775219134; cv=none; b=IO0V843Rp7j+56ww+k1jGteaB1hWB1pXrD0iFEKvYU2W7qoTmzFhQMjicTZ+PGdhfYHZErEuYK5b+VARVvCmXheTjc4D/mlRBn+Ez6/BGp5YuJ+IdI4olClDL2wU0F3KFGfsjqoiJ3bFwRPQqtK001I4ltTHX7WbG/n+AQtzkDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775219134; c=relaxed/simple;
	bh=c6U1HaaMnwIIdlUcSlqoZMJ65jko3DUsfarIbLrZDeU=;
	h=To:Subject:From:Message-Id:Date; b=aOqs6fCiUOGLILMzj8N3wldqrOz0sIjJxkBUM1HvgcA2Hz4MYIZShr9+x8X57yZdg19neTqmaZGaQvvYiVL6aHG0oj0vViHz77s3vpLO6BtykW2ZhqAbk1g16/egP/eYWjokFQT0j4igFJLDTw0A/+snzzXqqDJaiqm70ib0fLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYxZW5QR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYxZW5QR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C857FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775219133;
	bh=c6U1HaaMnwIIdlUcSlqoZMJ65jko3DUsfarIbLrZDeU=;
	h=To:Subject:From:Date:From;
	b=EYxZW5QRI87K9pzyps6PVAgyenxBV9w0i2VzsyqhRIdDqQe0YhJLVQ44PKGcDXLMt
	 53EvEmH87e8j4RjF8UazbupA0TlZFyomSXB9oy4hyKSPMcPXzhDG6b0HTFiiS/28Yq
	 9vcywaGsUYQtcQs0VpvGJjJdBivBZiPRWXH3vwUlSVAMuDRbRa3awmaXG7Fe2VJqZZ
	 u5XV1S/y/1fvMOYSk7c50hG2QNj+kEXa5VEZg7MRA870YUXzaytqZ7rLK6j3uy2LHD
	 t9ZU1DxI/MOGiXNLn6roCSYCcqXr5qVkbbQnuGz8voUQkjKRotlq1JyeK71mpJiNIo
	 kCwhISIzgLlBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BFDE7E36C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521913371.25711.12754061516897000146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e44b3c049daf1fb09563502849ffd3b108151cb3c643b8118f726e7cc93e716
Date: Fri, 03 Apr 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775219133
