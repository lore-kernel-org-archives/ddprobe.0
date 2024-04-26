Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763FC1FC4
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714141943; cv=none; b=hUnUUuk4XkA24hGayxuWySdXZr50mJuUC5skHAuDWtmn3zwrHj0Bu9PY22PYXYBPRzk3x8hGjN1xXVUqpicG/WmZez8Ra88b4BD42mBvzZ3xrpnDlCaDzuL8rFPWY2PHFZ9x7p/nzV2U1uXNXze2JKlgtW1cpsb3OqDAb2koN/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714141943; c=relaxed/simple;
	bh=mgVV5AJCZfchOp30ymHe0cbWwN1ejkFHFLFMZaM3DjI=;
	h=To:Subject:From:Message-Id:Date; b=skUPzhADvcw3UKWq1D9WcRiObLmh/Szwqcv5F6jp9Bmbcqp9beuF83HBdmz8ACUdi444ORyuOKO6guiZPUKTRGGNAtvOQgx0E1mT+ChJFkzH8I4vHk9N33o1XEcT0JcIDnDx9d8hroGlSJXrCqmHcZ/P8MIaetIh6u5on6Pi3JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsZ1BxyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsZ1BxyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03480C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714141943;
	bh=mgVV5AJCZfchOp30ymHe0cbWwN1ejkFHFLFMZaM3DjI=;
	h=To:Subject:From:Date:From;
	b=jsZ1BxyZG8+DmbtxK4KUlmipRFgcAW38w0Dekaux8JorZZyDZa0C9wLj0xgd96lEK
	 Iu2Cmpi3hl2T1Te1lPf9jRZ4Oi+8O64BIjf+EfoqHg13KSctfwmgyHWJHJAW4+Bn2d
	 Nq8949hK7fulCVhq6VQHsubPq6e1Dx23Xm1D4ufvHgqWkZAQE1yaI2pvqFL79mBKyV
	 azKZRq6sQKCcLvQnj2bFdGCmglC2qGP/ULTdh+7HwWjQjpzENMfDVmd+Zmr6egbMYQ
	 3Jok78WeJ3n78htJ0Cy9JoMRLkGbrG0nALJzbn/DefGzFRS2XqBeBqEJSZj4qs+cTn
	 qHOnIFLp/EfIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D778AC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414194285.28733.4954013682465393397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9ff1fcd1b6d8024fb0e75c4b6e8803fd3e03830f59322ac0d98c9d71da0787
Date: Fri, 26 Apr 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714141942
