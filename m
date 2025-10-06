Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359E01519A6
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759727994; cv=none; b=HsPn+nmfieFbb0WAa0zuNc8+ixwI3LglY8Ce8Kof3Sr74h234v7WREVQHwuY5DDGOpPYtBkFcVU1Z7eETpQZQPBHiQqu4hH59pwFv0W5pq6R7hKc4wfoOn38CdAacTWwXhMij0zyNCII7XJgL7jejIwYlqcRGwEJwXluBW60Wkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759727994; c=relaxed/simple;
	bh=cJmZN9HRGtqDBI13gD4roa32JVcZFd/XhdeQagqqgKo=;
	h=To:Subject:From:Message-Id:Date; b=naz9gW9EWAI268B8LsySSYVnIA5qd53dEOUdpjPwh4CZrKQfUrZiJ/cszGN9Wl3zStXaI7Sk8uo3MTeDGyB0oBRCvB1crqMHyiKdwSGjLhQe99nxq+6NRc9yN8UBJdOzSqBt6FTReDmSPPaUZ8bXkMjvvviuHEykr4g7U0oo1yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ket6KVCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ket6KVCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B3CC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759727993;
	bh=cJmZN9HRGtqDBI13gD4roa32JVcZFd/XhdeQagqqgKo=;
	h=To:Subject:From:Date:From;
	b=ket6KVCPIbWwU68FB1W1JwS3do4pr5Lw2qFlcwywtgxEI9Ts7qml48pswSCdYpcxn
	 wByhgiKpIQzTMUlWv/jrzTj1fgUusnYEx/hS2RIVCsk5aRbkDxgG0Tmd8HVQVOA0oN
	 xhUBM6MejhMRsM+jlbj14m3F9IfHJlJ+8aS7A41uylfc8jXVZMFhi9G4WA1SV5qQHi
	 crzUYwZArQgDZl/O2DZdj/xoVQ/DfG4VEY7tigUKH4euUKGw+OPum8TiSjLBVoYTZi
	 4RK8WEEAJa8uCjEjBrN11C6HRTAOiMLYLBZFoVW3ajvWQcFrQ8jmNrn44ZY7dEs2CL
	 VELiROgWN0LJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593FCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972799357.23032.11337553393819290267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f47aca7428c13edd485e8617af6c761c8c26982b5cd4f49b13238990de81121
Date: Mon, 06 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759727993
