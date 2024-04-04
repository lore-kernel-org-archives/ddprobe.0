Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0461417BA8
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712241497; cv=none; b=ptSExAV0d2mKRiyhrA1or8fGR3g6FD97Giwlb4mHCO/V7LRgeaLoNrTueFtGOsUVlpLSuPKH7e5erAPs/jEYykEwormHgWOrtmcnMbZS/MIG8mRvWppoexKRPw/1yZWkcmJx4FjRKKN2mJtYM+DcMvXteva31jo4K4NvDQYtZvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712241497; c=relaxed/simple;
	bh=Fm1Go1Hbj+nEcE7EmJbEz1UMEZ6uR6eQ1fz/sY4bXow=;
	h=To:Subject:From:Message-Id:Date; b=PdjgqRMMHW/MRWYHFGUj/OCh7fehbmW9ah3CSlxWoW6ZeJq+8yiJh+CSdV95MYv1Ei+cO0o6cIXeFl6PH2t6ixJ40kJ442UDuGqWD0xtaxdC9fCzzqhnWQxUhoUqu/GeY5MQoez1lTNeGTzNDibNdKFVsLtLtNinNGCVu4lOIpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idb4jWGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idb4jWGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D712C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712241496;
	bh=Fm1Go1Hbj+nEcE7EmJbEz1UMEZ6uR6eQ1fz/sY4bXow=;
	h=To:Subject:From:Date:From;
	b=idb4jWGxmBcQPuOexLrRjFkehnBZg1Z1sQ/XVMq6j8KvnuvhJV2I6LbEGfOqUUS2/
	 drHtmkOoVPTGl1kDTyFTypfGxUnqDqgr0tVhUob3JxMeHsABdaSoHiZWrj0eWQUPvY
	 /SlMi62qOAz66PLrD4BkJ3pozO1+35wwFPt/qBEW+ZtSzmE2b0YkD1yhU0DUIsE/mD
	 ttQYhzBeVkvZcTIeeZbm48L3PcH+6l5R+UAY4WbUOoSZtL5U3LUtA9rI5ijFyRVSez
	 QEaK7qx0Qa8jJ3CTUFP+rV/yvra2oGYUJNv49GL4tUPy6hgFiEagUebnvVzNydBRfE
	 gE+g0O+o8jigg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A096CD1292
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171224149641.15853.12113479255218336999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49afd99c9b618808870d77c63b830649d2137806827c88bf026cf2d6feee2936
Date: Thu, 04 Apr 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712241496
