Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC3B3ACA52
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779918154; cv=none; b=HFfbBkm3FlEOnxSxbX8ncVyXE5kWsYjfYXery6mJW3zdh4LRYYFXYX6VIr0Wl7hyUOcwntX+XQb+CQSbbRPEDDdJLwgxSk6PNbk3OI3cAKG6WviUioewU4MafmLrgrcobbcFQ3zicK+QmYOPAMzdUHLeO3Uh0bzaWyVI6nPU1O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779918154; c=relaxed/simple;
	bh=VXHQbQExb0a1nR74arWJCUmkqC8dJZwDKUAUeGjp46c=;
	h=To:Subject:From:Message-Id:Date; b=FUAX6+pOPBmWlLdfRGBXN+cGdI1SCfakKr4YF0WA1LR5/R4yYsTTQui96HzS4k9mnzbDSTToTTiNO/mRQljxZHy7MOK7trvbZprdQVe68YNr5Femzfk2XsLho20ZalDTbBPdOGaVydEMHBvMQQr1eZ3pgpEviyT9gXJT+9Bgoqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2IIOi7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2IIOi7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FC6C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779918153;
	bh=VXHQbQExb0a1nR74arWJCUmkqC8dJZwDKUAUeGjp46c=;
	h=To:Subject:From:Date:From;
	b=m2IIOi7BL1yr8tyVrckxqS7FF5dWVYnTCc/h/nU9181y/BCALl1+TWQD//6nrPGd+
	 CDPhxaihJJlklPpbIHSh83O5xJQ9nHpkP4e4elC6a3HYzO1PXcKYm19qObsjZMRItZ
	 EnbCTwBTCcaJ5Tj5ze64He/Pb2yAWLs0n3hpb+Lguz9AfBv5JOC3dyFcfMeJozhHxX
	 To+cs9gUH6Vymr6VytFOS087h6nVJu5HOBTzIxavEBDskvNGQbmtrk4xz76RdNwWy/
	 bvFTymIDVOzAdEbsdItUjWxXrULcQ3Zw+bTBEC4JkZLmikIWmjTOyq1uGKbLKucyfj
	 wJw8a/xUC5qqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C1CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991815368.10628.9404538578111629401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfa01e185c3f8da07c87ca35d99815433196a4dc87928dc9f82b691b4110673
Date: Wed, 27 May 2026 21:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779918153
