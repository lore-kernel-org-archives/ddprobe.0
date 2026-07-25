Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5614B625
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785015634; cv=none; b=mhEhLGuI1UPhhf5SUdtoxDacpUCyKEyKIoXzfx69ykYkdNgNBE1ZEQ0RMRRS6ikOl5r0awoufGMZvzC0eEggMh1byzoM4okpYiG8w5KVYrZRqSWDYen9KxSufAL4ExCFun6Wc6PjyCQZVO7h7p5jmn4YhxlwWQUrKXkCm+Rv1bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785015634; c=relaxed/simple;
	bh=Aamy8vWLqRvud0veIUaDIqQJOVuLsFJnxfozxwff57Q=;
	h=To:Subject:From:Message-Id:Date; b=TrXiYiPOC4hfkx6hh6O/n8BKaHdwJ2Qv9MoxUmSKUG1lbAwk4WUolKLhbnCW2m3HkgOjhZMbZn7HpMKk7rP/6EpYTCYhMpdjoJhcdf8D43IXfbmmDYAycRI913Sg8+irG8yEUtzgTf/0gk1hZOKK65ZiqDKPKIx1MOafACAQdV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfhEeeGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfhEeeGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C8C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785015633;
	bh=Aamy8vWLqRvud0veIUaDIqQJOVuLsFJnxfozxwff57Q=;
	h=To:Subject:From:Date:From;
	b=RfhEeeGoNItjHO5f6cCDAtuuEL70I04WJE25rsvcejuvhl7bcvcNcRjP1o6aJooSp
	 l88cxvsb+12gNBC2u9A3GE3xd+CHjqrhP+8Aut+MOy+Jtil1KHarYpjYB1iE1bClWk
	 xAHLTiIOJQyJ/qo7db19pEpsfSMFTYFYTn5rnP0yymQMRqXp+UqmFEi0b1RrxiqdT1
	 Pe1o1QUDHMoltgx5Xo6/r/RyqxhnEpAzkcySGOIkwzzte9TKUl/RvMU8JnHCK+h7Oj
	 f8jBolCNVTTbA/4F8cxdxZZMdS/t2ESvihB/1ijWWV/yGGjNFznedPKqaspp+FWGHJ
	 jF11zxbf4gWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE0FC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501563368.23326.8290797110168625445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff9f441020df315217aa56a196458b4260734659cf8c56bc2435192aa00e5bb
Date: Sat, 25 Jul 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785015633
