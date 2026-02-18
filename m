Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33C6346FA2
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771440294; cv=none; b=FvQxyKj77ZQcCg0/XH/GEfbWupB12bk4WkQPt6YZcv7SW/MhJPxUr+Y0ug5vcMWJBwAwH9p7kKmhvBbKujEcuNIr1nTFPqG/D6NT6CKbmum5kr6e4AvYToFXjgLQeFY6ZQfs7X3xUwbiu2XSNG9t67yBIFm9BINYjPME9cgHXEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771440294; c=relaxed/simple;
	bh=oh9bDQdsrVbpWkca6G8HEe6ZuOAGNkkj4LUh7fBL930=;
	h=To:Subject:From:Message-Id:Date; b=Wv3Ljidh1Kiy6eVJzYxQ9szG2JYfNl+Vm2C2uOcI7Ea5dy03LPbOEo7ewjszRb5wchN0HAqOEFSyY3KuwEjQW0Zp5qzy7W+L7uQ1EbXujFSP8shbYTZt2GbpU52kzmaXSGTrAyTIjHFkz7hag5gJ6VJwFDTFOIsGnL9eO7QSYDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG6PhDTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG6PhDTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FABC2BCB1
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771440293;
	bh=oh9bDQdsrVbpWkca6G8HEe6ZuOAGNkkj4LUh7fBL930=;
	h=To:Subject:From:Date:From;
	b=QG6PhDTWMBt67J1KVRcSIOXdA6XpIdfo49AxUOvUuXmMxRRnjHRpKq7j5xWK7IjYK
	 0n75BLf+4+zqAZWYsifcxQ2K/BYrinLmVuN3ppEKmIU2KbAjEBOXYLn0f/UdR0H+uT
	 w3LRPCwIehwlJl6LN8QOfOQp48qFwAol1kS2XHsfROTKdnFeXe2CXrovFC0skHMV2/
	 9Rvr7uCKvJuJvvLAnm/S19vZYzQRpcZ3S06XAzvawuAIS58GXBQ5p+zAIsZYahmb+a
	 iUQjQO7mWMexDuEDilSvaud0vEvpqh/OcKMyWjystaeJWAXn9Q4ayfJ9WlWiXS2VsU
	 Fbf+rAgsH9vEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C9E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144029359.13972.16527016603977889430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1286419a37668cd62e9a9de1a7743d0653b2f6db1f2a0e6d2c7a295e2de3be47
Date: Wed, 18 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771440293
