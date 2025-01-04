Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E35F1AAC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735970154; cv=none; b=IjtlhplrKNZcPLJifPnG9dvXIAmeXE0lwgTgvrpt8K7LwvsgBIKj37jH1AHG0HeNW2Z4NmmdJjw7YpgD0JF3oosYXc3wvFRIWyXmE/xMEXquC4/G4U19bOK3cFsMzCZ57c0i0dViN908VxwJETgSqVeq0mcVzSDq9KxsWMVQ2lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735970154; c=relaxed/simple;
	bh=y80u+J0xRL0GzXKKTXYBe7bFmNVvdE1SwfrCZ5jRan8=;
	h=To:Subject:From:Message-Id:Date; b=DM169UwK31un9KiYfmYa61B4QK6sZi7MRU/KweyomsCxxFWYMX9lQ1F6AzEHroj6PZ1B3viEDDr9F7tIy09W0PraXNGwMBARSgoxeVV52wy5VApUMKeONhz5dzGMbFDx/+oRF68/8ln3SGfG9hPysdTZuGFH8xTtqM90koxchYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXOptRr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXOptRr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B129BC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735970153;
	bh=y80u+J0xRL0GzXKKTXYBe7bFmNVvdE1SwfrCZ5jRan8=;
	h=To:Subject:From:Date:From;
	b=pXOptRr62v2VPukCguQwtZrwg4SgqRuo59z9iQ5PHNywe7agLpsRCNqHD8pMzm0QF
	 Ei8cA3NKurDuWI490QsmjrOGUnlABW//WP8VaAGpSG+m3vNDkv6CqciGaRuto21eTt
	 2ZNRsgFkbP9fRjNAqRKPJGZcuTfI4e/uXC54frFpO7q4uoH+Uwf6gopUbZQB94iqBg
	 mq/3Vn/Rm4eBpEeJ+O7A2eJgEa0m1wP97E3FdvcKQlNDJ07gNFsXo6846vMjoU5SNg
	 WQITPB20qE4jWvX/9+sXw7QBpTcgdSJMF9S0Bah8qtQJwHllo/r4qTTJlho+Py67DH
	 HVuPSWcfgF0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0D9E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597015364.9980.9101672019419704162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890f84cd9084ad7a154d8eddaee29bed275c5fd94526981dd42b2133848adc36
Date: Sat, 04 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735970153
