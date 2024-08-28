Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F63B67A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724835954; cv=none; b=BVfdNSCifE9oCmOINPzzwFnXScFWRKs+hDbnQJvxpi1I7gJe6vbhl/Cu7Cg80xsB8JJu09US585kNyCA2um0ZvenO0LK9dwxwTloZq+8dSXqHDnOhvJWR1EhJ7C9hiia4GdjfNJ/5/mk0m0z7aQAhihngAxnZ6UajIoGNGAzsQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724835954; c=relaxed/simple;
	bh=rVDbx4DBXrbxhLgyjrSROdCI4eLzsoh5lJibvbnp+/M=;
	h=To:Subject:From:Message-Id:Date; b=rv1eQGnFj+yGlt0aNsbwegFvMouMmOyjvJx5yAy4QEzDTDBnW1e9d57USLNToOnYkT7+Nzb4sgUF0w4GFvZlkRfR2crcakFRs5ANXjx8+P5CNTSiE09dpjpr8D5ODupnUxM2kCIpk8OuA8z95RW6ztsoF4JD0rNIPxq9W5yW4TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK+4XEGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK+4XEGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7653C4AF51
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724835953;
	bh=rVDbx4DBXrbxhLgyjrSROdCI4eLzsoh5lJibvbnp+/M=;
	h=To:Subject:From:Date:From;
	b=GK+4XEGIiwFY0xvIIAlg7D9NloqLwe1rE0nDSqrpsJAgYbc1vDebk7jQIWHyTFOvb
	 5cvE3l6b52SRXNvu4WHah5kRNWIA+wlvlskGSxxq2bR+LF2v+0NKtSRWgQV5mMU7ry
	 FS6D1MhfUYKUZ3ywmjW60rUUQxnHYe9zi1nBPA2k9d69U5HIufs/bBPwePHTYMH1io
	 GCNVlzCsUDPT7otOsDW3RtQ89JtjtZhQzaj2Buf3MkFghzvhMZYsK2eKDN0LHshSvM
	 2O7NjXi9W/Ft4NSyMrLHlltzhU7Ra4ndW2+BExCFCw9q9s9VXhuFl9aSkfMgY4NgvV
	 izCCaDfkA4Sww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96978C54755
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483595360.1320.16506038480722252909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c93c50cc3bf9d7a8a7bb01b8f7711bdda3306e5c1f880384faa0a6da17bfda
Date: Wed, 28 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724835953
