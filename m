Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312F631B117
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757413194; cv=none; b=uD0+frPXh6BDHOhLONcNOYjyQnXxmQUScUZNqTxAkuU0OHayOXQt5VE4I6/10pgjWR6DI7sZUUbhbZPIbQ+qoSMySMUZpHaC0YayTvrqcRBu+M8KRvdyeph4T87bToYx4hjq9o/w268hAEOPeydDMSfx7ze+703Gp9ZSIQpaARw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757413194; c=relaxed/simple;
	bh=RCBH4fUb232fO3plsbulhttzYjEtG7d+0s4kFnQh/dg=;
	h=To:Subject:From:Message-Id:Date; b=qGWUG8iiIvZYwzxNbz/q3Xx0dvtji6H6ZwgbDDoRDlu+ULmAlcDjtyjJ5g69NFAwb5kE3YZh7mqKeO8+QCA6rshQWU3KGmH7V4IiKpEBxxPmkqkPP8cyHzfP8VNevkZnE6KX2wAMaFaufXk6MzgucPIdP+1yOX/GBZTI8ZY4GkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeT6ihbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeT6ihbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757413193;
	bh=RCBH4fUb232fO3plsbulhttzYjEtG7d+0s4kFnQh/dg=;
	h=To:Subject:From:Date:From;
	b=ZeT6ihbK34Gv1rv4q+caQOSbRyUx17FaffdzgcCJaTVDxYlZr9Fo1/237zmUW9BpQ
	 66I77Rup0LrlGbLGlcoGmBVg3NwuuXQCLr63N8iGkO19Pz+TbQ3zKfPymPceP7183U
	 iSf7YmxdribAlWdrA9xGDvLAaBHFfaS8awxAmcqt42wG0h994DWb/k1tjMQp4HeQ0k
	 rvkYu0I4olpNHklrdtPS0nFHgL5TJeLTtWlPNY1jiyDhXeBUi6vs1RY2qDhf1qmV3W
	 OoRSsx0cgWW/4R4Ew5tgvC/h4bzZ5HJ2Mo8WlXcQDgKBPorCGMS7nwwv+ZcKr6Nofo
	 yWTHV5mzqQSlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA5CAC587
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741319357.14845.8621896995893994367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03fedcedc42ed58d7118055fd4ba211a92955afed1cfbcbd4be49bae59f31acd
Date: Tue, 09 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757413193
