Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD92317169
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622294; cv=none; b=VCwtvzrm7mU7r4bKebuOREbwcn9rp+dkeURTuYPZ6KM0tE2urFwuw5MJmLNNmTpjDee9+q3aKDGQBUO5wfn2HocK9rSzv5TiIdr8feP9UxGfsND0VK040SjIPF47PIedRQlhYfRuTdjUzD7xwM7feyCwKSh+H0Ekr5RRufwkVOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622294; c=relaxed/simple;
	bh=rF40SShpahSqByZ45knpL29qLXgfZAgj8paNZaoT2rc=;
	h=To:Subject:From:Message-Id:Date; b=KLgOFcu9PQIn0gG+DZVJdjp4kEORk+Ci9844ugIPQuOm31ZYkV7cXL5qoVuGiGR1Hmq+0NlBbl/EuIabgTuR38SR8+U2RYi0HFO+MBFMXBfQVymMl7p76/vTiqFtWcGoh3iZB6gAjs4ZXQKvgXbS9PK2i8WpDXdjfyOqReqb0fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKiid9bL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKiid9bL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE34C2BC87
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772622293;
	bh=rF40SShpahSqByZ45knpL29qLXgfZAgj8paNZaoT2rc=;
	h=To:Subject:From:Date:From;
	b=rKiid9bL3hskXQ4Fxqq2MhjvQILedhiObmk37CPItnmstMtoz7Gq79mPeGETl+j4b
	 0KT2iijlCOUxJkDj2cGiD0b2VbpCPMbze7zTIeJkF6S33hRRMIKKPEO183Jao5SzbS
	 8fQ6F/ZK80evDKvr9+XP1ycXj9bbsoUR9Mr0UXHbZMDx3pHchKNjmcRl3jn7nrUuh5
	 ZV0hbzB5cJuwcSEgVyPYAQUrWFmT6RyeWFHNTZugrAfoF5RkzCAGGebJM7z3nTRyRX
	 CK2SDBH6+SMgkDgaROKxa7/ZuUt4mfxOHMvhttvRBoGm6oGYLVz9NZ4pynJYOVlszn
	 7ZoDNgwPzlQLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CA0EB7ECE
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262229361.31985.8683805378642520200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2af70661f39c9675bf1f31e266696fb9facf2ebea580b2ce4b8871f1c34daf5
Date: Wed, 04 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772622293
