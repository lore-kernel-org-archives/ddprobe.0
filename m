Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF191BC077
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733922954; cv=none; b=CR005IJ7dC1GnwSfARpBMlr20O5D8nWHys+q+wjJ3av2/qAZXmnyQh1Xht9b8XVZzQrBje3zBAimt9J8vg2arKaN3BF93rvC+zluWXpbYqwzF0lGmT/WYoeDv4C05L1AtXrbSeK7YnJEFG4FGyJCWQKsoV9qN8wYuHSLU/ajd54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733922954; c=relaxed/simple;
	bh=bpkupdCdmUtQse5WGZnlU14lLotbByyd3jEkyI9jVww=;
	h=To:Subject:From:Message-Id:Date; b=LKM+0Dzxrz7ega72acl0KfV5a8WL+6SGy3fzE4hIKSMjqVO3ANYMWmNvNMjKt/h1DaJvptvJlUKUr3D2PsIH401YGldItLLMF/WSLf360CHRB8VRXTRprrn2KBVDMnFwYbJOCviW/vuQrshm2opBOrw1kbWmypzgdBnnr7ZNSHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKe7jY55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKe7jY55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF25EC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733922953;
	bh=bpkupdCdmUtQse5WGZnlU14lLotbByyd3jEkyI9jVww=;
	h=To:Subject:From:Date:From;
	b=HKe7jY55486rjt9GLD7tjiGtuQs8BonbPw3q8+tTyLyYWGOhI3mhgtHDB6t24T/ma
	 PDmZxtfn/59nZPSbiH6d7ocFz2ai9zCcpMEnKdNPiB1EHEIW4lE+hkL1gWtccZWviD
	 h6YiXytsZr7SmwII5qZSiq0obt75EHmGkFLwoNjTJG3+eKa0WIVpONQz1YG8BAs9Z1
	 ufFWhRbxLGd5HqOH5JpdvM9HHbNsK1HjersHHiPZc/jOjw89wkouH2WPfhrbBdQRHC
	 8OisVJN4pmbaGXPJIJm62FVOtRYR/bem0lS4fkd8fKtTj6/6RQXyqJ9sxSsTO0oRGM
	 K35V13krbMZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9271E77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173392295368.27788.7864168994692190540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002b7b5ce2eca26d1828568bfef127ce7fc96951c205d2dd7cdc94a02e982833
Date: Wed, 11 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733922953
