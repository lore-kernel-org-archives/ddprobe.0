Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1254D4A01
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724375154; cv=none; b=r+TeoQpbHDZSDQBwnOMhsxX+Cgy9Zo80c2UPZZIYou3fdYaQIFITLpGznWg06V56I3oIGXqw/z+a1b+mv2wxmG7RaAQpqNk86si2RyZL2xWlUHDe9+nbcNTWwWsiOK20fYEiUtV8q7UVGZDfwJRvVWN1z1E8gznytWYyPh2ysj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724375154; c=relaxed/simple;
	bh=z96kBoys6LCYcvQcMFp1GZRjh0GPWbUmKq7R4MVPnIY=;
	h=To:Subject:From:Message-Id:Date; b=c5Z49WgS7pG5GP7JjkNxGTntjXBENccfUcmvdyuLvKkhKZKWJ0ddJPJ+3SLPHP5O/9EJ2f3dVcD7AyVIlkNb4d1nUDirLTVD3L7sUZX+dawVNFouGVoGAHJ/wtraYPT359Iglf0X9sB+9mEYvnmQT3dz+4sLJVXEOe2PLnXVGTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5fRY5rU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5fRY5rU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4248C32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724375153;
	bh=z96kBoys6LCYcvQcMFp1GZRjh0GPWbUmKq7R4MVPnIY=;
	h=To:Subject:From:Date:From;
	b=t5fRY5rU8kqrDiInhbnXY/L0RVaCM1ARGyGGx6n+nQJDhdIbg/RhHXjrmvE7zYhT9
	 4gqbtzYfsaC+LmXV5kwlMRePzFu/SHt3jmYAiw8M/lJ/nUN7d6XUqmQlBQ8rF2QE9z
	 mPIfcjNOyRjNQpFH85V8ItMTkzTUNn50Bc7ryxVvewWhiE/AzGgLt4hqJH9M1BUYTP
	 63L8guvQODVqj9h4iDMQcykcS1OjRvXVCbe/v17iyqGrrE5sO6EPuGIo1qBERdQtU8
	 csdo/PGVnTtk83Z7JHc3Z57KhUG7C5guFMQn+dKfymltJNCo7LFtqIds94aZb38zLv
	 lIjyGupGDKa9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9131FC5320E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437515358.9423.13856399552809302614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ce83bb4b11f6f29e54216f86d52cee1023fe335cce6e2b05b83196a40b439b
Date: Fri, 23 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724375153
