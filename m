Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFB8175A81
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783796914; cv=none; b=X7AhxuvRCC3Gu++sL25WtmM1Jb+NsDL0XhVoEO4jCk0lYlIi2eb4x5k6Lt32vyDpluBsFxSYpm6C1OhlfOWHVWJYy5YIet1aXIclbhmQGCqAVJsWWUkuOyvw5IvLfb9kk3WYU20UJMzR2802ksihokQlFamE/lfwUXfn2VYpgOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783796914; c=relaxed/simple;
	bh=re9tHYwnTbXcjRfNBKRW9pbvY3anfR5d5rZZXunbyPk=;
	h=To:Subject:From:Message-Id:Date; b=Znb+drI3R4/r1xoFpBDdc/5Xk9eU+VmPagNq46AItot6X3HccTbbYsgwPFhe24o/UT0uR8YjYgXQuK6o+sSwMFOtqn3/XlLvuDw2Ch6s+YkbM+Unh1/r6yzJz4n+Ne2dQ7td47WxNnUaFHBUC/nTjDKpsEYDwRggSRv/jYKInJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9SnijdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9SnijdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1246C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783796913;
	bh=re9tHYwnTbXcjRfNBKRW9pbvY3anfR5d5rZZXunbyPk=;
	h=To:Subject:From:Date:From;
	b=e9SnijdDYORZGMM61HjclUnhlZHFweEQ8ZFfq82RLyI9dH+NtEMojdzfIvAh/zJxj
	 LEMSuVPvrc9rVtSyDBMX/De8OxmR8+p8un7R7CoG5JuAxTY8Urx6tzOakbaOZ8AeNF
	 tI8aFvBGFyXJOG/lKJ6Ohg4dp08tyLMvIpGBJPr3HafXylA3TLxnBJA5u1gJbS34uw
	 c1na6Mm/cia6zaBawGZz2ncPgowVaLd+EdXpEChdDIVD6xz7Xp+na8KdfJaG9tW1is
	 qMc6+/NMfiPFPbkwGKmIsVy3Ky8qctBWmRJ1/NeoLaDFIqVM589NwkJCeXFCOAM5/R
	 +xvm0jLsflFhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADAAC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379691368.12542.11993976751765220724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5a024eedba39d94eae1dacd118ac285e04d0d1b22b96ca548dd0a5d3c8657b
Date: Sat, 11 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783796913
