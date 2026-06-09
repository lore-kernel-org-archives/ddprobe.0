Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3909137268F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781040334; cv=none; b=T4ItkjUJoeEqO1GR2uLBvaZ88unZRpCcVuqfB6D9wc32Y2MRrzPjLokNyAVV5ihDjE1YhYfXVpd3zZtS/BR4D72yjM907tcfK6u3gYAHJS0RSFCMcDptPLc8harc7bpz547LvpYXB1u2JCIw5YZ+M6SlnBJwEKBmmzp0No+yrJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781040334; c=relaxed/simple;
	bh=nC16T9rrvMkBMNGPVVFFDI5OHIKEduuI5Xs2WgtWaIY=;
	h=To:Subject:From:Message-Id:Date; b=I1utqzMozHVy9eEDHuKmrhctagHtyXhp9f1+hiaaCdySvoRYBZG4hVcxxMyXvy2b8SNEM1+ofuNbM85JsLPTA94fln7nCjFytHU1VU6LdCw18W3VrAt8x09KKEYf6tjOBfXWY7QFR9yf7Oru+30q5pm1jgTtYJsr6zfhRD/04u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRIBy0HY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRIBy0HY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3D4C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781040333;
	bh=nC16T9rrvMkBMNGPVVFFDI5OHIKEduuI5Xs2WgtWaIY=;
	h=To:Subject:From:Date:From;
	b=fRIBy0HYgIEhHvbS47Z+WF0mLUC5ESJr/epnk6791OFMYwKie7JQ/GmvqMEnUSpnl
	 u7OFqA4TNZlOFL61Qji0kXtYHB89eV9oBQGyIqnrjLEYAubaz3bntS+Duc64tRbpMH
	 xAXARCCBObsH+UyIo9Trvlp+z5dgiSBx5IWBKQK8d01ES7erI5JImkALN262FvXjHO
	 YFoeMTd61Iq3CQ8TMLI83wI65x+c+AWSCFA7P3ZRCDs20ROg76M3lIb/WgfbQ4hdEQ
	 tlQk5HO361VpCJorebPolhy+eeig8Ta6MzpDP2udk0fztyztMnW5KzXcEJskObbmps
	 uYraXQSO6n/dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF793CD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104033368.25188.4809519979678514768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf76628f217fc685fce6adda053af98396e034eadaaf11c556f2fac4d742be9
Date: Tue, 09 Jun 2026 21:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781040333
