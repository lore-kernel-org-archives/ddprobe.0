Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2717C8C0B
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757305794; cv=none; b=qWM57eugUJtluB29Bv2oEXK1jPSSSiuhamFOxrLUUILxJMcBUSBZiCX+9ALfPPKb8DLX/0D7iuRsspyI7JKSG4ymYI+yHJEajaZgUoSN0+JTw0nMOSxRnaX88bq1EB5xTn+0DP4qJHUQQ284uQ8zo+/ZZzvHocC7fmfg5ZsH2Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757305794; c=relaxed/simple;
	bh=C4Z/a8NbP5emyC93qYI64XywVO8G0R1o/j/bP4z/HtA=;
	h=To:Subject:From:Message-Id:Date; b=luaXs2Vr16nhQjQRQSqD1orlIpsjx84iLVBH0Z1T2B+kVTUripzaR347jXO5CsbsE3MHy9mhmN7NV7BVRXwmE9LTrLatqMgZPYh/Khwk56y75x4vRkuXp4240F3JeB8fNQ4cQBq955y7WruVquFI75SxZ2+Z8Ewb/EHh5YRS8wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ym+CCmix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ym+CCmix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0347C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757305793;
	bh=C4Z/a8NbP5emyC93qYI64XywVO8G0R1o/j/bP4z/HtA=;
	h=To:Subject:From:Date:From;
	b=Ym+CCmixc05P2LSLPBd6B1qLNw3aX99XTYBU2DKTEIp/4rKEgUoAAJSv7dJ+ksOF/
	 4xsmFpny95jMku6Yo55GmzqX6OJAELAkxmpiJAw8YQa/UEWLIJlwNsh0pX2sA4agCj
	 JQYB5orF9D5zexS3c3wHFhZQ/xbTQa2od+JnT7b/B//tsY261r2vOunRf27bsDX61O
	 G0ZfIGZopTs1BqlXVU71aklFS4KrLKFyiimmN6N8G8jHKSUIYIXV6Kabq3JGiiqaeE
	 zyLQ8ajdDRdgBz5yXhUcbROjBM4+ZrOKt/25hKnBWZ37S6ncqb2Fq39pdRB4UI4qde
	 4RLwh5obuawUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47CCA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730579357.23341.16638714020039472302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52806564bb9e087bba23435bb040486d5488c12f974c00884341d552f6f17623
Date: Mon, 08 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757305793
