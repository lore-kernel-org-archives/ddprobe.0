Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7FF1CD215
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756086594; cv=none; b=DTBEEZ7gz3OxeWsHNe7LAfV3AA7QIiJNoSgJWwwEbdoNzPQP1SErft61XKsszEao8payee1mBV3rR4+s1MT5IRVVVzEUtNHJXMtLJgRdugLunL7jbCIcn2MPN835FGBDVNWFpxmW1g97C91SDfZC9/UapQabmBEtTKbaDP4PMZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756086594; c=relaxed/simple;
	bh=2jiXKAhTRymLPRnTSPMSdyAQoF5A5x8GwQgxwqpFNTA=;
	h=To:Subject:From:Message-Id:Date; b=D9e7fHdW4F6YRyEyIcJS4uB/8JRGrN6SG5diusOd22h4uCMiW53zlO5wAhKesf9PGItsDqK/mO/IHMY+8KgiVgHW3DBevN46C+a49VhU/suVrIOABd6bC02CEilGPD/FHvGEch5YBgtYmJvQWkGj+Slslawd+RSEGBvMLlRqUdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4Tq4NNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4Tq4NNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F70C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756086593;
	bh=2jiXKAhTRymLPRnTSPMSdyAQoF5A5x8GwQgxwqpFNTA=;
	h=To:Subject:From:Date:From;
	b=Z4Tq4NNdznhxnaVSatBgtFqNzeclQ+lYuRyXRpHYmNM2I6BQB+g5cqqZS/wikwcXG
	 7/vpzNKeAEiwYGgotgqsLoNqxYFWLUnIsHBf5H+va5bii9yUmUuRaWCNDlvifoQ5Ax
	 tdRatFz8ehM8+31rTMynmD39D8fo/dqLQmLppT4Xal5HfLt1JW14J7t4SCt7K6wkVZ
	 qKt+ZNw3SWXCg1oPLpynBkWSLr+AGS/39UsWW7Eii/YO1xSWwo5up1aM/5njNza7H7
	 gJibhVZD9c5rXle9auY9xCV5p0N5Xxz68vxTmWAVuP4rZPfkg8kWfFUHMtHo33mPs6
	 V3Taxl9fdkuMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FCCA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608659357.4707.7900442184959367805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06310a1d046b85473afa7d2b028b003507ff9a68b60cf174c53c7a259f553aab
Date: Mon, 25 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756086593
