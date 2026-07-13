Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5533E37F8B3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783924114; cv=none; b=gFgXJhuA2ssvrVAdwSKktKQONwPuMn9XO3x0KpU92jkQLdIrPXfhcsLp5ivwSjjraR9adl0Uo3tCmIocV00CbMZo0lF3O2lORWKnL6VGStcRha/32qSZZ5+GwpkIgMBwqNHYtfsj2NhjRBT4/Sww0eDCDldydNGs0ldgnYLU180=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783924114; c=relaxed/simple;
	bh=ZgftwCvTIClX0a6gDVxleGilNCem0hfYiWtTgknL7l4=;
	h=To:Subject:From:Message-Id:Date; b=Bas8wypcxyfCHrznkS6HCWfAST6X4xxypHClGo5RU7S/CO/3VtTBZ1J2ohXIgLusAgmfYy+C0nfzT1rUgb+hiNMmtvQUH8RVZBtKfV0/Eq3ROGQpumYe+stut86nkbRBpbi5RomCL07/eqP0UYLVlVj0DovXU3VTg/N7xzSgUsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDgSCYkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDgSCYkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90FEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783924113;
	bh=ZgftwCvTIClX0a6gDVxleGilNCem0hfYiWtTgknL7l4=;
	h=To:Subject:From:Date:From;
	b=bDgSCYkdohgGc+iIccBF8bftrdQV0ubTHo+F5y1ytsZPwL7kSIH5efIOekwwOwk8w
	 ZqSSykRdYMzQO3v+8q8r9eCj/2vF6fNtEJGM+/0+Ju9JTYTCW2P9uebmvHeR5eguAA
	 AZpfPlt0XculAdliG8ty1pc3f9e9UdsEeO6l+xlrMDGZ4ltUjzr0M22wzuIja3pEIb
	 cCXZL8t0OL0/VMBtjlm5Vfe7G4SVvYt0yIT4K6G1JDyCNZfIif5K2b21bQRs/ok3wZ
	 apmwbemlo7HxsiNGHXPFckUjp6W/SBmxs32KbJGrc238yP7W5V0UxaptTpfU1BLWfs
	 WvGrLJbE+gLGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50F7C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392411373.28903.1570041531232437277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f42eb5bc1ce9aeacf167dec6f4c07243eb0af876b3a5342103cd326588c3a41
Date: Mon, 13 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783924113
