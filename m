Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B3B2AD11
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757893794; cv=none; b=Zt/QwKL4K823IBKr0oJXpZuYKEWOkyyhOvKJ351H+SPnIfIqgIswqVkxOwmfqpsNCLwcW/LjwGU+531I3pdYj1cndiI1keGxwa2PmmstpDsqSfTvJOihtyw/pexfC/evXg2hDh61+KYuhY7y/yaSElJTR1iEOSZAT6wbbOEnTtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757893794; c=relaxed/simple;
	bh=JK9NcQPbRYjtoNHk6tGyBIbXMn7V1wYMeKC4z4ndCV0=;
	h=To:Subject:From:Message-Id:Date; b=t10KJDYwO7gOAi2vpaGaq9M7PSXgUJPnnI9JEtWM3SW3UQJ3j8B1TTBj0E5K300y47kw5LyAQ1BnWGL3ae6et0UorWiAPgy1eeBnrHqKmcq3LN9u5WA6sRTczs38K0t9Q5US4R8skOU+C1PC01+WbFJ375GdjtDrHk2sGTXgNAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlG2m+cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlG2m+cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89F1C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757893793;
	bh=JK9NcQPbRYjtoNHk6tGyBIbXMn7V1wYMeKC4z4ndCV0=;
	h=To:Subject:From:Date:From;
	b=XlG2m+cziEv7r8/r7vmK52TtCqzvzXVyqWRrjj2hjnFI/DZdgnPhMA0kCZzJZtRfC
	 HXlmoDdKSEViQdz3LrU19ToQxcT/D85qTBY3AL3Dj5pNwT51NS4b9+mvhxZEQNMldX
	 lWGq7MGWrsVhbc6Ok43NMgPxQd77Ahu36NLy7cGT/H0E76z9Ugj8Y5w/TfK8MU5uCY
	 4D7uIfyBHucOb6g8zH28gakqDdcu4OuQPf9GL3DB270O63i+azhYYIhSYk+zB4VpAJ
	 VUqW0p4UY8caHIyOYx3PQuBN5j4oe9kfwVYjo8J1M+Ngn+1AwC9gOOuSDI16M9Ib2E
	 BwbTVXoFygR+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E84CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789379359.17285.12906574844146395299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e17bffd826366a94a2bf9921662833eae79bc434bebc4d11e643cc17650393
Date: Sun, 14 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757893793
