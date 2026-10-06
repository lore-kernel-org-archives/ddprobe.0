Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDD23563F6
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791309034; cv=none; b=gPmJ7Tf5mIfT/9FFJL07g7uqsJWZ0nXMY5qchkV6iG7niMkg6ACRdkWrOWSvyu1SDQszow/JsmlDlWt3+HTFSrK3Fb9f2V7tWsnpahmP4CC8Ix/7gDzAwbMHfFl93Rl6/IljPwsdmTXBxi1yaMV/awp8beaGWrTUJr8J7Zc6SX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791309034; c=relaxed/simple;
	bh=h7dVIBHyGRKftvux7YMO/BVC49+hj5ZT2ZuC2OxnyZM=;
	h=To:Subject:From:Message-Id:Date; b=ahkIZjAAU9TcwxHkwVKiiGVPUvmwkA0kxitRIpAEg48dbMvL2o4T7OuXcELzOoYnzo/q+gqzIxaT0Wj51qgKXufO0HNP1rhszevE5qzxGl0dDlyoypK7YOVHG25QcdXIrpkn3uFoUHoGqT/oAIh1h2n8x1q/tbmTP/no9yDBNq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT2zEb3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT2zEb3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C38C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791309033;
	bh=h7dVIBHyGRKftvux7YMO/BVC49+hj5ZT2ZuC2OxnyZM=;
	h=To:Subject:From:Date:From;
	b=bT2zEb3QQDW9B+k7XcwhMC7Rgu0DWibYB64xYgUaCaVFUwp9ABpdROb3pwQjLgFYD
	 G3mJFq/jOH8hVEs2LkjP9J1jEgH9SHFnBH9uMY2MzVKqgd8mEzPIJ+oTisasNRjWke
	 oxAP+kcIxXYW2j0+OJoCI2G+hmW9ywrsEeVGyTrkypOxfeMpbPn5xFU32RhZOrY6LU
	 QTgLbqJSiW5gEClQcwCXXZo8wmfN8oDfZgB+llfYyQ/vBN+gWAy+xsB6bQEKMINIcE
	 2nhnekCWna9ubsFQWR9liaKTFqY6gGqYqUu86VWkyh4UCH2uCdf/pT1o05LiBNSmbW
	 q+ZT/bpq9ORtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B180CCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130903369.15403.9885839160049350630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1aab349ce3a9943fa863f9c4cbd2d3272779bbff77280e7889e470d50ed09c
Date: Tue, 06 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791309033
