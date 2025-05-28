Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D76127875C
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748426395; cv=none; b=OHIAA6yR0TRtaYQQmuY81IsxtVzDKszQZdpmQkcpNH0sw1hAKodvCsSgQSpQWtZZUeB9Pmi18J9ZLlZ4yh/4DMTbtmFbEmjEepEkA4T56ktkq6pVvV3pDVnsdLyOxfaQU6vkKEdM4moZxTghI75g0pB+Pz3EkDNF/45DydiafMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748426395; c=relaxed/simple;
	bh=fjUA0hgtSJjFuKoRUpRUDzFdbOIvj5sR1BSu4AIyTls=;
	h=To:Subject:From:Message-Id:Date; b=QVLnMHtyjXtEVoBg/b/QIL+6oTAPUs9w8rPPWKCjlvnDUf0EDSsNywHsImjEjsQZe5/kDHVKgYiLZ+z2lJ4CmmbeXMnO2gjLc5TK5JXnJOy44q4jovyaZhH/lvS+hUC8LCFrcesPkUaT5cY7HT/PY4QvUhnRSm/PovJOcXh4JrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itg4/zCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itg4/zCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0158C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748426393;
	bh=fjUA0hgtSJjFuKoRUpRUDzFdbOIvj5sR1BSu4AIyTls=;
	h=To:Subject:From:Date:From;
	b=itg4/zCCcaMZBdi4XMALBaOx6GnRISeoGZHWa00rq4nTE+9DLMqJ/fJp8lRAMBI+A
	 0ykXkndXLzkJLZs7qB+eQNBPfYw3ZYk6CCtOG8iMLyLVCP9qn/1K9u9crHU2Upz8s8
	 kr7TUobX0UhPvoa9j0+5P/CX5BZFTQLD5n40BbMLtmJg/Y5uG1g/H9yDZTiq1SS8bk
	 iW0kAgK+etNK1UdxNtOKSyGgI0e9LyjuGImNVv4oBRSvXyj0Qr9ynXH8BKLZgjbbqa
	 g7tajiO4tPNRlDjY5lqlkqtkdyzIRkIljjC0xPtPwSCr6IVNST1LGGKzfNdxEPuyyf
	 whZrx7gRSQQNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56FC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842639357.9581.11371459822811521448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becfd8be9da4c6c37c7c61b41dcecc8b32fdb9b10530733487b668918191ec6e
Date: Wed, 28 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748426393
