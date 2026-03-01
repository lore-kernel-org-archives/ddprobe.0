Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FC92DB7AB
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772368494; cv=none; b=hVpvXZQJipJiDNfYY9GhHGUcy9o6I7/26joumy1MUNbssqJy7ZuXmAnYHAyHKf+esYFG5IhqrHxXbOVe70DnLV+C7mWuh/Zk8yPEI11vw3rMs7MnF4SwkQpy8OVyRe3A9wIfETk8zJ+q8b5kSrUn/iH4tOVeGszlNHkEC14PgNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772368494; c=relaxed/simple;
	bh=tq8MixbbK17PJZFORFzQOtlBRSg7YkmCbrbNPYNX04M=;
	h=To:Subject:From:Message-Id:Date; b=gsJXKzzw+kXePiZG9zFambnhOoqfMt/0yY50cpqiz+qFxP12eUr4PDtV1evk67DF6cLBek+pyCkxxAooly3Xhm3k56gMkaOX2Jk2oaOhGzUOW5Ghih4amXM0xYNLJ+TNLCe5W5nkMi9I3UgUAW6JRW0bb9Z229tYgitTCqCvxNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcsIvQdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcsIvQdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A674FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772368493;
	bh=tq8MixbbK17PJZFORFzQOtlBRSg7YkmCbrbNPYNX04M=;
	h=To:Subject:From:Date:From;
	b=kcsIvQdbyXXKeWi6Mg4ex3x0zSqGFNQaDjuQWhKUFD0ZZUBfWMozwBu79xvZ0fFkq
	 SeFkyfUDGdJTdOY9TQ2NO/iFOEB6ABmewxhy8Hnxf4uYLKZylGiScVKx/j2xFwX0BE
	 b28rALzUiG404/H+rDiHyve0b+mGVc7smL/AJMh11kXZC7rU4B5i7uNDwyJrgofbMG
	 lPhYnGH3mnjit/cTMfneSg4+T8Tw3ZRihSgJTM2Z5NDzNUZbtl7P6TAGc/KCvkqkEx
	 lwhLTucvV7Hp+Y36uye1rD4jq6PPoMUGx4HfVxw41ksKs0aurST3UJnE6VWtBM/CgU
	 PBMa8lITa8YYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D3CFD0066
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236849359.13106.9428792185425793323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eaf374755d4be41b11f6aa5e955b7c551523f321ee8edfd7224ca9fafe2f236
Date: Sun, 01 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772368493
