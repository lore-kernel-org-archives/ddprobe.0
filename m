Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FC949625
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752804594; cv=none; b=qZw1+e/jnah4qKh+9hGr3h0GwvrJT1YHe7MIhr+W6O38sstgr39RgFWvOVRIeR5Fzryep8f0l+risXq5sXedtVAmJYn9lPp7gyiwD/x04WTDw6VX3/rihOTYt7ObXN4uior8Tg9awV9ggmhxH5KhwU41EQHu/yQUEODrSW8bjiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752804594; c=relaxed/simple;
	bh=HrG9EM9k+8pbmdVaa8771GDk/ZHHPl3mV82M3T70vB8=;
	h=To:Subject:From:Message-Id:Date; b=F1M0eDJFG1x8VyzYoY+0LryWRIuBcsqhdNNzb55q9KIrf3L3T+t9ofcF7q2aMOgxWpBgxXDKSzN6P/5VkvJes9XGocRb5e/oT+aayPAfdiyNYFyS98kKm36GXJ4v5iA4YEkwaZSniT0KX4SmyZNMGA1jJVuvIWQd9oaJ7nFCKQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRQANahu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRQANahu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F348C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752804593;
	bh=HrG9EM9k+8pbmdVaa8771GDk/ZHHPl3mV82M3T70vB8=;
	h=To:Subject:From:Date:From;
	b=bRQANahulEkEOEVTJKj52BmLT5Hoy2NqMYvS7An126kDLEuTav6c+zD+SW9dS7aO0
	 NNJ0Hekx3mLrJDWphsKQusaXeyeiboouO1rj9dSnA0I2W1jv+Lt0j5jBji1Fp0apN3
	 8n5/zaFHwUauPnP+GDVB3jexVG1bTZv2igyVJkFHwQz7+5FjiTbHyU3TI7cEamPOT5
	 JdIViO18ilxttjQztXler6Nj0Y73d8w2r9/N6yI43AfEPmO81J2x9sdj49Ix9CPg33
	 6r/T79zJd6gA1ebnphFgpp/69uWBmUQL8QPQQEgsnC5l5EGzjVagp46c7zgqrQy2e8
	 k9/Npr8x1AAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF8C83F22
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280459358.11469.13786643671787701301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df62941735be06acb8b22ede24a81aa29b79c2492291822653e426196eb9f84
Date: Fri, 18 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752804593
