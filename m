Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475D4381AF
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780618474; cv=none; b=WfoBg3TSu4TBiFOMKYI8aARDNwuQES+Z06MOeyemaaWcXdqMJoFX6OCMJi7BPSW03e031C4I3pJng1QjhlYREywrAHJktstcqLsL4Rk8hJyl1+uOcY98PSU+ESZNv0uQeF1OIbL7i7zDM+E6Gdh03zQXk3iNRDuPH68panPSynY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780618474; c=relaxed/simple;
	bh=VDcw79oy4mNwpbDUAoyoDrJmBK+TmrAh6IEgaddFlGM=;
	h=To:Subject:From:Message-Id:Date; b=HTzW5pYpVtCOvxAKzG6AQSwKN1YdjefqG4go8cq3pfwCR6wpGwJ3g09Eg46mJmAJ+58EKKHB2AMvOHAQrmNPRRUjnkVxL3V0XpUcq8Gz4Z3m49p7XsMRSBcHFKPvz7BagMEKVx/elPWPxAqsc2o1r0OzZnXZPKjPK7EV6JU8MLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yb+OjFp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yb+OjFp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCAAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780618473;
	bh=VDcw79oy4mNwpbDUAoyoDrJmBK+TmrAh6IEgaddFlGM=;
	h=To:Subject:From:Date:From;
	b=Yb+OjFp4G0KL/ozQbGEcmsDg4TxIQ2gCzLR3BcI2xvu1I/cPOXZ3BsBIR9CxMqS1K
	 cxvhThkW+T003n8lRF8s4YkjvDY1VHjxgfCcRM3FfpUybqsNebmqriwhZFyjcXlaEG
	 FpcPpsqFIirtEUUmRwmDd4al8fad77MFBua10tqxn2OcJdA3V1JucyNq4nD9ZuvbhB
	 Spd7L6IP+LZUVG9tYtRQihKq3K8QjD0IRKG4u/GUsSmoheqMEJHSDV3MYLHkjhwvFG
	 K9OBGxtAZC94cxu8MjIpo+zIoWAyUKZQ8B0Jr26r8I2u4IBt8hL2xJbHcmKSnGxW5e
	 N3Pdc9aosbhYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B720BCD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061847374.21549.14458490259247266155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70dd59a3d0e4c5212f81ed83412f770455f4d0a5874f937a23f5291e29a65ecb
Date: Fri, 05 Jun 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780618473
