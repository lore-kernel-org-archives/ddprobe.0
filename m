Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E30C279DCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767518034; cv=none; b=NMa3rvtmFEvNmS5OKeT0LTZuVgtyeVXVNkRrv8rrjwW3zEJYoVcLUuholIyrAieoT8fZ3QDjLhuvWm4z62XfsH8baGOVlr3Y/o8LMxH/RbP8pHI1z9GW6yZCV1AQF/dMIOtqRp976sJGTehh11I4WZjlGPju/8SJHtzRurcO0lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767518034; c=relaxed/simple;
	bh=3QAhVCwVHvr1y4aOPyTLNfENYh/bw128BTCS+co24+I=;
	h=To:Subject:From:Message-Id:Date; b=SoJ74vZq2ZTZaL+/wM8Mx+s3krQMb0hDV0s1TvP9jP6zOB6iY7B7nMZdrz7KCOBit0E9Gcnvw8DWU5HTJTM7yXDT1w2V7v8lMtbgyyzfR6FVq3bpAeXwc2iLED+E32cEXVnnQ9HfQyXqtSYU7ZkezMJNN6G6Ll3nXDZ4M2dtY8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGoq41dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGoq41dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767518033;
	bh=3QAhVCwVHvr1y4aOPyTLNfENYh/bw128BTCS+co24+I=;
	h=To:Subject:From:Date:From;
	b=dGoq41dtACoVrVEPtc5f2NoojDfj3X3sKkGJYQUg9PRcz26icEayBJjGRwasj97B4
	 1aFOUt95x1zV1qoqdAkVSKUz7GJ4oE2rnKFLpOYfyC4UJWF2/Qop6QBX0+eAaE+VSO
	 aACnoEVI40r1jQwL8pZRs1xWAW7Kn/fAmxP0Q6dyTECMeZ1jt7jwsnI8IsF0y8sNDu
	 +Ec/76JoTjGvIOTFCZ5QbZOP2Z2mhU2d6HaqP41h1fLXEQBVi12PQq82sLAA3lqllw
	 g10JBQGKFuCQSIKijTP8kMmXrrhP+KULUDWkOCd+hzXpW9FJtTKhR9d56X3B5FCHPq
	 60EuJfcjC7VcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F8C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751803357.18391.7373170989534618186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b0383e7681da9c9d75e8a4b2e2f830d3d1b51f613304bd0ba5b9771f69bd56
Date: Sun, 04 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767518033
