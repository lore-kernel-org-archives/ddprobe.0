Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D3B236435
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759963194; cv=none; b=exNQ+BWOsszfdzfr5XgdoTw8mY+McHgfL55rXh40H1VnF09ppCOjVcAiBM44o7V/FZi7K1aXv+dLhPAzW8nPRE8WAETWKkOMzxtwI5xHWXGZif71gUPNCo5R8oRWhDN5JF/3erADREOgDYxHnV7WTUt4mCMn1qSd+10+m9rKt+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759963194; c=relaxed/simple;
	bh=cJ7G2vk3moYm3K61RyS/hqC2g1Eyde6hosmHvQFAiuU=;
	h=To:Subject:From:Message-Id:Date; b=joSAt00Ft7XBrvlxr6o2FV17e458Dialppf+BVYlx3iSj3L3JXJkvQ5cczp1Pi83JJ1lDdfhQguVp0xbuG5r52Ke0pJtng6iOjtT6HYocj7M/mtG3cNinHX8kOcg6P3dxOGLSvTS99V3GxJKiwRu6f4veq1+7wAIbA8e080Z/ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOCtFtUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOCtFtUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759963193;
	bh=cJ7G2vk3moYm3K61RyS/hqC2g1Eyde6hosmHvQFAiuU=;
	h=To:Subject:From:Date:From;
	b=BOCtFtUJqrN+UYB/r6441bUnCzIzcsw8MWl57RYnNPalX3DivPi3qk80oHO/nEUhW
	 8aJzzMJJxOyhPVawKJ3LuvX1tAeA3jMZ9jd5FugWXPhtuSViR+5y4tpP1On2iYzNxo
	 UltKhqy5Mv3M/JIG0hQq5sIuJY/hUdbQrVf4EeDEieEaKY41Av/LTSwt4OdqmY+jZx
	 3CFPL/oTV+qdkJYTnx2x94BztDp1IrpzjIz/nO0tRPtaosR79G+89NP0aQKdAbYL9M
	 8i9jvxput1XmXz9D9kLxdM7fr4HtowObzX3TQfU49VASRLbkjWV2hYdilf5MLBLfqm
	 mKQZG4jQf7JBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4BCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996319357.25762.13904271772001296395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec49521a46ccd2c154dad83c9ddd97ba74ee11f9f30e8f071ab91399fdca0b1
Date: Wed, 08 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759963193
