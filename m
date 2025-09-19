Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA3723FC4C
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758307794; cv=none; b=REzrueBV/+OYryarnDqBf6l20P979WAlB4DDlr2A9vGJsZzkAwkUis3fSsMNBIMxH4aYEgrIFQSmNqMBoeBlYWxL+r9d7IuyhES00WlBEt5tRu0rDTuiOqImYgZ2du8cv0/Vp/3Oe9E9dx5/RvcHtJcTYuU2GMSJDezj5jLHWHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758307794; c=relaxed/simple;
	bh=BNssJbRy3HVSPsP3YFdppMOx3sQmx9QXbh4EmfNKz7Q=;
	h=To:Subject:From:Message-Id:Date; b=Q1A82gG9UK34ukJeCQewqSonU8WK94BrB8On46S5LTjGUAJds0FFIoaeAv9Uo6lEdIpDM/GtUoai5w/8uYiJnN2OZ2T1FQ0e45VceCi1NAcfi6yp+AwArMY0sWcDLNpV40+86YK9pRt0+5dKPz0xOmy1xaFn/p/k8+B43lMqZ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmcslNAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmcslNAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77A5C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758307793;
	bh=BNssJbRy3HVSPsP3YFdppMOx3sQmx9QXbh4EmfNKz7Q=;
	h=To:Subject:From:Date:From;
	b=kmcslNAuCm8F0ErShSs1IZZC7vXSbL4eDb6dveoCEslR9vRV4Op+fWu8a3tyrmIJ1
	 TcpdHB00QaozU7YMFmTlyRZKmFYy3BD1w2g/78tF3N6+SyR9q8RDaBJlHbEEP6dz6b
	 ZET83D4yABPjTvzoPWmyTzjvLJlFtb1gTOdl+mn6YGb0JGWKPEdVjLXL1IpArlNfUv
	 2fmojk8OU3PyTtSlPMqE2+7pI9j8lleDU7YNU1OglNaCLqT6FCSOblqZadb1ez+gIP
	 V0q4NvmRcFvMb6Os+57aDaD0hnI2EQYnAYSj/JpSYcx2A9sfbPnersIQPnRxWMiKme
	 Gj0ZtRuvf0VBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247DCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830779359.27036.16399891293821607387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def88ee63bee23c87739dcd84c93faf8c68fc6336ad881102105d6a081e7247b
Date: Fri, 19 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758307793
