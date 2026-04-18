Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3C736167B
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776515254; cv=none; b=Oe9D+qWDhr+YPpqBMIdKf6qQhoM5+Cis/+PVmWwCbU06vTD0lIWqNN2z7nhCrTk0o23N+kwMRWZT0FusDUymtWzHYtgDbxPR3yLA5UVKNS6T9l9V6KTIayQICQaZa8P5A4FN9t4W5Q2GHtiHk2nbVM9ghOgeq+orsnulPchEMFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776515254; c=relaxed/simple;
	bh=bhj9UIOdLDs3x+XtyIrhaqdliaCD6hTvIBwayb86XU4=;
	h=To:Subject:From:Message-Id:Date; b=gOH+bCKHxWfImrvCJoGQvXPRmQwfGWu4OQ0eN4m7gMUvhC9wCZRffCmpKJPjeaakqPaJg05LzAJP0Ojl5JXYbosdbIX/65Fi77tzkHsSMpxlsBXKV6HmO2eGWCayygxIvqs8OlKFT4aW8KjaDwz5l5XPrflCW3NuL5l4z50je3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYM6xckn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYM6xckn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B835CC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776515253;
	bh=bhj9UIOdLDs3x+XtyIrhaqdliaCD6hTvIBwayb86XU4=;
	h=To:Subject:From:Date:From;
	b=uYM6xcknsPBTbJ82B0qpP4QMhFrP+nRmyKNF4KqI+49DqiNK5E5DVyLe9gYa7mWoM
	 Mr7+kzbEAIwsNVtUyUf9ZMjhGeO5pXML8kIVWDyfOhB91V/mHi5DwkKY4bGZviJKbC
	 znlWkgYhYoEsa/GsOLKyVFttndVK2v88mPVUPKp7hmtG/IArNtKEyvC/VvRl3g/dEP
	 LE52sxvrIEEnr697t5C6QlvxnsNzL9FqcworJBVE63+VOnXDCgJVf5wXRmTCbiyf/X
	 iCfzs1CIWKCNkbvbifk+AoG1Wg439dbjEsFiOrhmD29JtK0D7aUR1GojZf1GXp34pF
	 zUitc+CpC0agQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B9BF99C80
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651525368.21911.4968374870291036229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01417b58694e8351e9b7d6ccf484d58d7667781afeadfc6b4037f73b42546006
Date: Sat, 18 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776515253
