Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BDC481DD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782589714; cv=none; b=b7TkF3ohFq1DCvsnXK18Rb42V3cjd6tkRVKo3nJsfhTTcHp2bk+KX9hPe4mRRZxEDEfAY0HrxmxX5nQ6S2uWuhujmiFVB4MJc5fRsc1hQPs5kUpnqXbJjt/WpyL6ngOc/y2x+tdCmHtCUvqTFOYiFmSq9PBSxqUqIVIc3EMFtMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782589714; c=relaxed/simple;
	bh=F7KVpCumJVKzn7Mc6SEKYyYIRD/Q4cjLYxv6PGpXw6k=;
	h=To:Subject:From:Message-Id:Date; b=dDtpOU49q7Wi3vU//9k5ejt2JOW0RiRmvoEndg9oNbtGKdJs5X1sUbQbL5UHvEo+FAlAU8pGTvxoWGYQDK0EwPIw/pucbf643W368WIdH4rylIKHjY8dBwW7kKP1GsUTeu1NwwvstbWgVPcunMkG7o+q0leaMhBZDBaCNogOkBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtgUjk26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtgUjk26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84F9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782589713;
	bh=F7KVpCumJVKzn7Mc6SEKYyYIRD/Q4cjLYxv6PGpXw6k=;
	h=To:Subject:From:Date:From;
	b=rtgUjk26tz5X5aUtvnnjD7hAxgu6O1t750FnnYRNtaavsWJ1dInn9cmQiWOOLIigZ
	 aDj0hE/Jicwz7TE5j3zc/FHrG0+Ef/drNLFu8a7YrXAHOkDvN4mYm6pBp9QJT/mspG
	 mSvIikz3aOGbP8m3QwX9TVvRK5Wxlh/XJE9D4mbeU0KuYE+4juB5U6sPV3qZrSnLkT
	 zda6uW6KOlX/Nqe1zCfj+mG5TA5Lm0Ori5OtLhazvFJM2Nga70+lHMlDS5mkXEVzRF
	 M+qQGyJMJx08E24oEFsTAAheBPOAHvV6z1OLDxpICMFchA2BeYR+A14ze8oCk+/d6f
	 sEw8YYdezBcSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8922C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258971374.19226.2878032893525159628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d857ad672a274c8a6d778ea22516dd88e51b630f0359146d6e52879878fa7007
Date: Sat, 27 Jun 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782589713
