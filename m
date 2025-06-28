Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F69921FF5F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751096994; cv=none; b=TX/rcs3s6babaIocVOiLzUxFeAVSyBVm/rOQ+D7RNQHv6qw11iuaJaw50UiFxczNgQ0fdqc94PMT8hys3afXedHyVXcQ6DuW1DGLVnqhhoYmkz88jUSV+Zy2Wz1dDtR9SJ6fX5ghdfTvZDQ6/ZyN99F39uPy2PZUJg3D62ObXdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751096994; c=relaxed/simple;
	bh=yIM6lbEyrJ3Hs3YTWDDqn2ghCeMfa5szP7/5eMDZdhw=;
	h=To:Subject:From:Message-Id:Date; b=V4MD9xWPZl0KYnzpWxW1i/2JLXjEgO3RCyZ97rRYjSHEq9mA9m45Oc6SFHPSOD7qDz3p+T7r0VbrAYYFaMFtx6gt8/v9hSozjR3J442gcFIGCMWT1nwkqyOQS5glb2UeDwlXqRwUx6ajALX+qWtYZ6tVzWa7Z1VEHF61n5xZ0s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvFDBn/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvFDBn/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7060C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751096993;
	bh=yIM6lbEyrJ3Hs3YTWDDqn2ghCeMfa5szP7/5eMDZdhw=;
	h=To:Subject:From:Date:From;
	b=nvFDBn/Yp+5JJYFqWbZjlWCnBThPEcYc+1z649+DE+2CwdmqzBUS4hH0nJEFo/gTT
	 cNKYN8ze6gE5OhESTo5Uy/yPf3kFJpGe8gqtvKxbpLVVRgWDNhLfzsvXqpqtwl5RVx
	 5eyp0mxUEA4vQlS7vabpHVS5PWfBmLSG4EORM/qU3Jhrb7ISgfboH69R8dxONYyG1j
	 vAUINJypF6Ws+NnAKFJSTnSYNsoxJ9zfkd7Q8vTWp55IFX6GID71RPPuuck4ItIV1v
	 fE1uCb457/fv9Iboq6AsKipyf3MEihOo4pQoXus5plJOSwZ535OdpHoy59+zXafGHm
	 +C2kSFNnBX1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96030C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109699358.13421.11735816154637614281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eaeefd98a7c3254056c37e7420dd62a6f161096a2205ad8eb85840af1e7f87f
Date: Sat, 28 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751096993
