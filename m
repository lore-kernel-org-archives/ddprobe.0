Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220853B19C1
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780547074; cv=none; b=QcDb4jI+16TxVS4TnA8mrS8am3qVwBkZR4XUJwDz2p3UUqK97zBsZM+7yBrlgCXkrBsnSOs9ilUYJb63Q5MrP3Gc0ocqc2lpg699DBIRJD/LcU1zzwbQa6DreKlE36XVT34d3On1g/nTmZk59lU6hi3UWQcZUZCXo52h1e92eqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780547074; c=relaxed/simple;
	bh=u5hRAwBtyUytrmSfnL2PvBwDdNiW3kcrhvdJARq4wdc=;
	h=To:Subject:From:Message-Id:Date; b=n2t1Ad1vEAwynWoeoG2Jdo+CKWyDB/B8QsHzdQawW/lIY78ZHMKhLOmKUaXWfMQOOKQWXZCvI0MfWrAZ8wZzPOUdmZdpXTbhEjrhr39VxZVvkDsJoPPCv+oqjE+Jl7O953YdFnyz/jADQ8RtcWq1rr4eCtEtK4Bej8CM/XQ1Ig8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7aNe+9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7aNe+9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C715EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780547073;
	bh=u5hRAwBtyUytrmSfnL2PvBwDdNiW3kcrhvdJARq4wdc=;
	h=To:Subject:From:Date:From;
	b=b7aNe+9ujEVM68p/JitfINAVEd4Xr30EB7tVCsXFAcX4SAWeZuyN4yhUtPzb3CmPx
	 CAF/k+1fyceDORJiHJjfsJrVuSXv6NlF50sD+AzIXe0mvvH99URp8zxGZr0xp4nkHa
	 kccfa+3H42nQ6oHkJL8YqA27yBBrjPacHiwSoxi/Elx32g8ew5ue+AAaPXQHRcitoR
	 qNTnoxykOvLRsQS02dBbL937MuyhjK6QuCmP7yM7QaLNEip4hNPpQFfvyqH9KX8QOv
	 6/sUu+NG1CoAuGpPBt08KxoG6OVpLQBvV7VOmKlDM1s0pl0FwphUECDAYjHn4UW3PE
	 FgCeak/rneHhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAEECD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054707368.3375.1140956227864990572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b90097c2acada8c7c420cc9db16b0d40fa434b100da2cfe836f71f38f915bd
Date: Thu, 04 Jun 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780547073
