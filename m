Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA0535BDC8
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761143994; cv=none; b=PZ2YV2q+4+V6oJWB2XtkoGvSiYJNm0cT7iEMm2HhVcyg82rgbHERdwjVY4z9PMfnyZESuxDlK0w+PRQ5LDWJrjCFUWZlnMoG41kRfchXXV7wnt1ydbsdnX+niDMu7/O5+IT/ak725p2t8VMlgxTVowMoxpK0k2r05COQZBcMphA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761143994; c=relaxed/simple;
	bh=7b7lVqvWM9kNmWo7ePwxyKRb/2kMIyNMg3pk++0bTS8=;
	h=To:Subject:From:Message-Id:Date; b=OQJ9ay2XZiqkKY58QlbKnTskAhFpbwuXcz0QTQh69YkV5oelb1eE/hSiRkWylWh/6tGoU8YjH6HHX0yNye8CRQpDjfkdcgdX9pk7ymUNzOCNYpJ3mVlgDzHbFNimYxfLAW3q3Y7ithOfBfXdYy8l39sxWRnYYjDIxF0gAyANSDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHPKDA8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHPKDA8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2D1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761143993;
	bh=7b7lVqvWM9kNmWo7ePwxyKRb/2kMIyNMg3pk++0bTS8=;
	h=To:Subject:From:Date:From;
	b=AHPKDA8ZfWSO7hIApsjUS7cs70iZgKbTNxRY9kYExRTqfbxH6WK1XMWvFKKCzHHoQ
	 TuWK1e9k8IbowlXB/+zifzp1QJeL7FemOe/cXS8TtrAA2ipk+pDGeZ6133dkukoxUg
	 daZkM0L+YF+7TwPppMMmF5pbtngN85tk4AM7UtYDKs28U9S2hkqacis26FQcSYNi/2
	 DCBoFLM/KulniuF03mZY4js+ILyTH1/lwrucx2er6snYrtt1ApIGB1Boj/2/QRpHUF
	 zOWRK9bRcRrEkfz7quS9OzhjxVKcFf5p++IF6YenOMNaOenZOyNSNSJ0SQuodjpV23
	 KfX52X29ff4KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DDCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114399358.14842.185379720922717712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ab50e24223ab4f1b691dcb5459ee9f5991d6862a4628f9af7c6416e0985145
Date: Wed, 22 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761143993
