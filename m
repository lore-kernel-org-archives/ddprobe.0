Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFCC145B18
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750370394; cv=none; b=ioRnYmpo4i7XXU5lnx6fHbiYDhznNlRhl9ca/hLhkIs7yn8tno0eUwItohdaMTe4iGMUYeR14sgH11nfmDF+RFpMlEk1QoqBoC4iRnuQZcflZvlkCZNJfS4tssYW185YW2p3Lq8AOVgOtItEIUwrvILfkiLvvQH/4t9i0MymWEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750370394; c=relaxed/simple;
	bh=aema0UOr29lCDHb/ra7xsQR7b9FMCiZfHeb90WqqMMA=;
	h=To:Subject:From:Message-Id:Date; b=sz4EhuEWH0OIYTcCd4q0VlzmvfPg2xmwIQjzX4lhykL5aIFJGKp68QI1CTvKWrO3Hqs8BGjtENQHaQXlNTXTjKgYF2WyJv6aAt3e6gKCHWGkVQzTs1F5mUzqhlUI5qESUgeXA4Lq2HN0r1kesu2dDVqNx+w078t2F4TBoPEa68U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+5uYRHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+5uYRHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37A5C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750370393;
	bh=aema0UOr29lCDHb/ra7xsQR7b9FMCiZfHeb90WqqMMA=;
	h=To:Subject:From:Date:From;
	b=S+5uYRHCQ9gRbA2SPvgQgUHkw91RjUZY9ybiZMHb6FqDmN6bMG9IUAAABm9jYg3Qx
	 z3uTovek7twSArAp2O7vZv6bwX7daIOxpUhG9hrBwnb2LGDhQPsOzSQrlx1Ua3O7Fi
	 3htIrR5YucZqrSbDYIYTNEulMLAK+dEVOWUUAVbre+ZJh8kQFkbtcxYtymjMROY1RH
	 jaraXm02CRdYZgx6CXJtTA5HB7JZcTfBQHCyvfvzTo2YhCNXXkITE4n50pbr3L1y0h
	 rHLdBcPZQ1mPmb6RIBShNW0Zq98PBsizRS/0/mU7yujFstCk13nD6BtZje/6MG9O8W
	 AUmnY3DovxLzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B89C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037039358.7978.18113965216006861225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b84c461f455d1b4bbb5e73bf91db21bea148b522b9b4b61be66dceb6879e44
Date: Thu, 19 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750370393
