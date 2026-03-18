Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138D42C859
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773804294; cv=none; b=qN/g+JnWeHXGMRpR1iQEZqb1qLZrS66cOGWp7PRAlcpBE8D8VGvbLBp+PIKO2PvKa4QsFQITvua9h7sZjOGuAaAD8U0vRd3bwtgo2jJbjSDHqGSFUgxqaElVidyXJHtc/8LOxTDkbS7N2Y6vdfFDHRqzAa6y4FuAZyTZzohleIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773804294; c=relaxed/simple;
	bh=WmrSs6RUBbqL4CWFF9YC06Cl4bp8Hlq7FwoM7UiICKs=;
	h=To:Subject:From:Message-Id:Date; b=jSSDyP9H0zbBD8lIBaHwPfLTPRZxzR2hpv6klck/wZ8kjfo4yIh2PVyWUNmh1TDzOO4qdE1eIzWJ9n2w/SeFwswbczSUHl8viUeDODG1mxJj3e1m+YYazbo709NsmXs+QKUYOiaPYAK3Qm8QsrwJJQY8lVJqRZzUSsSiiD9NZd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPbkthFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPbkthFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C12C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773804293;
	bh=WmrSs6RUBbqL4CWFF9YC06Cl4bp8Hlq7FwoM7UiICKs=;
	h=To:Subject:From:Date:From;
	b=IPbkthFc/6nI8JlNOgj2QiOu9DpKUPxMdWYunC6Wbl98Rwvw8eSUTJQziVJFWFdhC
	 KqOInMJu0/GB1/AVquUFH5zV/ywHOcFPA2ig+9UQm17qUSzD/gVWS976rF+764RTO4
	 9+IYOUAB7DW+ExbrEtx85YxvKK8/rOaFBx6DHXmPU/eVQaN1E3JyfKZseByWfVi1Pc
	 3uQwcjzr9dA8mGhTxNIgpElOMnLq/yC1TSUylPpxsPJdby7sljpkbuXQyjYmJjbwZy
	 m5aONhxhdK3ZXaMKSWEWESB3PFOJ7xai9mlMHRmBSg09RzCpeLcEXO1Ydim2OW8o2R
	 4zTcHmPXH8jQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9401A10854CF
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380429357.22633.2518934216476369985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c89b95814d4bbd2823b1467bb0b1c9da4d6aed56d7d2209cf9ceaa2a9f54f6
Date: Wed, 18 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773804293
