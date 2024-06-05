Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4066223D7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 17:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717609043; cv=none; b=TxkXnyMlzhLbj4g3SwWp7BCOzo9sVIyDoBnw2VZEwDzYXJWkge28y5/k7fG+tFPXENVmmiy6lI4pOnyZyBJjGadmcJzx6LNek5jnC7IYOb1ogLI4wTthvvpCSMRVKLsCfzVMGowalJIU1Yqto92nA5wuqZ6LIV32TWs3Cp+Uqcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717609043; c=relaxed/simple;
	bh=/Ss3Gr8tUheY2ltkWkR7vXRv0rttnVO3EgPYpPi32sM=;
	h=To:Subject:From:Message-Id:Date; b=ZJgirCil8lXJZF7nKqX8JdZznoPWC5ercfp+yHboSFDWa/sNHxpGElT0O6MTJ0yW9HrDQHDCGcL0Sy6lRXtLcIcRdAo0cHFv2h5V6xmSSRhmozNAPIp32DpClWLeQ754HLE03YUQ3jbf7wp62upKERIPlZHEAI4DSgKwQewbLeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6soZEE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6soZEE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C5BC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 17:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717609042;
	bh=/Ss3Gr8tUheY2ltkWkR7vXRv0rttnVO3EgPYpPi32sM=;
	h=To:Subject:From:Date:From;
	b=L6soZEE0JxlVs8m0U98RrGaNRC2sAdti2AdGvo3x5XcD/6Aay1TTOf6qTMGUiLSnF
	 jUI+9D/W/60v4eaTmFtzVsqUcFtD7spYNp5AZo0LM2sfdgt8+OSauWTQ7hqMQqNFgl
	 gnpHF9Eun8f2R4XuQxO0pFgX1sWUV779bglRPAEvNx3DQiGwmi7XKeg9bkZPeeXmXA
	 lbyVsBAzaj2RncFMmaRqXmiJitMqDqKdcbeQS8qXr0cmO1Nx46ojP/+A5r+OVD/V2A
	 DbISKMk+kHCm8o18BlJzmkA3INZLM4atbP2BQuEoc/c7SC+tI5EMeCnSuBmFlTTMLF
	 6JMGiKyZQDkFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA415C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 17:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760904281.25879.1432909079923978436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ef217de43d9b6f1bab8591168455d0de3761f9e12fea2030823952436731f2
Date: Wed, 05 Jun 2024 17:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717609042
