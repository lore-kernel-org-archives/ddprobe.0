Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DDF2D0C63
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773153294; cv=none; b=f+1COteaaLKFsw1X6XU+O0Bq+fVxDZfT2nz2AloVP/D0mAkX7hPmoeiKVK25HOvz3v5pTcZE07T9382slp3iDYrvFzWujXT3qtcHr1RmLheg6acrtSERWSd+eMuMgdw/UcnfJUx6xZDiHCKAi0ntcUeGZZHjhsxXYCUUkSW7f+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773153294; c=relaxed/simple;
	bh=zL3JLw0GR4ixPUXAOtUsMq4QrMUvCWs49WkkpVwrMe0=;
	h=To:Subject:From:Message-Id:Date; b=A6d8Ql56laFxnd0vOJxLzp5X1YSLPdb9Sj58xm4DtD+t7uCqsHQb0Y+YEC5ZSHwoVGr4RQIHNVPskjLyByLVeMG6p7ZZ+5JK0srWwP+5PrfVtAhxdQa1sLxFYLtsnzGbEYF6NELzm884Ocwh167Dv/GVDdo7OINgBDRL2PceIx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1ODyfQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1ODyfQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2134C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773153293;
	bh=zL3JLw0GR4ixPUXAOtUsMq4QrMUvCWs49WkkpVwrMe0=;
	h=To:Subject:From:Date:From;
	b=I1ODyfQ+qp7DXW5+s6gr/HOa27gw61l7hoFlD1PDKlktfoSEXn7r3XZUHavZ4XwYT
	 n41s/d0zvL3vAfKrW9i+h3t/iWYQfEWI7m6eK8jzrA/EuVT2P3zHEOO9TZ33vbkqZ0
	 Bx62dUW4dIjestsB7JQw2xhc/fTy0rh+4nKDb15Hzn384fhw8Oreu0zCxBKHU3g+1r
	 y4EbRxGI1q2dDDC6lC15cfPc5OkNxQgxrNxxY3GtEY6sZcFbOKtNtpCJf7dFHlf6H3
	 IshRpe0LPWJw566Zjwmu7PGYnorGBQUbO2zetDAqNcSJUg1CauJglI2glls5KYNSN8
	 iNLEuJ9Ir9U2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C62EB1054
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315329358.22950.11527135930674856310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672a1e37d1828826b0423a31b1da4c41318ee5ac7353f6ea37538a5720ed6297
Date: Tue, 10 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773153293
