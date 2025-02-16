Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C77C2FB6
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739712534; cv=none; b=LadZ2Np0qdu15SquoEE7HXa4B64ZvOz5EJxw9H6nbM+bGNsHvCuWB3gDW9QaZXLmbGpmMZ1fbkeiWBbACLo0KyXPTeTHOq8IuvQOb8fmGgoN/mxYfinFAY4/HVAfkuJkMbb/FwfBvxs/wMz5K8leic3ZQBazWaWeOqIVK8/j1mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739712534; c=relaxed/simple;
	bh=WgsKQuTpdyU8+Qsp+e6NSsgUV4Zg6BE+MDOWcub4JNc=;
	h=To:Subject:From:Message-Id:Date; b=FibYlwEGiVFGzeSmML5+n6XKTAxq/bOhBbyM9mYsPtHWCsT+YRlx1kAfRUC+t+zwS0qiJAvikjg4rapx34tb6qggI03coS7Hz/sHFXpY/f7FcCnN0FudQKKaMq4eWYwI6/FZp4rWCT4t3g/G3OUoXxxHLjeuK7B97BB1z29B/iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbsgc9yO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbsgc9yO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C53C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739712533;
	bh=WgsKQuTpdyU8+Qsp+e6NSsgUV4Zg6BE+MDOWcub4JNc=;
	h=To:Subject:From:Date:From;
	b=sbsgc9yOJAfa7JNi85pWsXFs4SVrtwx2uhKQmPxQqHP/EGdmcK7nC/i7D6O4zn019
	 7ssaoR+wMfMKyvDwQYR4H1/u6Kvwz9TO8CE2ErjiRQQJe23Ea84z5V9/KFVuCmBuNT
	 tXBhTx55+f1o7ACQUhZHmepVLBz43/WhGZektQw9BEmzvjYNuYk+yZRlBqf3VIxYhy
	 FGphB21Kqv3qp6UvqIoFgS2eThpFBVkp9WVeZdUkRe4Kibd3q7dQCO8EG08dYwGVfJ
	 q1Ge4stuLB1RoyL5mdkdQu4eVhpb/PG90v9831pMPkvVnnsPcW1h/CwA3I2DdifDBk
	 VaLdeqc6h8cXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99889C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173971253361.21168.11634763406169585210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f8b82dbaea45a446e2341fced4685ce74ee24cc18d1d73e9a844ff02211db0
Date: Sun, 16 Feb 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739712533
