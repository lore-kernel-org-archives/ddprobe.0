Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EDF468C17
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791760234; cv=none; b=VHYtWnYdabBoo7mWO/obpr3x+T0jshMUek7HBhkJoG2CHDoYM7HRnUtdqXldhSw2BbpLaVMDI6ZxiJDKKct3n3yps49RmsoaODMG9YQTrULOiLRo/mA4Sah8uB60fJXc/IthRwMDS3522t6btQxcpX7137iK05FWdPcSiU2uVw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791760234; c=relaxed/simple;
	bh=Fu+lAg1h7RSBzeP2KiH/w1da1+NOer+b1EtpO8SeQrg=;
	h=To:Subject:From:Message-Id:Date; b=Ya4wdbQethaalXl5Rcdh6CWS8l339Ghtuscd9R9cVAbiKQsF8q+r5JndZtAwcO7Dt+LLZ4NLfISAp+pQO3PYkzI6h5QcNdo8cdbtFDe0/BS+YLW3K+xItzS2dKA0aeOjWGZv/JY3GJ5pFjKSpOGrJFxlExBuIN2ZdkkLNdZxkJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlAIvVjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlAIvVjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CC8C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791760233;
	bh=Fu+lAg1h7RSBzeP2KiH/w1da1+NOer+b1EtpO8SeQrg=;
	h=To:Subject:From:Date:From;
	b=qlAIvVjvSs7PDHsT4BctVoVAYny0Q6qa876GALfGJHFLcZulqbzNfLQ6G4Ntrr3w4
	 ijbXWImjO2HZzDzDPV8zhODPwJ4PEdSER0p6wpgDChXaY82EEnWHJumKFWGkCBSdF7
	 mtgE2KNqzsZe5WyPzh1ol3i496k5sdJDZVmNftwU5MTgewoJox7LCRa2XSZytdXecw
	 mqH+nS5pso2pcjw01Qz8y/5GwynFM3M6MH//G3vk6U8C9gCFZagqmXfpUNFAWylo2J
	 EgcWyRWgiNg7p8KbqYQOrspWJlvE9rVWqY0ylX1XX7lMqatxpkPZUhkIUHtx3dW8gU
	 7MLVsItJVOtxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD7ECA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176023368.17441.14731676074555416948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a03e8609792b2a4ecbe1dd2ef780cfa8382d50b44de2d3811c5f412d193d6e
Date: Sun, 11 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791760233
