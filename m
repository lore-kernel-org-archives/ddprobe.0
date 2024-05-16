Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7080F1369A6
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715850743; cv=none; b=cyXD+jwqag7v2A1uN2iO94QsbUpZeKTF78QzqYIGp2R07vV2z2ION+R/H3oRBTaRX/bI9Rci+07OFLXjNo5BpYPuKF5RNyMRo6JYn304EKtDhMDyuxi6zT38D0TYDM4BJeSlpIYvQXkN+nwrocPhh77/v3DYY5BLF7LrxV4XHz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715850743; c=relaxed/simple;
	bh=r3jKgnyVQYvsLawsSiuQGM7wGe9rSi/c5Ne+uo4bWtY=;
	h=To:Subject:From:Message-Id:Date; b=iTUlsSPyaEujQ7Vm77MNy4iz3yN0s4ThMGCwzMyUFP810aQtvKxHZC+SCzke+GAj99Xi2GC8jNIgcZeDvei1mEl3rd3X1UPNo6zJHTGU1IuonX0flROYD86Yd1SBTUCFgHWtrsH6jZdGzQ13G7Liceo4gaM1geIsXo6IOA/4WHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=speBINL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="speBINL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD593C4AF10
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715850742;
	bh=r3jKgnyVQYvsLawsSiuQGM7wGe9rSi/c5Ne+uo4bWtY=;
	h=To:Subject:From:Date:From;
	b=speBINL5BauHYdUQvstwKQKWrPJk5fctNromZwOyKdHRTKZB7wfZNj6RlESxybQ0a
	 CVtuMqzW9S+UtDna8NXzcHLXdw69PxTRZ5FZ45xGHZ0f1m5ybOxS8vIiAa7yO1p7eo
	 wc2KNmw4t17lya106P/WafSh7wMSyRDtnNERZ3hqLr0Wng7P98hdIOj8bRYQfLjW2e
	 7ACvLT27vjqT95xpj+4+xDLFD2SDVwz94+8dTVjh8UXDMAmdIYYKExUdp3xdUKkIzd
	 baOnOC9C0Fooqcc5BIwP3F1Um4EXC17LOUJ4X4qD8ww4jTe7FF+GAD+lTnleWQRh9K
	 IJJ8nECqrDFFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC687C25B7B
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171585074282.31140.16629891710094825095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5961c957c5935b20f496909dddb8ebadf6685915a392a65bc68ae1f508bef3f
Date: Thu, 16 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715850742
