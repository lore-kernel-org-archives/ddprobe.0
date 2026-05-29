Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D6822A80D
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780091614; cv=none; b=LwOscZlTcqIL+gQXEg5wQqslkRBEZCdEKcOwYqJoCm/bxiGS/R//K7m3evGqyAJaadDTweHfvxeAF0LTd6V+Cvz02gEfm2G/mNKC3cvlieM9oCjRBKzndveDfbSK4IWPViEKSoquXbM0tAqFncvIezurAoCZFoNpCTGJl9WKhBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780091614; c=relaxed/simple;
	bh=Zj3gVj2soSth79lsa+fsfGvUR0+UtEqHm5CRJDxeAXA=;
	h=To:Subject:From:Message-Id:Date; b=HZ4166Um+x2/02dgR9k271ORPdsvZszQzyAX0nMIVlP2r0i10+Z/W/hqkSMg9TdBqXV99lkKRgP7oh1BFib8WC4r7bt+bLC6m67hsOtuXWLkfAITuto67svA4m5sEgtYpBM6M1TvGK3fMAAOD+xydZDKWaCVI7lLUg9vTvmxDwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0A8mIFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0A8mIFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A62C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780091613;
	bh=Zj3gVj2soSth79lsa+fsfGvUR0+UtEqHm5CRJDxeAXA=;
	h=To:Subject:From:Date:From;
	b=e0A8mIFR3faFURaPc8Kas3r7KPfo/q9Drv0De86rytaviHysBvhIxM15AqgjveeRf
	 Am2Hu7iTFSa2zEH1DyZX4QV5WjggfikJGVzoqGbDkEZq0APytB5J6kaWfbRwWpWRqR
	 DLfNxlGyQUnxmptHCKvYljWwpUy0/7lcEs5Np4e+BxowRCVjtv9xwobIzcBgiGMEZz
	 XS6LcWEddL+w/iVAsWOGoQdlB0eAwf0MHblN+BxpL16YN2z5EvfdYpuc9ZsGQ7ekWB
	 wBgI+rH+fh13ABZzhPhaUn2j0HO8qa7CVeuRUM4Y+qDA5a2HnN2xox2dqK4iBSkL38
	 yWup5bwq8dJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD38FCD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009161369.28790.11761345566090041216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75febe67d3fc7fdf3c1952fd73a2f8f4f314bd790fab1338a075aa29d8c23a32
Date: Fri, 29 May 2026 21:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780091613
