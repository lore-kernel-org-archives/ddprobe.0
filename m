Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA5C22688B
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749554393; cv=none; b=KN9bilKRaEVUZ2h2NfEDkm/y8yYwk62MXuR7oXEhPo0EUO4yqGI1Ofyo4R6G51H6FZTrOdpjbmkc16VtYmIyiYtOsb2I2bxC8d3nSBQLgCTsz27ZiXdcWsSyb/qUXcFKUSQ7Txa4ouEo2VB3A3lrdPQXHLxZ6+Ec1qAxkBwAFf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749554393; c=relaxed/simple;
	bh=TJGfJ/n6YRt4qRNswy0/pu4ojFi4L0Lggq77xDFWsss=;
	h=To:Subject:From:Message-Id:Date; b=uSa7d3V8JaWTbvggePNBM0b44QScxrbpaHkLGdER4wwi81r0EIp54abxk+MyVnnwSo0MDoXKhkxjGkQ+wQh3Gyb1ssco/eaa2H4pGjdveVUkT3eoc+/menZgV7ZW09r5k/E5LlPXZ09Lc7/wGdhM7V8Qe7vMZ9KGXXWjQWUPAx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsC8c2Os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsC8c2Os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9DEC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749554393;
	bh=TJGfJ/n6YRt4qRNswy0/pu4ojFi4L0Lggq77xDFWsss=;
	h=To:Subject:From:Date:From;
	b=HsC8c2Os15kI4VUCD/UOAnMJP4BTQ5Mo1Ct1lqy6ORRRNlngo9yHCmoqz/j9vyR39
	 dORr8TnJTIM+xCgDVyQWzH3e8H3/Y4TbtiMJRGs3fU2iLr8AonsOH/g2LLZgz0K1N9
	 Fde9wincCKSln5s2ehxwULruAFJjKK0E+P2ZRm8O/Z38Qbp82NkIM3E+dJYsFBM2JD
	 LfuBxX8Y6lPAz178H4I6BPWstHmAY5VD0qsL8D5mnlL+vuqA9mKUglZpJnuklW/oTw
	 Cmq5MPwe8uw+wmLwlKFpd5t0v0MlzmS0O09n+uOkejP14iVndRdaz+LSPifTNl2BXa
	 P0U/PyPkYexKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF1C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955439357.21821.13809697143881862740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5989a73126f5c64cf01cea73e7951e708ecd1a8ae7c65659e4997b58676c24b2
Date: Tue, 10 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749554393
