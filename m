Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B0740DFD7
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776606454; cv=none; b=Ts6eF5wmeCpxgbLjsTQUhcmWpX2ipriG8+yZ3ygBPTseGNbOGtQyXOwkfkRYeInHrmB6Gaqz6iHUG7HuHt083QkvLxL6NSB9TKnzE7rnSu1WeK/ySnuvoQNwZPUJ3oL/ZGaSp9vWAj0d7Bz422qKeTNUnEvGhttkkQoVZi31wO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776606454; c=relaxed/simple;
	bh=1Fho+cqHyFTd50iuJn7ntiWCc2PT5r0laBOlNlgfCa8=;
	h=To:Subject:From:Message-Id:Date; b=VB5Idfp1J/IDojFtsipATeDvk+rjEs7AY9bng3RAXEHu4/XiY+EC9Tiwv9KbhnXv2/j7lrnVAqvgBZjnTS4NEGgLR1X8XsFZT8Xjdej8rC6cxvlLlTfmcCoRM6KmKH2JOk6LnDAapfh1GzKa//UA2jMPSjwLr2gfv9HsVazkEhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COImjv8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COImjv8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5032C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776606453;
	bh=1Fho+cqHyFTd50iuJn7ntiWCc2PT5r0laBOlNlgfCa8=;
	h=To:Subject:From:Date:From;
	b=COImjv8MOfJilpEosdfkzHFPcAQG91122Aa3HfYL3wT7YSuuDc4at1x79uuSMoKOK
	 SeimtHP8rsKGWj45+CmqN4lny2zjW6C9hFfzfztpnhWe27J7VMev+brsu5ZrdUHW3X
	 1s8Aq3rjnOapfEf+RcboUcHry8ATY6DY9ik+WMN/f+ZDvTCurLpoFXwg7XbzXp02YH
	 TpVD53Ewo3wlrv2pY4TFSqsW3lXYay6+7CRY1IJlJ1I5fZbNVIamaxIxQRJoHE0GKI
	 KaxM9Xh4dp9oc5Db+OPnM1Z5KvheYHtarNzEti+yU8pkW97A5p+Laz8x+JJW+jzG1k
	 omOf8TpclX8jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7E0EA719B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660645369.24797.1716136676571742177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5db256db4e236cafe2e98d908e6d4b2fe0e42ecaeafc969a2a08c8ef22f403
Date: Sun, 19 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776606453
