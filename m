Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC33C17
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767299634; cv=none; b=ICByZ28bSq/0yFjgRnSONbMbOmIGDWN2/H6nrmbYfzZU5+xwdBCShZ7rtP7sLQ4Z1KFGs+Hzp44sloIzk9Ju6AJWVPkegW13oa1hExuEW+2/44phraKXhs/vBf1iNmod5N89/wDpg9c/VuP2ujyPreU+/9iQ7eI5yv4/kpvEOLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767299634; c=relaxed/simple;
	bh=lLt+ViXYfrPg6qISF7d2qllr8gKPfaaYGbTFt5s98lE=;
	h=To:Subject:From:Message-Id:Date; b=RhGlbsUucSOM3hu+akjZGAOMCQZLMsVGcO+Cd4n4V+Ln7mGhWxmgjJyEakB676dURQLW0UufFv54JPnLDM6SasgQf7qKRZEpVuYGK+uwbzkf+YmqTO56Jx8ndIRQ7TlM4D+Fb/WCbLD2v4Hd1+2e8gh3I+DR9Tr1fMMqCSeXcoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoM/i7yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoM/i7yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7777C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767299633;
	bh=lLt+ViXYfrPg6qISF7d2qllr8gKPfaaYGbTFt5s98lE=;
	h=To:Subject:From:Date:From;
	b=AoM/i7ylCgpe8JFcpi7rMuexQeMq0kQIHjaRH78hiB0XwoP66Ur0AFoWZzuTiJiby
	 BFeGcKBO0BMFlvWO4FmP36isN6TzbzVAlR4GGl4Sb8+lDTsx3Ja9vwgcgYKT9Yztek
	 kMzmYc2a/Th4836IMYFo6fKfJqxtpdkikUyehF0zV6X72dC2Z6jJIjdqKotjxWs0dz
	 Yzl/n2Oh/+o7sqEsDV2dqAheEL2RJwDhpYgO5C58MNrvpFLEmK8oiHtZITrrcmmTJv
	 r0r5zNfheu1uB0pTlJMFyr6XSWdJOc/408zcOFbJUh0VwOOFlLUHZ6ZzmG8KGIt50a
	 LcP2yzbePtNcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304AEEE25E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729963358.28384.10152876549273520377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb036ab9f4e993ce1baf5126a12c11edc17b545c6b6b03771b22008796569ed
Date: Thu, 01 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767299633
