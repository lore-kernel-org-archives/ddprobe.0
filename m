Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311EE1EF36E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774811694; cv=none; b=dK+gXb2pmqmH5pf30YUTovcy2xpzwe633E9V6S2OpnZ9+h6lQL8QgvCTzEF5T7ywWQNR7vUcTJPNNiL0IXv22uxIPDrk5XwVuGHBrpKGkZTt12NeQl0qk6YJ9RRN+IGRR1CywMbvRueAbkg+vMUwE42mTfbhM1McN4QRLMXKXmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774811694; c=relaxed/simple;
	bh=GHeFkeXn8nsx458Fts2MJP/TC9myfqzCeowsvdH3MQo=;
	h=To:Subject:From:Message-Id:Date; b=aGY1zDy8pjeVANvFELjiJJN+z5Jq0AuROabDS6h0rvSM0p4HWMwfEprveHSbdRMrPVvFxPegXvQXAZmFYo/o3D47slNBW56HAngoAF9ejmP1+ORGH4HjDlOgjMU7hcmT9Ks7q2YOguUFiwxkAmfHDJujP1mDrhIvQvBGJcLJp9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEVcN5Dc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEVcN5Dc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA93EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774811693;
	bh=GHeFkeXn8nsx458Fts2MJP/TC9myfqzCeowsvdH3MQo=;
	h=To:Subject:From:Date:From;
	b=hEVcN5DcyQnBd555nuyfjJzpwOJ25rKeBddpruyv4v85+J+81Fdid6jLxvGoWBrRS
	 EF7jILLhZ05teAfkp+dpcfypc+FE/q13UfrHPaNaqBqAoL7iRJIigUc3/IXjpUP8Sj
	 Rptu3kT9JeceeXcV3Z6mcExPRsfWoKVnQIebTxpbu1zzrzy2lbbf2L0kqLFOUUvQsO
	 YiHvuPy2c4wFbkzahqqjUZ7iCCpO/gpS+qzKjauLjSoPeKv+3ET3A0tVZJbNcZPltF
	 JdrI42RH6LVDEbe/rnEtU3t0GoERTaNzAB1acl8JosqadCWcOjlG8Amw8fJaTDW8iD
	 wCoWpl7gJsicA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97442FC97EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481169358.22641.15163107146087082538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6e7708b246f0992cd59449b2e1fdec7c29f8fb57692e7e6c3255d8751dbd1c
Date: Sun, 29 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774811693
