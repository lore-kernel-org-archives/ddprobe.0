Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBD153372
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712776697; cv=none; b=IrswNnWXr01i5ZQ9Um8miLouJCGqmq4nlNYqR/6p4loMbPibl8pkbi1UXVJNso3hA0dQhLlM9FscmquEGlhAV7XI0UHVH5TYBUxnv+eT2495YFPfK0++Nl+MgGD+f0V8ZTcunC73p1JsDAittV28zgP70xKdN8khq2uUaxxMU1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712776697; c=relaxed/simple;
	bh=baSP7rPUGN1jl51rifMnvv0YGuZkFH9To/Tkd8vJdp0=;
	h=To:Subject:From:Message-Id:Date; b=XQ0GDck+rakCMISeFsEWf3FpSPwsPeCpYL7VhC2ve0Ehf75hcdns0jg/11rmn/WoRg+CI1uSohXTvlxEMXs5Y6S76XKy42+UOQ7zHOpZWcRPTtCzv5sHIaXMIL31etNMqKuvaZAXs2r2p6oby5w924cP2GLfTwDsrvIpNA8JGZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyJNIx/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyJNIx/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F83C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712776696;
	bh=baSP7rPUGN1jl51rifMnvv0YGuZkFH9To/Tkd8vJdp0=;
	h=To:Subject:From:Date:From;
	b=CyJNIx/rfPBTA99TgaoQ9CI+qFpluEkrGJY4kkp0rUV30zF6TxuG/URLVVZCmz20l
	 yuGpQGIhxHNOlbUDUd8SV5zHBG+VY0i5yAwAEgSjmBzGl283p7w8ZlCVwq7c027Xnl
	 NCVbnRz/VLEwmggixOsSaz1D016y7CzX/uGtzFN0nAoFcPxoVeoJ66tRHv4SUWTPH6
	 GhSyeq4f+fikebY4J0qnS4ryTh62nhrJ6BGfJJ+tNt3xBL3gOpcGuYM0iQLgJMvVXF
	 o9DbPJn2RyuQStPWe9KG+e444v6a/0MfAEhrm4NK2iu4YWDpinrP3kWnBGH3GKHtS6
	 mOgb+Ll9k2w0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDCCD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171277669651.27366.17680710899710392892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8695028bac1e310192b361f09b4ab852ceea24b8fd383091af1683023c876974
Date: Wed, 10 Apr 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712776696
