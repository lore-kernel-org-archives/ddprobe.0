Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8DB1DF274
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737301554; cv=none; b=tIo/YD2yt4jMktff+2/mxoNFz7zzBswi/d1AkuSvdcWBbuJ38305frnBGeV9EA81/1xRnNMXQDFK10v8KrMC3S82EUKpZx19KO0du1O0gT2urXf5aPhoBxEjdiYI+moQ583axXVbhWunbeNFauWM297PyZ5e1uNilupPD9s6BAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737301554; c=relaxed/simple;
	bh=B486mtBwQhA9k/1IstU3NeIR0mNONRwbHE5sn87EktQ=;
	h=To:Subject:From:Message-Id:Date; b=aE07v/2Qu1uKKl1x/eHrBb1MEj1/PzxM+9d1izZNvOxTUlHIGEs0WBLu7dl31k498RzrnRE7NJx2Fg43Z9yBnz2TSZdwNe+vME2mu7KviIaz/+fQztfWOUoDw7S2SQNrsmRwlxvi5/eELRPNkGMsJmfjr85xmeLAVBIAuLC8Nd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6egB+Jt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6egB+Jt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26F2C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737301553;
	bh=B486mtBwQhA9k/1IstU3NeIR0mNONRwbHE5sn87EktQ=;
	h=To:Subject:From:Date:From;
	b=Z6egB+Jtxt9w8vmIGi5s3IQ0xiS/rG8jVUX+6ISg26SnhpXJxyE6kToIk09crK7vd
	 iWhaK//9rl3lWR7GjXWpxqODpwNYNjpqDxX52sF0QDFLD8Q7umCoc7HQ6sKoTPHNHH
	 w0n7mQq6eJ0zectHswRKeDOvMZQncKtZU9wLGPIBCgAaVnI3YfQy6k37G81fu2HtlU
	 G8Y9cDxZ8VAtfJnpzRULKzD5LdnJUOznw/njdJ/QneQzFFBqmBspCkGy8rlziOqiFG
	 /hk+IHsQyAnRUPP3vuZ9y76Meo8jhR+8Xl+e4T6VuU+DUOK1eIHQ4IRGls2p31KKfJ
	 ouyGjRiYQSHcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996EDC02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730155358.2230.5107688814950611703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab083c8eab0394dceee49706d7e0667b82e87103085497391f2bdc431bc9b61a
Date: Sun, 19 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737301553
