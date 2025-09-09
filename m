Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D18A303A13
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757399994; cv=none; b=SVCiT1BA8yytNyP5KvVuMbXMI/yAaEsRZ9Ej/VVfqzwz1EH0VYYcS4SUNpEQeacECRaOAjmWxMbHQ73uziemh9mwtV9PEl7LHsHChS8IFAabBGFLmjU7GuGI38YZo8XAG6RgZKfA/u84usbli/GAsDWjA5INU9X78c3e4Iltvh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757399994; c=relaxed/simple;
	bh=VUeJSJz3v7iUFSsmRAOJdsrSRZ0upcHNtA53J/D0uWs=;
	h=To:Subject:From:Message-Id:Date; b=eXi+ayTDHuiGFeTrPRGgD2XRUdpNHyGQTuV+plng5zzUepgrCnUEq55J4M4bgbWitteOD77bgD0QIan+sg8P/aEcN4g22Lj5P/V+3K78lm8nAIB/nEdr3WJMYnxvhNZNNER7sg9O5sCE75LnmSQyMs91QKSTGfnfi2O90gliASk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdJt6aS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdJt6aS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B1C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757399993;
	bh=VUeJSJz3v7iUFSsmRAOJdsrSRZ0upcHNtA53J/D0uWs=;
	h=To:Subject:From:Date:From;
	b=YdJt6aS3fWg3pnFSksiIEguWW11qrhuEB9PcmXg3nh/vkgVtRGQRflrlAkec3DTvr
	 toD32Gj3ZXNLhUQicsiiWD0eR+dCcjMtlojijerSzF3GXG0B4Rdhs2lzHkf5Ntxj9c
	 9dsJSanos7C2Zs3vrOo7SsqVMk8e7qA47lbjaTxtD9wqzvbTZoj7XoPoKMHDB+/cS3
	 6oSYLZbPKotVN5aw+sRmhFj1m5yANG0mjuv2pPY72BsvyrYCVHmeTC3nLXWvg+PRVR
	 cE4/AVtThoJL8D0kIBurRKcqAnFz/fCf/CSq9JTZa9jLS0Vv2k+CGnlqG+2PJ1G7fN
	 bQFOXObDEs+Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E7CAC587
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739999358.21579.5543868507446249880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af08315eb1db363664169f55aec9bb3de00b10c959abdfe43e97d8d8a17a99b
Date: Tue, 09 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757399993
