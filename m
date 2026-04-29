Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2256C33030F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777439254; cv=none; b=L2klmeCUtr1bjEoPEUIW4kzdDNO968EGPL19nPqnIPI5+DwK4IbociVPEMwafMdJ4ZNxWlNcFZY8vEm0fRO46MkOAHArwx3pk4zh2rNaRY57q58iFCmPk/OhlHBiy3vQlOHqwvQO2ld9IqE42TacTvebKoiIkenCSeiVIO0ey+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777439254; c=relaxed/simple;
	bh=WXQwtuOwsynh2w4ZeF/lKFnnwiJUhZdESHDEoWbw32Q=;
	h=To:Subject:From:Message-Id:Date; b=tLbqkNs/4/6EsyrCqxAo2oJGTk+ni1Pm/vI2CcH5ZPsee10e4asO+VhpVGQdLbDb3DoE531lm3UGd9l68elwJNnpmWKfKgU6u2OVypbrP/X2i9+jIdwkT2HwrS6ed1ZLy0XSi1/s+rQ4pUsMycDSaX5B6MSNULfJ3FprF1/s2vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFtk54uM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFtk54uM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC97C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777439253;
	bh=WXQwtuOwsynh2w4ZeF/lKFnnwiJUhZdESHDEoWbw32Q=;
	h=To:Subject:From:Date:From;
	b=WFtk54uMr8JgbqEpyBR8dIg9Vng+WEansR9Icxx6FIcWpMCLAfGXWIO4Mxpx7L+Yb
	 uRNHQW4PFO0K6iFAk1Iqg5P3NTqc0c4TDDIn3ttWrjUHjz9i7T+OVb58q0gBeJFWXQ
	 JlJrlQBzmgCycPRwHORbWq1WUHyndqjQ/lcOHrS36nhuJEFsmNuoJ85zAfIDbXYQN3
	 9pNXflWzpwaSDKPjgH5HVB5lieweS8Cy3DqIGe8r2B+7TlJ1S+7sodaKu9MEKnguoB
	 WpEGkiHsKcQ2zFEkVSV6N58PG9vmD2SeM+hDoK2vTsNwvbSscz/bgaxIvPVyDQjbaN
	 Wk+nJT3JZ/wbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF431FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743925368.11246.14304398282069158540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa69dc0630bcaf2143da2a5d93b067cf409815412b8f737501b381836438743d
Date: Wed, 29 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777439253
