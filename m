Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D7E1EEE6
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744085394; cv=none; b=l2jMgXwpFJcxuWFcKi6QHHPmAMYgIc9OnsG2kRaTiegAq2JzOknQnhnwTvMnC4zDW98wEIzTdjiFS9u9H2n5F51WlaZ96/0VY7KQk42mARlTSz1I7PDcbs1NFfqep/EmI48I4kSRhzA2f0NbT7rlYhdjxPgLb+q+sTTIjLsmMMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744085394; c=relaxed/simple;
	bh=d6jf049IGlrZd5t6mhBIWs0TGNNKezqa07Jpo+feV7w=;
	h=To:Subject:From:Message-Id:Date; b=edDKp03dQrnS2M6HCWNjSt+1psQQIl0h5+q+haUEe7d59VJBczHNG+9unDK1o3MCRnTkoCTEY2FVntESsu07/O3KkybPLmqZ1PJ5xKY7N+xbttqqJFbIliqS1wcwwi4DeuU3bDv40kQM/HRq4ob5Jtvdk74XCTc+8pu4utMiBB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYBjW22H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYBjW22H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AA4C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744085393;
	bh=d6jf049IGlrZd5t6mhBIWs0TGNNKezqa07Jpo+feV7w=;
	h=To:Subject:From:Date:From;
	b=YYBjW22Hu9Gx9+QDucFMeSkwVcBkego33NuMs/6neCOCNfe/wmO0yxdmVzqUqGY/J
	 X0NfWeP+VVV0PyxzbtXNfIHtt3zARJCmGUjoL48uQiW1aSBTQuO1OIzIlbWr5FgWfT
	 krEGnmIMFkd5nNJgkn2MpewMkc4tKjEYgchu48Qv3u0zhsBCEsci5NvZhJ2Cww0IoJ
	 UexYdGVNfxhB/5Pm1G6Ze4PO3uzgavivBhzcukgFhfmNXnnQyTzGF3XTwhuq1009Qb
	 TAh6QOTaxFEcPOAXnWT3rRlhOtJCzSip8xChXijjjvt/V3/fUU3Y15Drveh26GYTgV
	 /k0ZqxXSmCfww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99328C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408539361.28342.16458636986947428602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e28f06d1bf47872d50025d534ce51b3ec578e3b390758b07d9ec20458d19aa
Date: Tue, 08 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744085393
