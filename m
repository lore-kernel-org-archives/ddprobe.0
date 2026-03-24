Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8323DEFF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774361094; cv=none; b=ZQTgdWcx1Bl8Lq3AVaSL1m1Th/4L9WASaCzp4iOlARQ8b/4JtGSjhcHlCSHlmvbNgxxAICVaLR96+O8M3hQSmaA9zAy8E/WwxD3UzRHSnLGu8bVcnJkbwRAixasfCXu7fcOEcDiXSF2aLly/3M2jr/DmLd7FUmKvQIc2pcHqQ0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774361094; c=relaxed/simple;
	bh=OG6imRSnK/CLanRDGeaiDZKqV1DWWj1M8jiovkWPBu4=;
	h=To:Subject:From:Message-Id:Date; b=a3xiE7y79z0w4cnGlvt50AjbPASp8w56q0MhDGR5nIpFkZz4QF+yE4QyrMpKvaXqJzsVzZXh963ZwksW4/fGqB04Q/cJ/Aj+EcUujvdMUvb1WIIobRFxTsH+BAAjLj0zvNU2RDR5MbyL15ezcoB0s65dmQM0h7tB5np1WPR4evY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiQCYPEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiQCYPEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD40C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774361093;
	bh=OG6imRSnK/CLanRDGeaiDZKqV1DWWj1M8jiovkWPBu4=;
	h=To:Subject:From:Date:From;
	b=eiQCYPEiEP9EarpKaSFQdcqN2MPopPbRJxA0y8f+ww2nKAkkHv6EDdDNeHC3C/Psp
	 M++YoSy+6sFilyWhKEAg3MjtZO4PqwCY9lX4pap8rC1IvMsoAc6tKgrXVcioF7js5i
	 AeI+uMtnouVzJtw7T/3AAAq68uv4A5WSFUICWpbUtRRtTpzE3+0f7Wbd+jghrVqm8E
	 hC1f8hSDd8fhIt5n25c68WPdLeu6JA24bW2o5rS1SMkdBvPim2tGk1YHgmvqTl7Zme
	 yF2hZK1r5mPgvn8X3HNpi7czBlGFVfW4Cx+6DsHwtAZ+OjZkGredzQEigKi/qXAVdm
	 tRF1f+Lzr/AFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CCCF54ABF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436109358.26552.1716732406904017140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb199cc866a86ce7aa06c7372bfbf128d70fc743b9fc410dcc31e5d27595def1
Date: Tue, 24 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774361093
