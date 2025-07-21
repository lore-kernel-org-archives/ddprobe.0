Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4FB1FF7D7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753115994; cv=none; b=OcgVQm7pj2yXILI8t3dwh5sDum7O2on0eyJD5jV8cfZh7FidxHli5g6wSn89Ejf3vnb/HXheTd5tZ2r7DyBEzFeFyXqMsDAj6gSLls2EKVdF/sTPu0pjII5jOlWvaY71jom/pwI3oRwOY1yVH6Is7HETJxXTlfjy30btMEhBOiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753115994; c=relaxed/simple;
	bh=RHdiMLC2Z3gdIMPJmZusChdTrqf3FrWNsk8H1JR1nmE=;
	h=To:Subject:From:Message-Id:Date; b=ku6jUejsq+dSvXDrJgEMg9L/bSQK92ukwSyJ1JAAnv/iu2y6JhPiRjTGW4kbkwCqiBrCA7qTi+5hSjxOxvIfveTFihjLb3YUo8FNblEk9KODZUCLmKY0xkES424SS67WVgZzHS80dUK3NWIOeLPeHOGhcsY5RH0MSDO/RRFBroM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XltWTU3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XltWTU3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E422C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753115993;
	bh=RHdiMLC2Z3gdIMPJmZusChdTrqf3FrWNsk8H1JR1nmE=;
	h=To:Subject:From:Date:From;
	b=XltWTU3ycjvdY9x+FA4fSG/yRi9okXkdzQg+qGOelqcfu8cshte7xoY4s9Z5PncWy
	 WQaGhcrRnI/AdvvW27kxIXUEVCv3K4QBr1VzjzQhUsXSlQ2pOmUwVwKJmdSBrWbyHm
	 hfbJbHtH8/LiAXYw9SfgI+4trj3VXmlfL6L/Ze9qmToxFL0Gya/RZFJUijPtRl5NJH
	 GSvMSQyngjAZiqVTseCdKINavltZhZYkY35tuDFAzWw/aV+5g9NvYoWl6kTOtusT3N
	 s7IEmI09YUNyUJTn44cBgRnUq8GHoWHF35eU1RH1mrUSw5m8ywQ5jktUfqfgvPtH+6
	 XkO9F9hgBcJZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4EFC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311599357.13260.7295819534077105234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7a8e5938bcdce341fa961bdfa870b6c30e1aa459afbbf1a639de0625bc03f5
Date: Mon, 21 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753115993
