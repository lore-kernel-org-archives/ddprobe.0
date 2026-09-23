Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F3D3CF20E
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790193635; cv=none; b=uzg4XwfuW/VtNhvE6dOSKJzFOrskLSPJWzJDL6kkKrhsRnpYbohL17EdSOydPJnj7UyJdTAp8e2FChaH95GvJmg8Wo3eW+nGUfpUi6DvKlSle6MDzoFh3RD5ydi8+rjrOb4nrU1vWTdbRurnkbTa9ca6FN4ArN2ViKjAWXmIMCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790193635; c=relaxed/simple;
	bh=8zCCIa3d3O/zMnb2zrN0xjPK3+z+iu+BGuZ69bUwPt8=;
	h=To:Subject:From:Message-Id:Date; b=jto45yr2Kqz1JKTkfqdGNkIpoa3L4cHkzeekNB5P/kfOz0HKuuuvaEJTqMQ2ElgVb/nuO/2vPiCdCzw5zhMm+l4BMkDD11vQvxjy3Lnx9B5u9k8Pl8A6ZVucqfXuIM2he2XihS48332VSxM+bKbArdRqePWxsxi4Ti/Q1zp9kfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IljrT0XS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IljrT0XS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32D9C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790193633;
	bh=8zCCIa3d3O/zMnb2zrN0xjPK3+z+iu+BGuZ69bUwPt8=;
	h=To:Subject:From:Date:From;
	b=IljrT0XSSEG0SXrXXXh5t7O8GLQ2rkFbNXkMHwhI8YqZiMpGFRqtp12Ebrct6T8eQ
	 bAkkkg9zB2lD3DBsPhlDhQfjSa/CrWQoL3xuZZU4lnwHXrc8szrBD/dqnBB6Jw3uBK
	 6sWwPXdr/tMU/GaOhe5UEzLrY1svK3SRjZGC2UdnH62XYB4T6sxREIe8avlInbsxjF
	 75XivDFcr4I7nLpDe+DtiDkLrVJI19c+3QFt1w5+PxhfW+ID+U79W+TXiavZpzesjA
	 9bFM4NU2BB2wHrcHjfhurw32s7coxb87Ypu6x+6VgnIrDQeYpT3QFlStkAscaFQyuc
	 zVG3nKvNCtAeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCAAC98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019363375.13502.2411971693212007981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29361c52a1182313dba70a933d84dd7eac4df446491f35347891d820bccc77f4
Date: Wed, 23 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790193633
