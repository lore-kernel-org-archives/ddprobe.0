Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4701D5CD9
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767448434; cv=none; b=aUdqXGRtRJuPHXB9AMvjHr4A4oHnZYCcfkiMAR3A0bx96Ddd7cVh7dLStRvHn8iB/yIyBThVDd1mGtR30nhClqQXgEGMTieBkPP823HilTDdqUgvwGHiSeN9486lSPBp/UfcP/9ImKZnZAiokI56V4KFwh6h9MslsLNw2vDn1eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767448434; c=relaxed/simple;
	bh=XiaZXJlZUuMH5ljVX7p0SziOL5DarVzvVoM99ubNlE4=;
	h=To:Subject:From:Message-Id:Date; b=Xc5+Ndec5/keI2sAiw1ZYRjjh7ZgArJpVEpo1bLmXb2t72N/QsaFNJQ11saSfUyEVJFL6CVKG51MTa1/Eb3xBeeDNVZ5dU3vdHcvLfX88ejO4cUUS+pda/tJFc3qbpnbUc47x8zegmqvqd9m4nHjipxW8xe+BES/IoIWbWkrqes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGmtCrXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGmtCrXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA1CC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767448433;
	bh=XiaZXJlZUuMH5ljVX7p0SziOL5DarVzvVoM99ubNlE4=;
	h=To:Subject:From:Date:From;
	b=NGmtCrXQgQpYeApLPpd2GhsETKh7EthQoHz3/057nvAC6nBYu0XAGxgZxh0YKO7Fc
	 fgb6RQlEm8zY+3c83LhIYfys06UbN8VqCiAAxKS3rqHIUETCRYtp5O0UcmlI7yKFTW
	 yeMtQL3Wz0TrpWIcIC8h7b+w2pxNayp8Hp/YyCPSIsyq12FelM/+iSM9j1Njx8nY2u
	 Ko5xlRkYlHfy6s06LyCfMVvYJRXt/RA37PyjgRRFJJwRwmVwKJBRBTy1zghMgDhMVG
	 s+q1cjViKUvQ+3J4h5BcdaXHeBdh8fPDKwCxje8wzIvBoTzx4ms56hJth8vvNQm1QO
	 Cbrk8UpSJjIug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BFFC617F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744843357.12504.15791386384762465296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc65f74868042cd7e0bf84015068a5ef1eebb662315052944093dd63694b9761
Date: Sat, 03 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767448433
