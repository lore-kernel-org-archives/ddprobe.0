Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A97493627
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787431834; cv=none; b=ew8KaPS5brgiMOW7IL/AQxMQHas+15GTTXDsfyXxv78mGgJpOO2apMEyKYd8FEJtVrvOQtm1ft4UPc4E4NdzPZaYPN/+CDeBVAcf6voxczSA1I7J9sp+45/YP3cCzv8BiOLbu9LiYfcMNx10+3/4uRgSAwbpK5pslJkdxrxcDjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787431834; c=relaxed/simple;
	bh=U3QLZheUMILCZJgXN7VOCnp+6IChtknDzcx7gl9y96U=;
	h=To:Subject:From:Message-Id:Date; b=BSPn7kCJDeRLiZwJwMXfYb94O9/bHSDRuHigCaXAAFIE2fN5lZJT9sPysNf659bnXGiwCCLsUTB0B3UAuDUXRAa+DzpqoNTw147f5jIn4yTXxhkzTq3M2J1aEX5U7rNuEOgQjIPZnoDi+ALOOAEEYuSKtMon68kKYL9ue7AJ8Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0s+Zfr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0s+Zfr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6068C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787431833;
	bh=U3QLZheUMILCZJgXN7VOCnp+6IChtknDzcx7gl9y96U=;
	h=To:Subject:From:Date:From;
	b=f0s+Zfr2DX3KrVsHvGh2PDUvYRuozJPf+ijcsOHDu6rBIANZLAs5fxbuvX7wm+Htr
	 eHrJ955+PywIT87g5k7yAs/HLInLA99GkrJaxMHc9QJs9MtluIS7W+L0iMxr/b8o/F
	 eBC+0EGc1XSZxsm8A0UYpv8IEiWsbCaD9/tkc+0COgi3HgnnPhu5apEPVNj4VM1Xi0
	 tAORjf9LHR8jT5WArhhCbKCAmxbNgvLw6LOXoDjrdIDnGFoqf/bDHDh2iVz4x0gN1k
	 JlXgPNDIprQQ92NtJWtL8JYSfZt30vGcjddZMtmy1vuJrmKYsb8Z4bSNWJPXqk6Tfi
	 qcAI25BD2gNvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07C0C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743183371.24349.6779687358745383791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe43a6f748a203b903013e4b54cd4927b52fb402af02e0eae4ab2f0708a07622
Date: Sat, 22 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787431833
