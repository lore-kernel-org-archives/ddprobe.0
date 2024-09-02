Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295F319CC20
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725300954; cv=none; b=uMLlmT8eH7QcbQ2RBetI5TbXkHpTjfifbOaTQO6Avq6KmpkaTc6O1IYl6Jkqk0KChKNO902sa6RkKm6c+OGE6iukP64hpfTsy/KwzsZbi0veVEBVykGM4tRn33mu38d1GapKe5+jwOFj/VJDnuTLkCc5d+8HYfrUi86zcA1DIIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725300954; c=relaxed/simple;
	bh=W+QYGVUoA5yqveLg9xqo4uc3aTMukjRD7vIxgbTEj5s=;
	h=To:Subject:From:Message-Id:Date; b=FvQrRxnfUdqeQToaXgo/u/5O+1J2MqGoom0L0m7j5H6k6npL1/AxLAgMcFe6tbelurh7tJmjCODTPE9imavKDQPY/7D0i+LrfbBCDMXWYJcvhIlHrCH4Rsb7x97WcRn3Yf8EBUF8yp4RanCS3505LCIOjBXbZgMnPSKtPGYPWK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1GoG5VX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1GoG5VX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC9CC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725300953;
	bh=W+QYGVUoA5yqveLg9xqo4uc3aTMukjRD7vIxgbTEj5s=;
	h=To:Subject:From:Date:From;
	b=S1GoG5VXya+kcZ4p6TODdk1vtTz4InNqy7lEPyB8SbALjl6DctjgTdryMWqIs7UAh
	 mDWDdD136GXZuUllOn0WyyJKmzthbu4i4er15W/CCCxD8Ho3Chj5VprTwEhzxY5n91
	 lOoGFCuTlKY0XgrXssLBoJmeF1stABYYdwwIKlPx8nP0G4IV4MI2I6WeUZZ4/g1Fnm
	 l3uEa37b4Hf+H79vHCTHO/PFLiVqduFxLmNd53CafApwV108P1ZmgUTZdIIVrVKUNi
	 oHrD+z52lvjPzH4jBYDhvoxdPJcxjsDu9FEgzuAkgrZ/Qiit4vMplY+vLnWXC+TQ2i
	 rx8ItNGdgJKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984A9CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172530095361.17580.7514518928187765033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41623c888a9ef9dc2ea5ce41f83e0cf29054b4a9f49f6ab0a2d20fd2c8fbc883
Date: Mon, 02 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725300953
