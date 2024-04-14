Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6901D2C9D
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 02:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713060563; cv=none; b=O9emPeHagq39QJ7vKhU/5ptwEbz4cSzXnPyxusshFmB7482vRURbhBeCkcAWmDvo60wbdm/VpYW4iE+lJtIymK5qXI2MXMZ1Qv+Ch32Bu4mK3O2wITg2RZMw0bqOIlUK9VtJ3PiykDkA1SOrfcAfeg2G/3WQvEOBgubYliCqdd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713060563; c=relaxed/simple;
	bh=swN4gFE+Rq7OKZhGLItdpOd6dEFtadr1mGeHcWQNnkQ=;
	h=To:Subject:From:Message-Id:Date; b=lX5e1mQMcNtloSBkLnwSfWmTlGxJ0KfJH+DhYwpIOnqBHvmN3AAyBwFTP7p/MF8GtsXxNDUxQKrApDSSV+/lC5mLCyYgWsDghpD432NuCVBrKTceI1e3rF8FTre2Ex7tHWOVJehdH5nTjmSBFhigxJNC03RQuYZyRTnZoGlyJV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+JtrPPL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+JtrPPL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9952C113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 02:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713060562;
	bh=swN4gFE+Rq7OKZhGLItdpOd6dEFtadr1mGeHcWQNnkQ=;
	h=To:Subject:From:Date:From;
	b=H+JtrPPLqkdeutBgKb/2Zvv8wo1XheZ6whzrmopBTmiZdJJ3VNlHie5waF5l8s8Sp
	 1pLrBCxlkZJcYNbiX3mb2qTrdIokREsLFJDVkxAgZrazshtIolEEbNji/dr/FMekwN
	 VIY5sxCdiV8bwLQfMK7Qntq4g3K3z5u9X7FHKF1pPf6HnNrEWaceCZLUghG0aLSBA7
	 5ZRG7hNjphtIUVkroff6jBK355XvgCsO20EH0h9M7EhrRMLZzW4qkNhUvsaaCSbtTx
	 cmRn7TzA+P2VxZQ6Xd86eDDWpEl+qnavLKbyKJLEy7p9hKUxHW+fACjxr9fX9tK3tM
	 0RY8RdV86WO4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2EF4C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 02:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306056276.21580.11292030983933766571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038adf72708029a0f0601decc4899f37480e3d17942a88f04ed0a183670d2583
Date: Sun, 14 Apr 2024 02:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713060562
