Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300B046B5
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747534194; cv=none; b=IEzI3W9btqCKsLjhvr4rchL/8JB6mQqqOkazzwxRCZAMJSsBITIpJV3TTqyZKJ/YVu/03h1DuFiHHoNvCR3JCqvq30KtVyJbbddTeHXYn93mPJwQVAzwMi8rOlsoPaj5wa59Y39CtnZAn/smm8PULSnw+9CWUMme1HLXHvsY6u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747534194; c=relaxed/simple;
	bh=xAw0QUc0yxo2039mVvw+kNqutN2TU8fxM7TVGU4w1wk=;
	h=To:Subject:From:Message-Id:Date; b=nT+TxmIsLC2tkqKkjKt09ORgWZiwYOhQc0DqDAu6VdBPEd86x4C8rCknwMNJpluc+sYTlm8A7VMfY20/xROeGvqjdvlf6Pw6CiXA4bZg9BPEf/QU3GJ7jxCgDwfqEKvxSuJ0SXYw4HyDvP0zyTnC/2ql5hERt0UUNwMGGXit51U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeBYYn6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeBYYn6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5CBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747534193;
	bh=xAw0QUc0yxo2039mVvw+kNqutN2TU8fxM7TVGU4w1wk=;
	h=To:Subject:From:Date:From;
	b=YeBYYn6gEn9PvByFpEK4UhWKPnGSmUxDFyk+JEQ24PNqBp/xFCnxzgH82WM60Eflm
	 4/4OyGREtljZ1Y04sBjRFqphpUs+89kcl/dhrGsJ2+wEx991WqTC+twD0mg+Eaxy15
	 hCr12AMe0BJ3/UT6oo21YPNQrHsnvuYMdLEyzFIPZ2iyHcqn4G0VzK6MduJKDpTz+W
	 fCDZaV57z0yCZBnYyJBlxehjAwBlv0QnPbHLjk3SUGH15QyU2zoKUuPGzUzRV/M8Qr
	 Vjy0AaXBuilMET6WPRR0bM5u+YSG73Mh1uMxK/5Sm8IPzh79B60kkQanwJipc/wLBZ
	 3GyC3sXjbKlAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F235C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753419357.3382.12694623570074753984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca7203d0d243cd28877a50d76689d9ed947d6678f24940c3b7f4d6ff74a29a3
Date: Sun, 18 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747534193
