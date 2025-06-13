Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF0A1F37D4
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749845994; cv=none; b=lEBFiBWfaqnN/5tvtoZKLso4MBpqLmAkuFC5EoHq5cvx671jgFNuwfYANYTeWtppo4VVet7jkaY9+S03A1TEM6lT1ORZ+Hyape5bgeNM9mXsenxSzZHJxVhNwFYtk2Kq8JCzCZd0y7FJea+nVvjkdymK1zz2R78Jwj8FpbQNLiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749845994; c=relaxed/simple;
	bh=QzFbB1UkSXBVd8FSihjUsy2P+0mt2jO/C3wBy/0dHAI=;
	h=To:Subject:From:Message-Id:Date; b=FCLJpr98Tl1Tn6TYSTFRePcNWZgiEWUmwYMGmCP4q7Be+122/7HVYJM3mQYn6FO6xkK5g7m0WziK/63iolyZcV7lpFalWeSNhN1zsO3DMz1bM2QniGTLWbxO8qKOb9In/ItuqMssXk6rXL//rrWviAYhou04hU0kUBFQZWcubNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAO1FUSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAO1FUSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2270C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749845993;
	bh=QzFbB1UkSXBVd8FSihjUsy2P+0mt2jO/C3wBy/0dHAI=;
	h=To:Subject:From:Date:From;
	b=CAO1FUSHqg2UMCih+wHEhQ7q56gSU8vpjNGPJ+AdSUlRJl9ooAk1HI/sCnVqOdIaz
	 SiT/5iZqWwFI/AT/kmkbfQ0EE8kC42oHezY0EoLD63t6BYGCpWG11o1uGrPl5leD0T
	 AA0dqjRvmITlhNB56HG6rF/7ny2kDwFwz6ojBqGlYckzcuitvK6sLNPvBmPrlEhAZ9
	 1F3NXLVOTIuEs99S0Ho3VBnEKEuxTOgwyJTp7ksJk7vLe8xhpcYr6+xe8MYBXA4ozb
	 RfI8oiE5NkVzHJtaBKnjBG5oV+s/rm4gLbEJb2DQMWgiKeiNEYSCQrDX0MojKzhHR+
	 WHnqB/ZtfkgXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F225C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984599357.27062.8795764866798987910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec27ce63dbfbd2a926e3a65deabef9c8f7d91472d6a2cfe56ab11de779dd303
Date: Fri, 13 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749845993
