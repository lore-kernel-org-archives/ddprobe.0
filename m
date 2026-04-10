Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253FC3002B9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775818654; cv=none; b=XM/ODejdBck/8MHXigKaQLk/bwrLA1V0IfofnQ/da+HU7vL1x/5ncM+Qh9TcDCw6q9ENLH4PNY70yEb7Swxxya2BCom5KEdR2iB++KsiHFApvlfphgGhu9LiUtObj6ibhpbBZ79MkhWh6kyTnnA477SiHQDO8IOEpJwa8lZ/TeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775818654; c=relaxed/simple;
	bh=p1a4K7sYC8lU6EVekxkwuIh6b2zMQo4dQTD1dwnLVXA=;
	h=To:Subject:From:Message-Id:Date; b=KeC+LBKl8u25LE/bQ8mpX5GjXqBuFpMmv3molSsnC2K30moMG2RmqmGPOpy+Ijmky/Xb5ltcH5XI0ZHaiczFgMA6+9/fFIcafONa/+COhpgs2NpCNEjUAi/FEGdgp9ArIN9w+9dV63it0drnX3GGxFELBFnfAwF24B1UvrZI4Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0XN6hR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0XN6hR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77DBC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775818653;
	bh=p1a4K7sYC8lU6EVekxkwuIh6b2zMQo4dQTD1dwnLVXA=;
	h=To:Subject:From:Date:From;
	b=N0XN6hR1ejOlfP5pHWWf0i9f5utLlwkXIZblySm7re+xRL7RFhUIBfo5lF6dJbQmE
	 +e08xgYn6v+eS+I6kQ1nA87NfdrY6kFT2rU+s274ZklEY453AW2p88dCWQWr3QFd8Z
	 wK1mEzirPTvdwTjYuCooiDo5g7h6FHFElXWS32x9jP/vzRYiVt08rhH1fFtQKtWlmK
	 GOjRG4h/CKjxap+bzvH1YG2TNpbCeyBb4f986wjxiSO3G0068ZBDFZY0jnydEb+XHH
	 Xvxk6yAMHG8NWWIDS33SG+JWHNNM436gsFCkfXXsoxvQg0MHzRdjUu6MPh2azqM4Z+
	 RUQZU1zCFUCtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A941EEA3C5C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581865368.5019.10238162428007389287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b11bf5ce205e783a8aaee44f28c2e4768730245093f19ddff1809fcf6f21d55
Date: Fri, 10 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775818653
