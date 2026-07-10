Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54007408607
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783685314; cv=none; b=pJ2j1lbPSfVkR7reK9tMX3SowiSzOa2fr1NTvmFwJwUV1OTOX557guXbP32ETW6Lwl6XIifWqD+wEHpj4BiCwwdYJE2wx8H+NZiiEJivjC1FuJyuboMQu8pG20tFvXiZaV8BmOFIr3fHbYlOlG5moxFjYP5AeQeb3BkvKVSufmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783685314; c=relaxed/simple;
	bh=O81FUKokxxqh/c2kgYn2RCd3e0rIjjxz18xLg0+3PoY=;
	h=To:Subject:From:Message-Id:Date; b=pb9RfdGfm/sHbKt2MQAun2LWA4XC9dl6XnYWT4jaQK6WRhmPMMTqchyjAY6jAVIeGt7+ORgh6h+do31SveVzPGrug+22vyuaoOX54KahH8NhZLiWwik/5XsjztiuNNyIpByXrTG4CcvLVeOUOhf+N+7DTvQ6HLkNPcHgRy01lNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LumcaZ4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LumcaZ4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA95C2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783685313;
	bh=O81FUKokxxqh/c2kgYn2RCd3e0rIjjxz18xLg0+3PoY=;
	h=To:Subject:From:Date:From;
	b=LumcaZ4Z5lVI9878KyEUnPMN/I+aF/nHF4u9Y55lSKnvsTgzWOE8O+DAWUxT+KMbT
	 Z3w7AWwM4SyB87wTwwL7VvpQ44ioZLo1cDEbfk8i7VdiujiYKzhUhUThJdWr1SObXH
	 A7KiWR1pWXXEhW7Nz+bR1wsL7Pg1JEL6zKegKSPmlP+OK0Qdfd/eDVMm+MqJeVLmzO
	 PZjdpqWC4v7l+JwgLd4bJ1LRRHiKtshfQ8zSwhQxr/2Fiq8HJ13aQeUQhWdojTJFiF
	 jywNfzLkecjR89qsWHRc1bTZgPcpzUgn+tdcSSy/AQLn8YYmrqOsEkHeXTAeg4onKH
	 5AUJyncrf0JDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E17C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368531368.26741.6816474444363269804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58fe96d6ecc9f4a35e78ce3a932c4876a4732b663f68f67e79b2e4ee69d83c2
Date: Fri, 10 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783685313
