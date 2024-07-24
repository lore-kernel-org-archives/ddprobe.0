Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473F8156F28
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721819154; cv=none; b=KYNOmXL0XQlRMVO+Bgeo5nxj+7WKl0jcjLEA0daSDzF+mZl//L51jVF8kpxQaudW1RBYbVXHbcnfV8e4qe+A0e2mJEqMX5uszp/mTwM/N4pburWagKnTimgkm2bRKr+8kd+fNdnvF4YrSPahOSfnt2yZPQb3+x6DERahQhWjW5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721819154; c=relaxed/simple;
	bh=COghUggAoWznw4t2Dt39OjJo91yv/ecfGf5ZRpsthGU=;
	h=To:Subject:From:Message-Id:Date; b=WomNsWFfcx3aJbC66MPEiRV0IM+yaMyE4wevC0VIapz26qsX2cN3mFCFHn/nWMWIe6zyw8Qldcaxdq3R/kAWtuJvs3QVVgUZMLDFkxiq/BOWAEq7Z0ANRuSo/H8NKO6+E7q9jRsrNU055+zuZVJq8wGTyRF/trrTfqPq9k1R7MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCzkQ3/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCzkQ3/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD731C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721819153;
	bh=COghUggAoWznw4t2Dt39OjJo91yv/ecfGf5ZRpsthGU=;
	h=To:Subject:From:Date:From;
	b=PCzkQ3/gImljEXbT05gKQQi4EZy/5iYvqQY3LB+PRfbhP8Ptda1TC7N5zBzHJbvGw
	 FL1lXlr2Fp/nmy5M+Gc3T1aeI8U9P+lbrXBwiKwzVwhkK7YDcjlNyAOBZIkI2j83c+
	 aWc/DOl60Y4q9SXH2ZxhRgniKudhKZzvJqjMZW/+aVjBYrV5jPdc5yMZn9s4XyZHC2
	 rxJoT6fW6TKRkx7ams5HlrSjEpw6tDgUNQLn/X+eIzuje00Vr4z1EqkAsv2Ps8jRHf
	 y6F0EV1b2JFVkaluq9VL44USBueUhGsN9XHHX/1/h7RKwp7bnS09lyqnngKYxxet57
	 z8AE2FkvcfcbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A482C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181915360.2838.17449529403455604761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73fd00c7d220324fb2450dcd408c707d64879e9ffe85370703ca0029f9ccde53
Date: Wed, 24 Jul 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721819153
