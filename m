Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4EB3655F9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780349074; cv=none; b=snwKgXVbhhIFNCivxGwS9kXnwHiPcZD0lUBwcFRin/L8l+ZS9XjFgob6+pi01DGyTHbv3sfKtA9Ycw4bM6N2bnSVqsUmrJtohMOlaKWBKOcgcGbCQg2HM3NHN+/aHyaFIqCZ8vNBNwwxw4eB+wHttX03JIWq+LrxOkHyz/VFfs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780349074; c=relaxed/simple;
	bh=OFMyoVFzDIMFuNyE4i6KBXes52Z1GuhQMo2F4n4SNtc=;
	h=To:Subject:From:Message-Id:Date; b=qb2IhPG2mOO6T2Y6KjNdLYTS5zevzrX+LZi7gdxcN8Z9qNH+DphuxwoOxdG3GzvxL8rMdxNsvoM31Vkk+3zfRAky30ISd5ALGmkRfD9Vy8eUQmTzSe7y5bJu9Zp3LB0ova4bMK2prIjxhYrTL4cl59EdgBW/ORAzNpUHijOF5ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMc4mUsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMc4mUsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C806CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780349073;
	bh=OFMyoVFzDIMFuNyE4i6KBXes52Z1GuhQMo2F4n4SNtc=;
	h=To:Subject:From:Date:From;
	b=cMc4mUsST6kt/GYgIVlhpBja8GqhlNZk6ZQQ3taS2WQyycV1Tlp/FDDZiKzm000U/
	 kYRMoyrpyfRR83XV+fmqGrXAMrcdY2IFq08C8KRPDqw8Lr4n6/Mn6DuiX14v22QDRx
	 VVnaw3A9wx6JLmfqLE5VbUEQO60V8ZDsnXF642TAl5+m6P7OxV1wfGnJ6kWWoOiMxt
	 2Pj0Bv0xqe8S4oo0J3QBCGjCUZcvBTHg8dBfKigzH7mDk5DU36JGOwodcfrB7FAPeF
	 zyTo97Z8IZ9E+JhEjEVFWavRX4QiLO/mXns4JhwwBr2t8y5V8Khce4BaPjn7YAhj19
	 n5v8+HeJqzshw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE585CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034907368.20407.2603981574804089260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ab11988be1b9465681a10f99c2a90ced0528565b0661004ae9ed6bde2458c4
Date: Mon, 01 Jun 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780349073
