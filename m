Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428B817A586
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787449234; cv=none; b=DEGBmLFsFEbgV2fKVjtPq3Hwje6dVw0YAfe5Zz6V80tfif30Yn6KZvzICEZRUPz67TynjbQDB4CUW1BpzJF850XOiqr2Z+CRWvAtWCyFiyKctE96lh/KP63rm7EtFV8a/ksYo6CuVY+OBjX9pLFHtJYreOyoie6twaVyEPdFKVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787449234; c=relaxed/simple;
	bh=tewkCGJvghpQxV/As4fMVASfiT7/Ix1dy/kGjOit4qc=;
	h=To:Subject:From:Message-Id:Date; b=D5ZFTX8jyMC28Jw9RS4W+bNvANb2lcQWCzFTLrZ0XjkgzxlXc5Arecp8YqRrQcWp+6yKYTP6U9ZRTMed/wxHBd903DHQV7TyBKUIl+aZN9/BlJbPSCK8E7dEQ5noBUaRY6nTKaUxdmOSVa7fnZO/k4/BRDgYiQQ1GKZu3WvLP/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvFfZVuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvFfZVuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5730C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787449233;
	bh=tewkCGJvghpQxV/As4fMVASfiT7/Ix1dy/kGjOit4qc=;
	h=To:Subject:From:Date:From;
	b=nvFfZVuBWw/vy/2PGqItjHsMVPMnEyU1iMQVSBo03rEJ7Jy1PKnr6/VWBwmqFeJow
	 LJtkL5nSQn+hvNA5rYrV/H8YCgy2UPPsHS44qH1dEeh4sjOsHBRnYlRaI3rLO+ViNb
	 EHo7H+CbZenA/63cLmjvdBFQ9ZJ2pfkImS1+7P8F4Y03EEUcaCWvcZqfiIe0kp6yUN
	 akjLtLPMomdgJO1x37UvdbfOukI4gVZo6Fr761gSIoc4zKQZroraEAMw8YizX4Smk1
	 dK69o5svyrujZlvsD1C06iajJxweYiZxhDiWMP6+RFgy4gJJNqDXnNRPewNkkZl60x
	 TNaIBsYQfXRQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAECC5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744923369.15293.9946191811363446694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a9eaa44262a4a5b5b062756df68fab71c6730cbe01be1398be9145d92f3b11
Date: Sun, 23 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787449233
