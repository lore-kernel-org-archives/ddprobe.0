Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4B83451CD
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788664234; cv=none; b=be2F4XjRFroJiCRTV/rU8+U+qqlYHJ7aiMUj/khFar0HM8AGBE6rmu5jSTukklrcrjxJyVtNWGVg9ms6MQPGbnpNLRUmCxA0gVxB6Ols6m87p+VCCfodgXNT/vsLZEeFHWUo6+CUrXu3kQu4JtSe1H1UCvRHdRepBUrWSi7u4NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788664234; c=relaxed/simple;
	bh=jQFs3fzTOyuasDedo7wEf9+4Erq4zvdykficaGcj8iY=;
	h=To:Subject:From:Message-Id:Date; b=jMfn2lq88xK8oODzRO9zoUnuxsrnbNGqdD91M3jEZZ+Y2a0JYGcqKR0k2Wh6pcsMb1J2nLyfRhspC1pX8q3XGotraBl30fYWIb9KSNFnX2RofBkzfoe+i0AyH5CYabhgODqyFsSXaiG2M64FFnNhI8W3xACbEy33MjR3qXEJ2gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gicwh9D0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gicwh9D0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB876C2BCFA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788664233;
	bh=jQFs3fzTOyuasDedo7wEf9+4Erq4zvdykficaGcj8iY=;
	h=To:Subject:From:Date:From;
	b=Gicwh9D0FjXQD4MchelJuWUZPl4LzLSmI3xNfQxe1aSXrniInVnTs7hWHqp2ZC9UV
	 nM/FfcrKmpvW0CMUYkzcya5YEb5q+4CSQkehUXNlb3ueRcqxsetj1xICNUjT/Bkub0
	 xBy32GV8yoTs1wLVr5qSUpCdivJU7dY51OAN7YgHABVSYkFU0OAZRUbJkh0ZkMvDd6
	 9xMO472ml9riDaIXcSPBLVsQLAYCWu5Cc9d/5vPabcmK5eMG0FptUwXV3E7baBolv3
	 Aa5LLaAdQH4j4+aCyQvTHgQqsC8HxXLo/j6mhGvjZEX/6A41SmcVwD60y9/DvYEfdK
	 OY5PWQ/+JcQ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23AEC624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866423369.22011.2745847224424229892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2675c7313cbb37cca1fd75283e638b5d47044b22910fddc0d57dadfb7f993c58
Date: Sun, 06 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788664233
