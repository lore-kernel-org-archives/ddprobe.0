Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307DF13B298
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732395954; cv=none; b=fzPUtIl5ELkM+KSbQ31C+hX8zOo33iQGe4tsbON1ClZBQr1j4rtQiBSZejaZvSWnFMigaTH71uvdcaFv+khd1sY6iL9XAdIHKVgZx5cxolcSK6PMu8r4wvFTOeRR/Rtd06u9JJUQkDcEtw0j9meCr3BcbrAIt8XOH99SYT8azSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732395954; c=relaxed/simple;
	bh=BrxfOPz23SQz2n0kYHWID4ulXNhl2c9Hd/jvU+6rTxU=;
	h=To:Subject:From:Message-Id:Date; b=taeUMbV7ClxOK2Xr6hmxhSw2D9Nh2AOq3ohv/bgQNTtFDfX5DimnCe5Ias3l4343Gn5Anu7bfEFkvxEbYiJgCn/cRuwZKcLQFdIpl5mky6ISpWjPcKaBZD2305BdEsbIVMT21jp4iRTcxets9hqX8Q5Y44Jsls/b3k1Lz8mFXD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkTA3bEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkTA3bEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C76C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732395953;
	bh=BrxfOPz23SQz2n0kYHWID4ulXNhl2c9Hd/jvU+6rTxU=;
	h=To:Subject:From:Date:From;
	b=hkTA3bEX0AQr/QH5mOGXkEAj+I0/QGBEavzMmu42v+TC5uHSRO6I0H3SUD1TBe1zD
	 E1zqwsa95pp2DdeKB4S7JKJrWugtGeSCRQZMycrLt3HhQdv3Ik0uuWFa2afmvVqzox
	 Jpb/YKiokeyNHV+BeqfmMcJf/HWj/EbXgQc5H1oWSWYXrFvJBVK7otoBKAzND6j2g3
	 doEQRNzeaVz4yD8OWtOrGD3xcisDdOFZUtzVxTLYCdN0ApT+8c3SS/YElenCas61CA
	 xQfmBIj8vOls0K4Wq9HL88zv+TbKWynK6nVyzd4gDwEQorEJESBqPLekjNL8bY89Iw
	 gB+KS0KHEs4LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A68EE66885
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239595360.25774.10418573807461657051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4090bc5bfbb39a6ab8ac6f082f6b47ef5174eaf2d95e31cccb84a054ea7ad604
Date: Sat, 23 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732395953
