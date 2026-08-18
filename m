Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D24C38655B
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787036434; cv=none; b=SSfmJ/N5XBus2Nqi+/IkrVww8E5BVtvZA9MFnjDnk4QDIZ9WlATqasgQKHUnN8+5zymRRGk8qI6FH0xFZS5JUqJ0niYdd8+zzT8mmthvAqFArbJ7pCac0sy/87EcDsACZqZlD0U4EBKvu49CMtz8mz5R4555lQyWhvg2l8WDmp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787036434; c=relaxed/simple;
	bh=ocmYq99uM3X6ZNHpP85ALhQsmLeLahzeVUd3QS2ZlC8=;
	h=To:Subject:From:Message-Id:Date; b=ts1vvqhyhsl/Zhxr/y8eb0HTBHwMugo+DzXvPdQYAj4jJf030s6zasEO2JydLKlowOexbGq2xmkmZEkGq5cnmzVg/+APVmg5T2nkdWqMx6feI9VYkjmxzKnBA2iO5EMg8FG+NWhBtgX9TPBaJuVlTdRqBaF+idmzTaBScua/Zw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCEPvL0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCEPvL0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA277C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787036433;
	bh=ocmYq99uM3X6ZNHpP85ALhQsmLeLahzeVUd3QS2ZlC8=;
	h=To:Subject:From:Date:From;
	b=WCEPvL0MIbHK7qT4BheKkQn8jHUvXr1uHrO3ogzKewpd91eT/eA8XzB02z5eyII5z
	 Em8iL1aqMpLpT9zvbLXHRLsUWg5/oG1/EIPJJx62EFn/Un5TdJchNvWsCF7hGQKZh0
	 D1qVQ1bvwu82+hNMgib9x8LR6pSV9TyS3rjczy68vcSsb52dNtvlPi8a4iHporYlcU
	 QiVBn9OCNJL6c6mAu2lTlIo1Kju7LpwYP1H2VvE28PgqAtHN3smYA+0k4zHTxxu2JR
	 A9vkAOFDjOPmEGIwo7PFQnLeuDijQl5xmqzdugOoni6cvx/ePKqBPscrmmh/oBQgl2
	 9kgV4iTQJNh9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED34C5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703643370.11200.9402040900949235268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8864aa85f8a2ea636c96b04cc16463fded28f49b0cb75c0161e9c6f852361f
Date: Tue, 18 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787036433
