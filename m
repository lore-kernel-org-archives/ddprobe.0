Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CE244F552
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791792034; cv=none; b=TzyPfMRDbxMp2aXBynOr98RG1wXstf2uSbq/Vi2zLg1I8pNXvUmhLL4rNgQQU1QQ9i2+EQF1n0EG+XGSxU9FrzJhlGv4V7o71EjJ1ChH7wD1rmRYFE5zpDPEmxSJ8kzGDACv5127qnUov0N8N2J8H4eHwA8CUIS6+zpSRRY7Uh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791792034; c=relaxed/simple;
	bh=93yMCvE2kauNq/tkO0hiejyiajhm5+CdG2QDJbu+3yo=;
	h=To:Subject:From:Message-Id:Date; b=rZF0f73HGLYZe4Gokqv2lMWSAG1GQSsFZ9IB1Og4LZJ880j1LYiU/F2KPPDTkutcYshjb9nkCt1tRI4yzoNe1NFZOSGh5X49hY00B4xOGcsoboplfjY9qEXKG2wOO9EHg2gVORK3E78enpC8jaUzbSLrzXGedZTO2H691eLGlBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECwfBZu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECwfBZu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD44EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791792033;
	bh=93yMCvE2kauNq/tkO0hiejyiajhm5+CdG2QDJbu+3yo=;
	h=To:Subject:From:Date:From;
	b=ECwfBZu5lF+ZQ3jkcEtbfrrvGXujYPmpqIhXBktxJCg6yB8kHC/WFsR0qDO7hTGOb
	 Xkv+ZDC5ACfTBh6MDZBx7BRs8QXJtYVJP1HIhDWSyWsAnFuX7eo1Mx04YpwzZsbgee
	 kU83pubdDFn3M/U4DYd7StWWfAKozJuLYp6kXCuxpHU/ttauY4FKS//3WVs/nwlQGe
	 FyBEUA749aAll9/xB/OjOsLiimZ3Obz4kEgn2ISS9v8z8/A+sZxgelSNVfrVxIqWly
	 oZ8nw3cqK2em6aOr16zta7cmzBMCwqCBsKN2sq86+ZjVZZOc2XXjQJUm5XCeeRRQ+K
	 4t3SjygORak1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD09BCA9ED2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179203369.7133.13251245274055355402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0e31e2d9b1b860152f850bb9b3debd08c244d61e99f70035faf4b1b6be6fcd
Date: Mon, 12 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791792033
