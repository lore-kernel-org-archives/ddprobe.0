Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462622744C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720446383; cv=none; b=Uc9Cdm28jX6q7inFE6PeKAyDgV2mjX0i6OFjI1t3GBP/KOQM5KxVF7KpakZ2DqUDy/j+UWgKKaqvfe43ESk1Y/1TvHmzThwJrSYaTdga1qSZDIzfZ3JDQpFfDbixnmVty5b7IXXndjnelYJ5wVC0XtknSQN5MkpPAaNahpNNmgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720446383; c=relaxed/simple;
	bh=tTDB14lb+n6wWJKo4UXibP7PgfO/uaJOCZNFj0nABkw=;
	h=To:Subject:From:Message-Id:Date; b=KIpJnnD9QxlR6uVsgKMiXhkuDiuIRjIh63aCG4AEb8CSA3VNZRX6jT28NmL5kLgbEfbJFAXFTjXdB1uVowI102k3k+v+DwRiYb7FrSvE4XHChVQa7LXbdvoXgd30VhsTvgaaiFg5AqZSuyFDyM7FdPQ89Pi3aV5W4T3DQOjZBA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwXfoJSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwXfoJSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E132AC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720446382;
	bh=tTDB14lb+n6wWJKo4UXibP7PgfO/uaJOCZNFj0nABkw=;
	h=To:Subject:From:Date:From;
	b=qwXfoJSnNbMTokHy/LQ+rHfSZBJsoK5I86RDE+DDy0f3gMVKyFicM35pVzImlyN+p
	 dgk1gZvZ6Niu8T43TDZ73yHgxes6DEEoFBBgR4wfBWqeA8SJTFkXz989b0WM58xiZi
	 6MQpRvx9drLtsIQC2XT8r12BBKdepwFaMl8Q362GxsOydNcvkf1eeTLO4NivvaHt8d
	 pM1ParsdeIC1YPT7EzLib0QE/CTl0+P4bbqrIjNvE73zwiowPQu0O/27950Kf67pFv
	 Hu2Sw5UhtkZsPPkfFD8vvc+Emmr80ptuKC4k4yxBvzUePwTKebgJg/6VlZm+rDMKlB
	 i6Zp6rAGzKJdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D18FBC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044638284.20287.6122980443902388523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f664fe5d9423f312c9d81df820b2c5daadca5fb286c2035245119ae073f279f3
Date: Mon, 08 Jul 2024 13:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720446382
