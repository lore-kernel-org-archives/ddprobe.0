Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06AF17A317
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744728593; cv=none; b=gyqtqhgxbHBHiT+qY/PM43IBASbdcYZ5DqcphG0EwxrsrEkLFGRKY/xQ71qVWpktJsQSqJAwmJS+qLAvz4JeOlJ0ZOkj/etKD8xiUv9YYivc4Z1cIfVQ8QLXQThNbSZ+M72QkdRiiD91OmjdaP5p8s0PZc5oLJ3IcX7NU6BTG6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744728593; c=relaxed/simple;
	bh=pkimi/+faBqCDCL0Xtg0+tvmfmn0XUnNzAjo6xd09I0=;
	h=To:Subject:From:Message-Id:Date; b=NmdS+i/vPwnqqCNLi8LnxtqkBq7UzcvP+LK+Aq/evj25PUtNoVn46aneJt5U6V1a6a+XN0UdGBXDO+iciuGRPb6sSWkLmdUYC0z1kN+oJwCUzKruP6XQBH7rBQ/E8RzExfRswB1Fi/IyohvN4oJlGKgXvXGyffEc56Cjv82+Fyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mm6tzAa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mm6tzAa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0366C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744728593;
	bh=pkimi/+faBqCDCL0Xtg0+tvmfmn0XUnNzAjo6xd09I0=;
	h=To:Subject:From:Date:From;
	b=mm6tzAa6vmUxSZ5ITNZB2MDe/pMhQ7uKGpoFk3xaAwD0z6vlJRVP3Ug4FcI/xL1ms
	 WReVvsCudTS3tSHRGoEoTP9Yw6Sbfyy3dE6OywI7yrbFDLdE+3cqMqqYL1gIaGnf80
	 xi7ap5Rhe1MTCmMpHV358dQ8lK/CwIQvSpTl9GXS0632Ja7iaEMo7Xe5Sh+J4gAyQc
	 +iEUdQmJQhJFdG9kdLpz8I12D85+nhbuLA0SgjCCaw2K/gnfv+JGMZPfo/LWe2+AOs
	 UVeoU7nl5JNwV+lTdvQ2ep4L3jnvrfSR96tWW0HA+fqiFCvN1iIS/fPmKo89KwwIzd
	 pO6c9xn5YycMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF8C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472859360.26987.12160591591710105053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedbbf373f81589a21f8565d13c073693c1868a27c001407b84b052b9827f8fe
Date: Tue, 15 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744728593
