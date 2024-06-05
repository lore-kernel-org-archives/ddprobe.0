Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D4910E5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717565183; cv=none; b=ag756flY8jh9JXYdnElGRlNizTzbK4tHGBG7/fntjrqxYd3BgSo/kAzIqSKpWOiE0SKpgJ7qM1AVRp1piYr0is9TmZfLCa6yMpXOr/bfpD8SxWgYEWu1M2oZg2hBb47B7CR/WPRQF9NEfkzXRzsYlpV0lOUc1IpHNhzdaKsdzxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717565183; c=relaxed/simple;
	bh=OISd57i34vQi4hNuDR2GS5/gWzJreKNaBebJhy4guDY=;
	h=To:Subject:From:Message-Id:Date; b=KEWF/bysJchN/kl/GgZfQPtkDC7ZP7M6jt5cnWjl1cIiroX15cJymnJVUEYzfl6jFK8T5KR5o7uM+F7WwShACXB6u1G8sTKU35XBKUoxuoqK+OIBkB6GriyAi42BYLuL56zR66rs+VOmUysA0IL8iSg31O2WdchnIk5fGtNwWmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1MotvKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1MotvKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6A8C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717565182;
	bh=OISd57i34vQi4hNuDR2GS5/gWzJreKNaBebJhy4guDY=;
	h=To:Subject:From:Date:From;
	b=n1MotvKykIvSXLBcwKyg6BXJz1pzdR+Qp4Pj5GBcYxZcXZ2YvpA7uBp11kgD44CUC
	 z3YISHAL9p85APRa4wnlE1K1Skyk311wHjeg1Neb2ZCgYvnXNyh5i6PaEylaA7DUlr
	 Gr8YMMqbR7poN0UaEc/4BtuIe9DNF4y4USS/o52CO/HnGajxifkPF6TpUHY+7rqE51
	 ZKE+D/OXZSFslWIMOR5JqPkUyrrBKt2YIkuOqDfoWoIMUQNGAgXkmk8WE8b0MjTQOe
	 gGw1pX0agv5rHYQSVzfI92t6zZbOFC3YdwRxCJXvIWgj3sfdjJ813ycNdHEZ08qZa/
	 aXOZvt/fxvLRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA393C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756518281.9416.5969222638570209976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e9f98d490fc52f3af341f5f1d47045d1fd7362582adf50b83a0755a21053cd
Date: Wed, 05 Jun 2024 05:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717565182
