Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1DA17107C
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714482143; cv=none; b=lgkcKDqB8RAti93bW7vVLMh4XOPr1yuLRwM5hgv4GHGFysiGFS2jU0xIaNXICJ2gXyd5ZTer/LgzPPysD4LwQBA3om04q3pEK8QYy4gST9YcUj6ntl/s/pYIKtqWGsrNIn6gczLddDxDwr7WkzpaG3Jv6yLYw+k+A2j16isfet0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714482143; c=relaxed/simple;
	bh=l7p1WVzvBxD4efH6h/sMdfk6FFxm9fWAxPCkXjzjPlU=;
	h=To:Subject:From:Message-Id:Date; b=fK4OS0UYKzIY/lAxBb9Yts3wt6lYiCTkSHtlXRqz9w+u6g60aYJjPToVV0O9Wd+OipEuccXEMT+2+aBqe2dM1hzjFFK6OSFqVKR73pAl+qVsz4BQIFMMFq5OlatIfydwPWRspMDl0FI7LBS/LZZawrrH70ran53F9D18PAnNgjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojcpuptr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojcpuptr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88FCC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714482142;
	bh=l7p1WVzvBxD4efH6h/sMdfk6FFxm9fWAxPCkXjzjPlU=;
	h=To:Subject:From:Date:From;
	b=ojcpuptrE1c2j0UsD5G9QudeDbpgoRI2zO88djO9LyTQaSCb7yxrnwNFJmwtLQIOn
	 jkzuxFUcJYe7h8oq3oTN3WArbKj0rqMSbn6MoyHYUVtXRuV1nrC3Ngo17AVeuEUZjx
	 Er3IdZG00W02BbTtuYMoJp7YjhavAYVk9R3bRoFRiMc6sHitQ17oj3M8PMTeuln78I
	 zFN0XWYDYpIT/KYIPl/P0h9u1o2fxhjaKr4Nxvnil4p1N2L78amVxugzxxlTYgKiO6
	 OTSXcQUg7laEVrHw8JneS1Oyzhdid4Rv5Sv8CT8p+sQ0nfFB83VYg0z6lWweKIIzgK
	 6zs1P0h0hewXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A31C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171448214275.2234.11031107821077807726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7d2d3e57a61fabc4b645937c8eadd2342eab661d0992ab62239c531963fb1e
Date: Tue, 30 Apr 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714482142
