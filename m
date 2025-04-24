Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A22121CA0A
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484595; cv=none; b=rt+VSvpU7uWmTc6TvTozOtpJqDEWldQNV7Ch4UCV3X3AnFPYuRscf2T1x6lo72x8QXe6HA/Dyq3r6BWUMSZtW35um4W82180uEdj6+nXDuk0ILtG375/3GDQjVNZOPudIyrYz2I2kFQIUG4guretSNcdFoim0f4ixY+GycS1AMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484595; c=relaxed/simple;
	bh=C/gJfxSzYEMaXNtzpLTqZx2iKFNRuTQaNLE57DeznCI=;
	h=To:Subject:From:Message-Id:Date; b=g7QxXpRxnk4FZJ7hjHgaYpFxRnheNj916eDDXewO57XoP9IAKdPjDuhY2L+X8Wy0U3XFL4V0FOerQQFwhXtxuffMbR6ohjVxPcXgio/hhmhhn0v22gIvtxJGrvSMhFAA59+2GM+lEnBGAA8eJatj5OiSdc/FSFkpBJ4/HQhMceA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Znq0qNVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Znq0qNVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A197AC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745484593;
	bh=C/gJfxSzYEMaXNtzpLTqZx2iKFNRuTQaNLE57DeznCI=;
	h=To:Subject:From:Date:From;
	b=Znq0qNVyPtZPhav1lknUgAtJqf5xb6r6XpobaeWqeCIyk87R9YS+c8VvFW3wQR97Z
	 kD7+/iPDxfzFmFnCCCfqHTNWItPIdHm7An692AnjWKVJ6A1lg2oPvt4fmXg9vBNBPg
	 Lb77+EAuiU+OUmy3K7oVjzzTWxPZAMGuTkXxE4jX61S9WAVp+Gtf5q3QJ48IYSEUb0
	 U1raHa1gg61XNDR776yWqxvpf7gOrnSbF4/GpUpgyHXslLoRDaLTUwdMPS5ZjQ9oGc
	 sMecAw53pVtwf5IxG/B6c59VV77LLB9GY58c504ApKt/gzk7UccNqEff1vSWnVKC4j
	 zIn1xkFJ3Ksqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E223C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548459357.13329.14826898962867383955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39edea1fec9a3dc7ccfeb32e77507dd549d80b2eaafa7f87e978c1060ea1e37
Date: Thu, 24 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745484593
