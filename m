Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC32364053
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775969854; cv=none; b=J6qkPAeUWz+vm0dALq/HGR1s5iBiQGSShB/FQseM0AVypmE5FptFhi4XJOEwZozveDYrHPRhuymjcixaVFzRp2zc6Q+Jhle5v0XS8bXE41QW/iIuca6usFgvBA9sBkYiPu/CLCsmGIXm+Xr2DMMtkOse/jVIHJw7tlbhOaeiBxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775969854; c=relaxed/simple;
	bh=zCDt+l3CyQrBAuLoCstbv+ywLsS3P6Gt1YTKjlVSyAc=;
	h=To:Subject:From:Message-Id:Date; b=Q+DKc29DQ9ZUFRvtzIwZUv7NxlNcE6X2wvQhwhGJtWf48uWtiCpSozhOyoCA9BczKpg2SLMpDTVRTwAfrc9jigElIR1Vvo4GWsnEaN9TPp49s2+I4QKhC1Si8l2Xhg1HPvRzyE9nIWjaxwy+jEdL/rHaYcPWc1OFCA/QQSCc4fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCaYXXDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCaYXXDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8A0C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775969853;
	bh=zCDt+l3CyQrBAuLoCstbv+ywLsS3P6Gt1YTKjlVSyAc=;
	h=To:Subject:From:Date:From;
	b=TCaYXXDhDiv9zIY00dY0KQ8AfHs6dnkMTvdJXIN/Ffz0qX0gnckupJclCXm5zOIZ2
	 eDUv12WAGELA0Id9V9k+N4EUYvSceRx2kxmKUz3AFP0f081dsSZCbGU6cFfc7ykU4q
	 MmQamSYDLSifQvCb228n1kpZAywzOvM5ZljtNBxZxim+yGi0kHb8ySzD5uHa9GsURY
	 sOK9oknBpzyYYEnUszbIYg5HoiBN0KWMoLxvKr8Pb3DV4fkWHFUXRqb+h9ucj9rDpY
	 sTv/hqPAZLuivNiSH3u74jQB/8pH+3ymnvoM/q+z8CtQ/jUSDreegeRI4FmH5B2NLR
	 +wVeT28R4mahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0781F3ED6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596985368.8689.10053639353425220827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fad6fe3768fab8984dd886e5b690b9731c839e46334b2ae661a1c4e04fa32d1
Date: Sun, 12 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775969853
