Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200A01ACEDE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769240034; cv=none; b=uJQ+blMtZ/mxnVJWqOehVL031MFGXniQ7J+7es2m8k71e0HFukwzIKYqgMB8D1U6uhJGC7o6HBAwBKRvSnVtDPjx1z1k2r0vlQocdQgxh6T22Ju4rRHcZF8jgIg/RxwYs77FQugasEhjTnbbZDcCzrsg2GS0obDav4sPSLFVbfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769240034; c=relaxed/simple;
	bh=hFS9uqOnf+jvdKMCnEgMD1D5+LdQyvteamlShEhYuuY=;
	h=To:Subject:From:Message-Id:Date; b=fENunROFRrANiehI0/WdPIKmWzHHC16je0q8itsbnBpWwOpnwxlDnU/RE7Wnt35mk+1hCjLAakpLvH4dDWW/bl2NbPr6MwA9tuz6y56A5pIg+vY0Sbi+nFOBgC4OCrRWCfwxxu4gATHxvk2Au+yQBYr2eOJ3uh7ieE/eHlzDVj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7R3lVIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7R3lVIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D12C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769240033;
	bh=hFS9uqOnf+jvdKMCnEgMD1D5+LdQyvteamlShEhYuuY=;
	h=To:Subject:From:Date:From;
	b=i7R3lVIwlCxB2IMszzmtOufOUcQmc6PdawOCYw/IU3o5y4ti3Bn4Dtgg2qCYplw6w
	 4p2eTHAo3E0d1xFMogji6VItxp/AOe94wxw1QK0wF10/759EOwhzbUcyHpvv/g9Kf0
	 nHt165aeG54NqJjxF3STsR0vS+6OgAEV6cYLadpV+MXf7FcDaUIaJYu71d0T84Xd2y
	 zroE1GhJnb6+i/wIs75c7cw+YgSHzPmVjn2PR6pJZJROZ90EmjZS9pBLMX5SSZsM3L
	 LpRs8c5Z00z5dhxGXn7UDcDGkDjlWrqbBii/LEWZiqYnNNTvlZIT3TMFpUuHMgUBB6
	 hAnqAP29nM0ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA7D715C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924003358.1066.215335592007387120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b2a19d3f1fed72229e51785fde995b125a780c95868a5c203f8949907cdc0e
Date: Sat, 24 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769240033
