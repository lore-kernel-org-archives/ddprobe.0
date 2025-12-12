Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A413B8D47
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765538574; cv=none; b=XYLwUSp8ZI/hqghehPRdbSChLUrEEfAkFJ9GsFZVcF2eO55JqaXt7RJlneL+mBZ9LQ8BDLDiNW+sILhvDDmEdLBziOcbhaa02s9rsb6CfnI7tiT3pLN0xh1AIzaPmmH3Dh/J3P+vCxxqM26nINO9+qEUg0O+pMzyrjhZC6S7TxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765538574; c=relaxed/simple;
	bh=OajDqa2TAYGQqlcK/u39ZcspAcXpn2AlS1kBZjNTw34=;
	h=To:Subject:From:Message-Id:Date; b=XxDRPTXoO9k1JjCTsj7BLnl5gn6kTRAIh3bXuK5t9Sipf1YEKOlvReDEPtW0rp6zKlpt1Jr9e9z1OMc25rMthCm+2cWzEl2GRqUevrR5cT6UVUohNeH8/j88M3BmhLddAYMkGJnizGWwp7WnbBQ0We7ZgTDQL+xZvjYnmzkGoXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGYIVE2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGYIVE2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A071FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765538573;
	bh=OajDqa2TAYGQqlcK/u39ZcspAcXpn2AlS1kBZjNTw34=;
	h=To:Subject:From:Date:From;
	b=aGYIVE2LNKg5xpKtbhpLloI+uTp1sf+cspBqhkypaS/uERguvFGJP6tfBQ6KHSLHl
	 F9SILBaV3PxtHiBcPGNi30x6bzcItZOgojEqYUCRgpuqkIAKSMZyG+1eNA42da46QW
	 W8zNk3BUn/lmE+ei3XFQPSVWLp1t6Ej38tnpqA+UdJ8YQqKHyo6/jyPX7OIeMjRgHN
	 XlWXWBEGE+F9j4pYFNq6SER+pNogVVrRoZcYm+osONs1Z6epsxmrB9txYEPojCo45R
	 emurFUkulukaHgcMTiomeDkSxdOuTxGv5+T+tondMSWqbr7bagC7WQcMH+9En39C9y
	 4u932WeTiwQqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2CD4417D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553857358.612.10322100726682405402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b56a89e56c4aefc6ad642d3ff36b2f1721ed19d27938b2f735aee84a312622
Date: Fri, 12 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765538573
