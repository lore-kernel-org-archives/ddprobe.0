Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B871A3166
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756367394; cv=none; b=k1G2XMnbWLiMC/1tAv4o+aswgcxjGSCgQ2AKlEiodZc/8E4lBI/Muc0NSgGOWb7g9f78ZOZg3IqHSZmTcQAni4i0i5wfbXQiDMbS2tHro4K7hMN3TZ6ksv98cgS4kO4lTmdM70tcDXjO7QJ+fZGiOQLy3oIGEFg2p4msDMa0ZoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756367394; c=relaxed/simple;
	bh=9TqU9UgpM2Sgk2g3XSZQ6q2uwPL2iSQZmqT31k7xdNM=;
	h=To:Subject:From:Message-Id:Date; b=ZNuGOelMH4q99bqPpmm29vfJUtxudqCyH2EoHYLuRo0CcwRXesOPz2UdJ/1y5OdlEC2xZA1DBFqyifw66S5JrHMSRb3l6AXytVsK3Om0XGpb95s/uxv/cUutfYMkPqXCbhhpjUoiu9M2PhAi8gSAWXw+fpW6POmHVQhP9oQ+AQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMcz92io; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMcz92io"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48D3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756367393;
	bh=9TqU9UgpM2Sgk2g3XSZQ6q2uwPL2iSQZmqT31k7xdNM=;
	h=To:Subject:From:Date:From;
	b=TMcz92iosLmbMKmS1PTEyrMUpabF85rryeKfIFd9Ns7NuozxtvLU+z9NcKQ1dRlTx
	 LcHEUY3goanEPj9DqGNT8yCjuY7aJU0/qoqfMpLn3wggkOC0KzqNFmWY3ro0WXxbYE
	 mPaPEBERZfGkIa5mkrXNyPheSudNSVnh6J2UH88a3gI+w9Tr0d9W7KWBzT4UU37p7j
	 42WUKLzCebXnDG1mD1+7/cROgchwDzu+pRldSYgfYPgV216//ZKCHQRGi4B6M6Nx9U
	 ZvOXvRl/yyostvEJAaOhxNNFbcnSAe/2g/o7Hj7odfECjdGKEWzsrgluwZ4Oh4AZgC
	 /Ft4wBHEwm4tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E418CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636739357.10064.1385472519943340617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea4f721c4f54064b2ce45ddb4b70eaaa71ec75e24d7ade0ee4cd364bd6dc5e4
Date: Thu, 28 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756367393
