Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221E1239E82
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754832594; cv=none; b=SJ5XS0m/KYtmuzTHKYsbBBshdplHmam+r9BKUVcMfszmbwJR89yJiGC39Pcn9ZjWxtYfGXrSqOdpEVdivCJllQC4OB8WXQsIa2coiO0VLtEE5S0ltBtaKX7xJAym0rVs09hyqZ3aItHkGDUNN7YGKwv6MFQdsA042RXHpmjD+DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754832594; c=relaxed/simple;
	bh=tla52cttnuyJfJ6CXyNHC3JrMyTL6i2VUEUlocxmZ8o=;
	h=To:Subject:From:Message-Id:Date; b=mHhCVIFfowEWWWUVDg3fdQt+Ktp9xFbgmYUFTZPPQT/6J45h0NyQLgGNMejAf5A9LnrRph6PLwzzyG5eEi01CHy6Yidqn6BCB05pG1YL8p1zJMkJZMMz9UztEvKu0hPgTS0E2iApQDl0xWC01xDZwc3Q95Jum+c/gYELa5K7Otk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhlHC1mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhlHC1mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5880C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754832593;
	bh=tla52cttnuyJfJ6CXyNHC3JrMyTL6i2VUEUlocxmZ8o=;
	h=To:Subject:From:Date:From;
	b=AhlHC1mct+iNLvGJ4FiVZEUjQ37HpEV2fFZ4xgEHVWFwFKLuZ/07OxcUDl4jLYXpG
	 5Y3Apkc5XYx0ZY9/4uBiRj1vOUjG1Chr80kCaeU/TezZsHwSrTlbkP2fdOJEIH7cAF
	 Rexs6M3GCLAaJAxyQh+dbSXMKpMGI5wX5hFmv+IjLpdGyz9B88PkB0IjIBEcvK6NQa
	 P84mD3nri/BvRW+1aVNmu1DTxGeYAEbEvIiNs6d9LalLbIE17K9kP9moirJvbwXLLz
	 eQz4Z1tJItZ7+fQm7O2H57ikxSTxpvu+xdPvUgCseGh032m9J94vvmht/FyAgchdix
	 Rqw+hdHaVcq4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453EC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483259357.25786.10035695942542329838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc02162f6f456debcf33e30217ddf12547dbfe88885a3d18d941c1833dae63fb
Date: Sun, 10 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754832593
