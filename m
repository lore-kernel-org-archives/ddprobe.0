Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE87288DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723523754; cv=none; b=LrmguJj4boPM/g30UQi8bnJ34nvX/eD2Iv27xbZgXekpr2Y//6GF7ZeG+vra2DckKxzYHxKrOGT9IfBQ6/G3RDdZG7UWsSmjhTxq9TtFaWY4O448cmEUTut322OFGNMhL1DbBkCcKnd65s/TYh8m5iNcmySzIsYM/v7NAXIK67M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723523754; c=relaxed/simple;
	bh=GXFoVEaupmjD2xQ94S8q6MQA/lSbywbi8oTMnKQytPw=;
	h=To:Subject:From:Message-Id:Date; b=GxhPaeY1VWsWwURugPUv6d1BzKfUuMxecdeKOgnuQFBzTB999JYf/zm6vEu1QHsknX82OxsULOHk8q+qDCweebtpJJAXokU5OgKUO9e9FfB/hGJmNMwLT2aHJMM3oxHy2aMlKiktxP675tA4GweaQutfMELBFWy9n5+CqauZEww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIWfQJYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIWfQJYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23F8C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723523753;
	bh=GXFoVEaupmjD2xQ94S8q6MQA/lSbywbi8oTMnKQytPw=;
	h=To:Subject:From:Date:From;
	b=DIWfQJYRt7beGS+u5YXf+64KyiepPJmflgiRT8uh4kzOfgj4vInmea7prcQ3MUSYP
	 MfXYLU8P69tLjoJv091ScD8OQTSJgyVco3mq9fyxRoaoqPmXSBARIZXsxULdIk8OF1
	 fD4ljRHsg0Kbv2U+ZTlhLoPLeWHKxB1mlx1NxXNva4YLMXB36wi9ceDkU7Xh26YpqJ
	 cZ/DHWIzQ1c150APYdpjrUFJjQug7EDndnR+0701UG1q9As2qeZ14mgEsMHgj/al71
	 6JZxOZ4nJPc4zhMMkcT48jF1HgTbj5FDyw6WARk6H2KHMI2GJyBdb0OlZqsdIoutVG
	 Gwct4ccSAWIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AC7C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172352375370.32607.15236574013510252420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7af7781f5932b1a2a6539eeb93ecf2dbcbd6436fc722703bd37b884804df06
Date: Tue, 13 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723523753
