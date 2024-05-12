Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D9DCA40
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715521343; cv=none; b=O2fyltiuMiLM9ea5c9jT37qn2xg1JaegEJUSD/oLA323vjzkdrqlfnolWvyiEunYC5kHixeCqwO9HiRwgrWz+NTze4M7rd3fRGDqGjf6c5DC7FRv+u1FB3enpIknjb6D7cqvoXH39TLIbU+Y2ecWL43f3WRKBAWyqP+mFJfNOTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715521343; c=relaxed/simple;
	bh=1q64+ipCKvBHNd1ebxEzvm59YMaU89uQEVH+Jw4NeCo=;
	h=To:Subject:From:Message-Id:Date; b=d3/4Y7CHCbDxYhYnYUQ8koVELBq6OLMDjFWuXit40MzfVUdtHbkNkJl1kh/KKv+SXzgcqsmr3rarbKClvwmZaB+4DVIZnCX+q/rkNVW1SGrcHWOdHXXrA8vVwyOiQizbRLydC6iAhbK80G1qNYS/1605yY1D4n4WpcKfnS7xLvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RH6753/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RH6753/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4A2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715521342;
	bh=1q64+ipCKvBHNd1ebxEzvm59YMaU89uQEVH+Jw4NeCo=;
	h=To:Subject:From:Date:From;
	b=RH6753/bj3xf+Ls0IyuJRJ+5kZHV0uJbyIvs99FQYG5jrSkOaIiwaHXnoNSIkfq5D
	 oN+Z8THAQITucioNs3LYqg13bEyeRSntKGABTlRqHOxPcHxGKbZ2ZtPAWZq3Lf4gAF
	 K5QRj5AFceoFh6I0OllkUaNLlXIgI41Y/99K1T3AQTbInBbM5yiRORqlqKpbTQqUdD
	 TknsWqvp9dDewZt6kWPgp4k+fQo44q+/dpkUBbtDT20bydUzk4TaGcL/nrQ3fWRtI2
	 bYOfVWwS8RIZeeYlhvSUwSk73roD25GFQBsh4IyEkDRhXN26A52rErFlEjI3H3b5L1
	 EO56wR3cx+vRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EB4C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171552134277.19388.6538046790622949355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca68ef4143fd21ee5934b11d1db0bd18adc3497f4213c6a47566bb61bfd1b2fc
Date: Sun, 12 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715521342
