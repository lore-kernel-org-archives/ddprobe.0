Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018743126C4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756276794; cv=none; b=X8BEXEMIC+sfPGgJBCHa5uLYQ8QQZ01mOZIROnMtNfDYpslxBOiXfY0RlWuZdKXO2GTiV3ZEcMuwLeEhbO+HWR4NXvlEC4bdekD74OSKA4IMAqv2VoAKUL3jE0vKrUZAUzZM8L5sulkWRQRkSeedXikZRytK8sGmq26CQ29Yfa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756276794; c=relaxed/simple;
	bh=j4md2b8bXKPwPBg/7FHm56dd19PlCVLcArUE6LcyOT8=;
	h=To:Subject:From:Message-Id:Date; b=qow1JerAfI9mCOWjGZlPPpDbtgd8qGo9nJH6894g/z9JqVRCMujFaALf3hi2h7e0nS2mF1m7KrnP01di7GDRhdFsY/l3f1RFspi+PP4wLEJk/oM1lyQtSON/MyO5SKOs0dvF1tpQd7hlf0CGRZGkim4k+LDt1SHJBnx3qUGgsmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b945GbPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b945GbPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F689C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756276793;
	bh=j4md2b8bXKPwPBg/7FHm56dd19PlCVLcArUE6LcyOT8=;
	h=To:Subject:From:Date:From;
	b=b945GbPBnOdftrTZfaLvBSSGVkMVmMo5EDK2JECx3igemyj3+A9MBbULdmljy9trl
	 /RnGJTbq5TUanNpdMgQ/J9YLNtKPBh6FRml7KAcGcsL6qdA1/3ub94b3qcmmbxgSXN
	 d8ZpLmmqacOs/bch8a44MvSzSVc0yJuXtavUs/qtPOvB7D7kWyZJwts+AtaSh7t1UJ
	 0JBebEygjK5D6u6paBvs4X/vXk/ckQ+ht2eOKNX3OvbQtGc9GNc4POzJi2Bgp68T6J
	 NL1OgDQLBE32IuThwna5qEVx6bGezMkHsMtAGfDBv7XwWDXJ1E54FOjV2uq++3lIfQ
	 SqAtTh45algyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9041CCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627679358.5463.17987922682123779522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e690d313cd1b127d6b5b1b980b39d1c893b405bf4f06ec01412592770f6f1c7b
Date: Wed, 27 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756276793
