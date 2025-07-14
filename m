Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC58F198E8C
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752487193; cv=none; b=SsP9C17JhkQwRuffrLYD21rChPR9rAFpglZy+zFNtZAfdkWBTQu1nqoVUpkNwds7zy12WJZDn1X+Ze0hyZKtO24a9XtpU31bXRhfOHsb6pMPjF9sUlyYL4R3NSvPKHOA59dTq4xLYQGCtc/A6/eFxacZoyj2PpEB8wzkrv1e3Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752487193; c=relaxed/simple;
	bh=uOMAIIfnQ3IHfRJuIIbIHopVCqw0kJoNsbCjrgbxbZI=;
	h=To:Subject:From:Message-Id:Date; b=NW4BhfyscSz4I0p8AUe/5i5p3GZfKjKGjJ5vg3S4gHcnDRmKK+SB8NtclefvLKIpBZVqz3VPnHrQGSLbYSZcqsZgp3fEP5LRlWGqqjLDFi2dIcO7m9xN+phTjzyzFlYiRlGei57m+8fXJDWtZcg4j1sL92BjrETGhnnvLiNfHfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9G4ztAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9G4ztAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752487193;
	bh=uOMAIIfnQ3IHfRJuIIbIHopVCqw0kJoNsbCjrgbxbZI=;
	h=To:Subject:From:Date:From;
	b=R9G4ztAmYsaMYOgWwZ9Lj2Wxu/+DtXDXnY/BSU+cvsgOvxriJLolws9uixJ+onV8i
	 tBCn3g1vp+namjrvSxmrJKCtVQxd1qHPAzti/MLh5w9j7yOnmwainvS0rUKyByM8wC
	 UOnanWZG6kNjknqnaj5WnfgkkiMNg8WFUzSsDSG8R4KsVS+jWZOyX6MMf1fapyF9o/
	 R3cNE1qI2bSMkS3XP4GhyBrK56b4G4BobuLylXLhyAZbsvRPojnUEovOfHSLcGO7+o
	 PdRG5686TvoMVncyUiC0m32FPmfWWuQGYrrFrRhq2p6q3NT5rP7skqfmziYy3WNs8p
	 YGfyNjGtz6SVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C4AC83F26
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248719361.21630.11677786244474024458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4d47fdde6ff1c42d217318099e574f506c1b55a61c6aaa7052b44e5699f94d
Date: Mon, 14 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752487193
