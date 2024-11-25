Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E058827
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732521954; cv=none; b=hS50UggMDxGJFn9L6B37kG5/4WQdM9xBJAIzc1zlZ25q66X8L9H01K+xE3eenU8e1zRYFq8A2dTdA+n311xe2I/occ9EJ0x6yCGouNW7hyUDXV0QkEcWv998t5uAIIetw00AIeCJOEzHUNkvSJadC5KEOeECWNjh2faXhIAoytU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732521954; c=relaxed/simple;
	bh=4Moyeo3qb8MTb3jLISQXFC6IGxUFYcL21cBeaK+MTMk=;
	h=To:Subject:From:Message-Id:Date; b=SbnvalTaLBVRP2P4r+w44jQZaYpb8ajdW32KKweRSp8xVQjhng4qR/PcMfBxV42qzxSJda2HcqO1Z2wsXD1+HbjlQGE2/Phb8HPb6XmGxVyAO5JgQPir9Y5WkuKvKjdaucgRytt4JGhtPv53E84/KhtEKSVc5323uiWabYhAHjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9Uoa1iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9Uoa1iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E62C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732521953;
	bh=4Moyeo3qb8MTb3jLISQXFC6IGxUFYcL21cBeaK+MTMk=;
	h=To:Subject:From:Date:From;
	b=m9Uoa1iPAYc27R8f+u/njebi0M7Jgi4+3Z3kDRPveA5JxKeRQFcOFGF3eF+7B3yID
	 IZX2OzDxbv5+brAi/f2yfcehiGVVAdkuKVZ0A1jLMG/H69soBJIfbEGnJytoP8fFO7
	 771fKJ12vIYM5Kjdp0Y4bMcQId8OdIDWL3SfUSaXLYzvs2h/Op73OA1KI7C4cA3Z/e
	 UVYuwzChgx3ZzAgOh33JVhTX0F7Me7kYQ6sPKtIXINa+iYfblksXSD2I82LLsijAF3
	 PMOj4TakgIJ0gaHNoJ73wCU2IBxOhh6hHWyNDQSZmG/W0FIcPxqnQMs1SLiaabH6SO
	 ieNjahetow/lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F01D3B7EB
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173252195362.26596.16456869979685985167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3939fb203949d0c672ded384d4924e0c93f4068ce469d2299ed07f5d5121fa
Date: Mon, 25 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732521953
