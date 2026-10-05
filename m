Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658A554706B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791163234; cv=none; b=KIQ+ccOhzcWvRMdhMZi/yA//oEnaQbuSwxFeJbzlebSxUU/AuG71xyr9ninJgOsFCG2bwxgORIyuyKC0MAcphtog8iefSFh+GVntvhEoroiYgFKW0+5sTeKE/07OmaGpgsDU3QEFgU4TxJcvR4mqgJir3apy/SX2IoiawLU679c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791163234; c=relaxed/simple;
	bh=17haAOY2VDieYLQFuohHDHAifzU4PJ4/5TBPZFTDns0=;
	h=To:Subject:From:Message-Id:Date; b=DAoUEQYsnWOAfvrTQeUEQwoYcJayt12XVWZSSRQAAYmKakOXlytdUCUBBNbBrtJLxwfdZiCBVwaWVO9RsiJi2l7d35V7GXSXc3njZ2MoIJmYNqK7yyJKV1HHk2LoUY1MCIAIi08/sycVXTKHyPghiaX7/5n3Aa4oLCErURIR4n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVmpEqW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVmpEqW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DB2C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791163233;
	bh=17haAOY2VDieYLQFuohHDHAifzU4PJ4/5TBPZFTDns0=;
	h=To:Subject:From:Date:From;
	b=MVmpEqW/2wTohV1fTPz7PXNda7NlPnZOmCJ7jbnbxUmqRHYx2jOeHUq02z/yDuM/n
	 UH40uJTvI5UrT821WJpzklpsSFyAqB9CU2/yx07WyJnlK/pwS9/NEX+j4XyOcUDZn6
	 6WWlaYPABPSFwo1mI/P0R97+ZSCCjc+lgWehfceCNbOMrGua1htPJOBZCHMYKSyW+L
	 5bGj0QQcVB4Ankh08cKajwtbwBRasjpGH+GD5Ghr16gsxYJuX+mqYFAeTTanIQ/paO
	 EjZCIRxeNfGWmi3nHI82ba4xPuMC1sfGW/7/1eNjRWs/pozBYO9TJnPMBAOI1jjs8c
	 sDxlJv92+74ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1CACA5FF1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116323369.1110.4312681821683788277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21690658b24022f3ee43810bde3201b72c90de937b9cd2f04885a018b972101
Date: Mon, 05 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791163233
