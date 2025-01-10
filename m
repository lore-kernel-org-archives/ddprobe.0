Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1671616415
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736470554; cv=none; b=STPTv0AdQ7ApF8icO9WtnFnAP10hdOyx8XRFqzeF/f2HIozCAcjUDI7qH7V86f+qp7f2QJes9OSduLqrRQ+ZmtmhRKWxqKnQOe0KvgHELlZu0eGuFVT0U4Nt/9WHGj7JC4es00Kr52IDN1aorXaVO5YC8fWBcmFgpgfGgRLsDxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736470554; c=relaxed/simple;
	bh=8GSPp5Cb3bQmHrT8pF8HLLeyBQWA6VEJFJpIIEXMVCY=;
	h=To:Subject:From:Message-Id:Date; b=V4crcybYHUXR/gCgv4fr6oDirlSrj5C0D2EvoTSta4UMcjcvth9D0EoYFsdUPFbAOn5Fhbp4pLS9S7f1o7vB/GdqyXAfeWHTHOjCXgUmtSiENuWUJY7S7RCGYaCKtdUJv0dqbySucXCR/jsY0ea4LSwraj2g1u983hY9wKB0Kwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akaad0Ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akaad0Ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E6C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736470553;
	bh=8GSPp5Cb3bQmHrT8pF8HLLeyBQWA6VEJFJpIIEXMVCY=;
	h=To:Subject:From:Date:From;
	b=akaad0EwSt4RcMbQANZovlnK72vOe5b8P5O7LwxtHfBlmIrMh4cjDFaAb/lQS/J7P
	 Jlfx5b7/tzIfI9/cejSFDJlezmQdceJsFRwFQSApksi32pNXU9f9LOnMVfvWwV6qdZ
	 S6Wuooj+d4M0HXT/YDk8gh1Mcg0JXe5bqVYT5jtydd49rytpo02unbPUxFV6LKYme5
	 tMkw51DqWahajhN5eKIslq9mGBf9ThxTtekVG/SYZqigfDoqGAVQziBzUvk/LDYreb
	 YRtgErwG8BtAOee8WK/M/o3bMEBG3ia47c+m2k1Q3c17oCizo1NBv59Kouf2t2dMQf
	 092aF9GJpe+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F559E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647055357.29460.8527690671832881935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5774b8dbe2dcc9751d2f6fc92cba6ad68b861a3237f80a6e04223c5b3b76f32a
Date: Fri, 10 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736470553
