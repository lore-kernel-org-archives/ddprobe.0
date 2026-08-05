Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538CD387596
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785960034; cv=none; b=nkT+hZA/nmR4VeKB/W74rXLNn3SV5kJ4PDnz6F6/iTIIsK7EmAHWzcYdjK2DSCRl3vp6OSyp9zTG0Jlzr4fA9JsoL5Ad6AgU9xNBMbIPjeg+pkE66RDeReO10oBzxbE8tM5wU69I6jdoJEs9A70yfJo3lCcY6YDqv4I0IFAFNeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785960034; c=relaxed/simple;
	bh=6G8EbyIOWnFdz7XczdeK+BbP2dLMDn1ZH0Z6pnQ8TR4=;
	h=To:Subject:From:Message-Id:Date; b=TU0idl5Y98+F5aR/ooCXEbHWo0F8Ikg8x2BinYVME+IJCQO5vaQKT7VN5gkPQIUCbjG+y9aPhQ0Hif/o0TrlXbcQlyZYEhxkSNdDFrN4qZ7fihd5YFJT4vziISDdW/3pZDP2yxmFi9/4M6IFgeY6vAIQjeA0jb6iAx8oiB9THt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6Kyk5kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6Kyk5kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D273FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785960033;
	bh=6G8EbyIOWnFdz7XczdeK+BbP2dLMDn1ZH0Z6pnQ8TR4=;
	h=To:Subject:From:Date:From;
	b=R6Kyk5ktelCd5I3hHtG6UY7eyEWPJT+FZuur5AKCFI/1WV5dWMDGNu1e2uhy4WSpA
	 97DLutUTw5uvfO33yMf+PCpJOy+nzsFoD0WuJMeRGa567qokMtbQPF8E/8iYIXK/Yg
	 q0552cn8mql2D2cu0uceOnLZii3ab8LOXrxbPKJTK1hmp2AWscexk54DL5YGn1MjCo
	 vKdiJrTswldX8ag6FhLEghP+ZNTDTZqZJsjf09B43oDtsTz4C51qAYv/vZfWC4ClpZ
	 7PpW13Adz12b+kUFFwkTq4wc047iEDaVIIvGx1V2E6lCzmwegtz/9eM0kbDVKsL99L
	 yDL2ejr0wW5hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01A9C55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596003368.25612.7699454363387980354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e87f588f021be1899812229d25e12d813b45fb00cb1a537e6af430029b9167
Date: Wed, 05 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785960033
