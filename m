Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0784C2D061B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769838834; cv=none; b=hdhWgVaP7P1HnAAqwjmwCWMgpPMwvLqWxaoLh7jYmHZOHH0AybB6ywc0ohEMrzeGZsiYhXn0AzzDCrrnUbsZmwlJJyio1lpSgnb/ww1Rctm9/Ts3uylVowD/PXg+OrLNVYOvAPV2jwH1Tln4RD0oTeBUmwYvSzk6pbwzIrN+3OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769838834; c=relaxed/simple;
	bh=7TVY9eiCzvksZW1R3X6xqflTQLa9CEu+bsqG28wQ09A=;
	h=To:Subject:From:Message-Id:Date; b=Vr+thGevzp3M8bsodq46moY07JugzGPfwIrTrOcGNgZ6dM5fE45sTH37EArZs5jk6uehludIq4NWJaS19aTjhnh1wPgpOkLBT7cG8o5cSdsRUPi3S10JerE2fd68z+lSz1sXktYByjfVzJIW3DPSYrCYTPeFifp0DiUQlDeBx34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsuBS0fw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsuBS0fw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D65C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769838833;
	bh=7TVY9eiCzvksZW1R3X6xqflTQLa9CEu+bsqG28wQ09A=;
	h=To:Subject:From:Date:From;
	b=CsuBS0fwtGFnwpn2AOTUkDLqaBmDkURij9Q3tbvAq+xDZGrZJRSPdd3rOsb+pBkNK
	 nErVodfCyYI/B7RVhvA3N3qaTBmronuS/WO4u0caCqFjPK49Srh8y+VfrDvSF84yfM
	 oqjQ67KPTdKSCxcpfOHnS4p8pb1aBgXZpr22Fpj033wCV9oYp07F04CWHfXJ0v6cZ9
	 PH8ssppwXoSXUVa3TiUjm3/yI+BQD9ruH/lQy3aZekmCZMbdx1r9drFy4LMh0jKtHy
	 raRt5uNpcdYL2SKHah9axVLrMoVczyz9Lhr8DeH4hYuIOD168w0cCQbYSxmH4VtCkG
	 rLCB+1AdzRO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33FD79742
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983883357.13507.1417778596387400939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54c10f483401716b44dcb957630f961a114bbf640b1cd0f1e13a1b0f5a4ee63
Date: Sat, 31 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769838833
