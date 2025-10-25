Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C391E0083
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761382794; cv=none; b=JEe5DsPb4w+Bg03dETQiTwPfwoXImzxnjYqR2l/cJcjGwvXjepxii+X5w24jZ5PWiOOTpxdZOSJn4tPbFh7H37QP5IIiY2pVA4ILiDAC3fnL41STPshxt3nhepcDvXzi6kGkc2gY4O0Th+GgBuzeDfThGNd3JDgUT3m8y0VSa1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761382794; c=relaxed/simple;
	bh=APICU0DF74D5bqgjOS6s2R9qAUivH0GjWo+EXLJ4Wh8=;
	h=To:Subject:From:Message-Id:Date; b=onb+Mbp4vRvxTShYF5jPUK7eSuB0c5UH3i3Y40RXKxaXaWf1LFcLUTZLs5FIlIBWe8Kq2YRuw5HFBafPyRF8I/Efm+jevpPFkvGms7NbLqsSR2Do0pTfRbq53lQiH1JgiftpaDC9g9uOmp3pjwg2dHBnGVTfNaHfQnnyocxS+wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKm3Ik5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKm3Ik5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5267C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761382793;
	bh=APICU0DF74D5bqgjOS6s2R9qAUivH0GjWo+EXLJ4Wh8=;
	h=To:Subject:From:Date:From;
	b=WKm3Ik5Mt4ZEityVHKsraQPWgx48oodDeGq0hN09rLVrAULu4lm9aUpcwhZm9OMOf
	 9ZquxtDo1a3/vDy+NPuRD07jXS16KZoZoFBrrzu6DweOcgDEo98yOzgZgjmu5d8EOw
	 2PeRnw4nnuNBE5lfwL7AorOTHl2GdC3KHd4e/pCalCusH1+xJWwQVWq2t3nkWnrq4O
	 vyW91V1KNDksbjC652IgiIkR1oEruqnimmgIUbO0hGoaQbWFWzeY40nFyZtoE8ToSN
	 VBYUInDuss4YJKl3RyE5iEPMV1Ye82TZkL9TUdHkpsGwKuSPix0rIe7gu48s3dOlwd
	 TNqz1fho/nojg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9789ACCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138279359.28332.4296776833898996503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42baacb5a450d9503d47a5d6bd4ebe7cf7c6bbf134f79cf583987d0ffac1275
Date: Sat, 25 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761382793
