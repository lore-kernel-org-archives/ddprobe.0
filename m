Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06972377EB4
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772582094; cv=none; b=Y4ieHTKu9lWBIdmzo3RvgPpj7E8mZK61ETbM/KV9gP4M8WGPu5UXSb1EYg+iUF+ij3+2MgWsR4Iql2XtvsMI4gu+VHEc4/90zKPLgiWTvBAIZkLAZh/4dgOCh7CQjkgtvUBQWm6HKF9iTUMbUGqpWyxb0YouIaRb0WFdrPNlvkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772582094; c=relaxed/simple;
	bh=ALuS9781yRzfo/Mequ+7h/b0697JAfZ+vchiZ9OGCh8=;
	h=To:Subject:From:Message-Id:Date; b=rfeetGpJkbMaar2Fcs+lVdyt/+Bqm15FXjRhJ6PaDb+HcLDQB4USrdA6RNSciOmgrvplnPlS0J6YaQca+596gpRyB9pzFQp1+xnVkKUosMphdlGwidEo5PApcyTdn4pvgbE+vQ1dF1yrqGyAOJ90PcBwHMsCQyl1Q8cDeadYiHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJAO/Wvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJAO/Wvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A122FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772582093;
	bh=ALuS9781yRzfo/Mequ+7h/b0697JAfZ+vchiZ9OGCh8=;
	h=To:Subject:From:Date:From;
	b=ZJAO/WvrzLpoUj8zr5jr2zqtEln0ANLvJWbPRezYgJaDSKwSCLlOUonGowao/qMOR
	 z0o0lCrCwKkjdxpF++2vwrCR6Zck8S449WtOL9PVp/aJ3IBxL/+Pei95rvREJP47kk
	 eNZqVoSWbNkAqYdXVx/32AhWHhqgJVDwD9/hi7fgoA68R8HVZeccfMGlumO3dtWBVH
	 PVMQNszj9XimuRJn1jA+j3QmLoMS6Pg/sG1fTKoebrL2cRd9h7gSzdbPQ6vqS6UkEC
	 HnqI+X1oX6g5ngkFanBcy1ee/8mbEin5j3rlTmUyVWeNLWWUhjsmMNdeTJmNOg0N3L
	 AnPAsp2Pq93Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91601EDEBF7
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258209358.9391.6786521531748760965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcf314502b1059695ac81858a573b2e76e1b5476713d5d6ec67b4e8af0540ce
Date: Tue, 03 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772582093
