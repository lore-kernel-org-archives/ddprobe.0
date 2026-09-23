Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA93334688
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790170234; cv=none; b=e0XEfSrmgF26UcS1uah1OpcyT3MIxcXbvaLwocHYp34ll6tGxqYjD2tWTKheGg+2zcjsCH7O9mJRyKA7MoxtUDqaTZEjFHog3LSo8vV0ILc/UOVhUL8vGZssMKuSWsyNQVyvhTQxp24eWDD8rPtc0tHbZVw28+D4f2+6mEDd9ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790170234; c=relaxed/simple;
	bh=jcPtrtFZNiD50f2paMfPdpTfcwkOj1r0k25NxpT21gE=;
	h=To:Subject:From:Message-Id:Date; b=FUMXcESaAbiSgZzcrDCAJl00zn8HCUBg62mea1irmyP/u8rl/q1fqgw/vnAQnXlgrV3Vf3D/nE4DbgoIGxRJndae4Ptwa3DKzJSZsdJMozDoYfjZSUFRrFgQDHKfsArDW8jqPHKZs3YYgk1OUNoNhzPkhBMPhZKpOYy+hLSMVFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTpZooiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTpZooiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5C8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790170233;
	bh=jcPtrtFZNiD50f2paMfPdpTfcwkOj1r0k25NxpT21gE=;
	h=To:Subject:From:Date:From;
	b=ZTpZooiYmuLJGfEJqpw3hOrdVJ6NPco7IwHYh3defX33WobOPLnBhVYI4gm2x25fO
	 j2tIv9Tja0Q7JBQeHvUIg10hMIYQfClAJwIJsIwe+LXtgwBIuKSwSlP8sTNyH7p6Co
	 fqzTEQTFY1YlU5bBFjA7iMQts9LL6GK6a6NY10bqNqWsaSPua041tFafgu/9TtRWA7
	 HxktDm1VEkUsswYPTIKOAWqNN8z8iRTJZEgWEb6zdyKMy/Qn9329atcZKMOO3pf9k9
	 n6Sakung4I3v58no1W5WTdJsw0HlA10owo/XMLV81uvRb98rpLSIgzsNUZipFmHtwZ
	 K+u6HYbmigAhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C34C9830E
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017023373.15178.15254299683802282547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bbdbf94f45ecadab71116c7f1948a884f70748f1f5ddd5bf8201c190955c11
Date: Wed, 23 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790170233
