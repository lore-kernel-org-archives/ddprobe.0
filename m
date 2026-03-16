Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E991CAA6C
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773622494; cv=none; b=czdetMKfot3vT/96i6GBJdYKd9pmsrZPfNOY5mRKuCsztlFHIJGFIN/LqUfPez/lWs6FzbA0/pGCc2sKI9m43ZzdCFnnhVJrEcO5E7bfAwq34kyYFCPMOmvHRa8yagq//E1tVPaXxeyOBgS92wwjU/SU0z7IEgu4IRIajw+4Et0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773622494; c=relaxed/simple;
	bh=RKjfngl2ES7Opx7NLo5kWiB/gG/3RVTyN03o5StKvMQ=;
	h=To:Subject:From:Message-Id:Date; b=N8KqiLXvUoHUVkT4ALPzvjZpfRO90BGJxIjJ7TUOpILEXy0iRN4B49MdLXeT3dksqVcxIPJRZCoVobJAWkK5Ps+nGvY/l9iY5QtnbWQJmFQt7g9QCfpDyTSnSUtNskgWG/XK6NORC2/IVv9J+rE8upriQL+0NbFyAMubfFDhPb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2a5OoKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2a5OoKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A993AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773622493;
	bh=RKjfngl2ES7Opx7NLo5kWiB/gG/3RVTyN03o5StKvMQ=;
	h=To:Subject:From:Date:From;
	b=d2a5OoKl1Bcc058mlDj4O5X22L7kZSi3fpoqezOy7K58ND/48IiJIDtFHf7WJlzCF
	 2npqMoChKrGHWITq2duG6dEDtrPIcqhioX+W61rn1JSCPBXR/NbwLI82JGlcYnTh91
	 LBHzVeVHpnc6ngbhkSSLTd3AOu/DZlch89gLak+TneDS4fA2CTGU4UXyTwClMu+Sos
	 UCx4pRcjH6nRXEoNLeTyn63ElSvPuB6IsivCSSUF2RhqpqluRtk18Aur7eXr1YPW4X
	 h+acLpUpnOYyNRJAi8UymsiN17lS8IjShMs6PsyN8DRnfcfPrLMPFZJ4F3DBNQAhXy
	 yOnDtr3g5FCkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94577F30275
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362249358.17594.12471534288282832735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae1e97993474f5b6a2f2be88560641e1cf19376fb9add18ab8033b07fa4ec22
Date: Mon, 16 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773622493
