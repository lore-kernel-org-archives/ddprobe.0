Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4452110F9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737175554; cv=none; b=h6EGQhH1PjWP3DabW04478m6fwKuOUFVYFDcvhVir8FjJ9POaElQ0pC4tu9+6DnultfZKbcxH8AHjerozhLwNyGdUrnsZNibYyn28oI+9H7gweqpec1lPf/2PGYmZc64mmmAjFBinQM/7ChjtW3S1Dgif1DQTEStZc2sXzoTsUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737175554; c=relaxed/simple;
	bh=idICI8qCpgZRxJfOkPcMctXyyg+c9vDxcIyqKvAQG3w=;
	h=To:Subject:From:Message-Id:Date; b=Pj/X/7FnOD0KFG62MMlkcdseNF5LzVSen69WsZNWer6B90aXi3mSMl+TTkJzJK0LsRhCBLfwSdV9h1p0t/w5nAKOm+Yk5Yz/sp/Qt9VKTnBqoKP8lCPXOmdrBtQyAjMhRsdLBtnKIBsCZogzY0hokS0inQ7iwo+DHWG3W54+E40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXXOgHwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXXOgHwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B004BC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737175553;
	bh=idICI8qCpgZRxJfOkPcMctXyyg+c9vDxcIyqKvAQG3w=;
	h=To:Subject:From:Date:From;
	b=AXXOgHwh7gZdXIP5aNkeyVv2JE/XOoatzbGi2CEAREYexOR9/ZEa1P5v//WRxTfbl
	 xLCB4yeGzBcEnAVIFUKZglwgyAXe8t0VavhZTmL79yKF7OIt69kPmZiP4eDyG5DHS2
	 L/9UjNZnqGE1HIf2GhSQ1sglXjd/NnaZNry36tFxJ0efKvjGchcyzOwb4MM/jyhlTR
	 5N0Ue96TrkJgEmqcEy0sB7E30+FaSb+Zlj3sr3Zjg1JBYbl0UTHJeawMepKdR+N+1N
	 4XcUZlBjJEhkT4HlKHP5bR+6UJ3ivdhOPbhjKgWLBbGhz/K7zaFAwxNfdYnuOrYrOI
	 jRdWNXtrCNfvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95141C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717555357.1092.283937026639329720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc61d5db91015ffbce9288abaf1987c384596441f984a82d754f54797a2d302f
Date: Sat, 18 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737175553
