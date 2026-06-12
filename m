Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6243793A9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781243794; cv=none; b=fn1hbOTXfk+5QQmWN3DhRQD1xepK8zREd26UGpcQKL3b33rjKCTzTqk5Tlbpc7p6ltMJ7Rw7b9GaWd0e4KRjhUgHZl8f8T0NJBOK1RpviUjR8EetjArJDFU6cHtL/V1DElfV9bNyES055PEVQJiyXmMdPYsPM2xHrF0y0o8/EZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781243794; c=relaxed/simple;
	bh=07Wg8wgm+OeMgxSWKccQvnBA0RlZ0SFqFL5kX/Ghuuo=;
	h=To:Subject:From:Message-Id:Date; b=YKD2AxEeDc1LcjBrLaauurnpULUMC6RLOyDitAzquYDXpVMyIZ6amjplXimjCUhjXC8rBfTwQBFQujuD4amxv2kRU2N1B5MPhAgDLIBnl8wFPOGirZp1wUMGK+IkzPVUFavvPbcKr0cqhzumvgMS+P8Gw1SEz9Xha8w8BxYYG0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwflTGkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwflTGkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02CAC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781243793;
	bh=07Wg8wgm+OeMgxSWKccQvnBA0RlZ0SFqFL5kX/Ghuuo=;
	h=To:Subject:From:Date:From;
	b=AwflTGkIfUmMyTkdo3KQOErdixgbB3rjhI3sUxHJAK3FcBQnM5OwEsFaJlep2bBLf
	 5v9pxwkqbvefeXkiWdX/kVrYhxf/9ZzV6nSJPhtN6j6Eh7bWmaJRmoByPWNcsPQIyv
	 Hj3AT/2Q2WmiSZlh5iNX+90clznrS/ixcBBkBqCF5binvADXjuQQKZGT4N4FiZmHy3
	 RIhDEzJyXbWCLYTPq+YBup83buVL03C1NvP9WdaAFZwMVeNofQMPrmeEeKCNAbXCYL
	 ewmXlXKvb9UbyB2/ZegopxaZgcAyYqLwqPp16F9ph0bDzJzhlgO8Vt2a9YMS1PTmXg
	 dszeO/PaI1UaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA082CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124379368.17212.6742369215267004689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2656afd62525cff37e0d108487bafe33a6b0c0bbf51806d9cb5d1bfd0c4526
Date: Fri, 12 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781243793
