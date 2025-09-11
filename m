Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CB82DC76B
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757617194; cv=none; b=mcI30P5YajAjX7wnE5YRx3sjW+zKqnAyUtIL6SnIH2CkAvahiwVC7ST/uw7JxXoRpLyPD8ePcDlXJRCVB7PqqGsyI3mcVJ3Mz0UMU8wovf0UiFajtJ76NYOB2aLjkAxVO4i7hjLFO7Pa/7aHBWcZ/6fssi/qCPdsqIm0aPFunog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757617194; c=relaxed/simple;
	bh=ApLKX/5qHD+IEdSYefjuZcSf6Rv/fluZN1IAW0xy4xc=;
	h=To:Subject:From:Message-Id:Date; b=b8R5PQ61qL5AWVfEfJnWau8iNcNiR8vxlZjMJvbZKHRo5tnzDC0kWuKQaba8r0T3zXiAFOi+aSCiaAzcuOUUlRyjk8VxjzwuBGEXHNNxSe9q3Tj2lDQnlSHswweX78P1NYlhg+8L9eLAS+jHSZ1Vq2RC4cz8HWRsK9VId2Y+Nos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ail2NFHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ail2NFHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3751C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757617193;
	bh=ApLKX/5qHD+IEdSYefjuZcSf6Rv/fluZN1IAW0xy4xc=;
	h=To:Subject:From:Date:From;
	b=ail2NFHdw7jKb0bbQYqNndN44ngPzyVUykfB/XiIS+it8tB0xJO1TlW3+G8Qgyzd6
	 AwqVPnlgr7HVAoyYAK9P2HQgkdGi0j+aTUwA0Oi1tsFdRhnmIQbu5p3qCOT7t24RaR
	 WuEWfBRPC408sn4eDA3H5lb4GNYxLC7ZHhpYyOXzSIJJdXr/X2u87M96zGd9F1LAhZ
	 QS7ytN3aRelzA5MaApPA5KL/uuUmocUXAZjU73h+78dCEotAmQganaTP3j4X0b9c3L
	 sQqbNeENvm73PpehXK6abfkvLrQG4Hi+85ZPiecGvA0owR4DU11NeD0o0kzS0LMAPi
	 Wg9PjJ8gNf/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B1CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761719357.30310.2931118587792485431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6064672ca27112c5fdaa9751ebd43b3141daad050951f008a0600e50e1716ae8
Date: Thu, 11 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757617193
