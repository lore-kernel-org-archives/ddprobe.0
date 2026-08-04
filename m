Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5767A33A02B
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785817834; cv=none; b=M5+OL/dVrlX54ZhXQ5powbRmc9rJl2w1XJNlEm1WgA0TYSBYFxrUDscXRGzcT9hFHNkUXVPKpO00TS21NisisIG04taugpqyKYYVAAUzABZndGNxeHh3Tje+aAbmnR9TeNnK24aMTNPiygo7fIWTYH1keZ4+dIMmktWXWj2ftvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785817834; c=relaxed/simple;
	bh=HHP1XjNbu8gqqDb58mFyT359JKA9wWL9SvkYyZjb7Qc=;
	h=To:Subject:From:Message-Id:Date; b=ZqhRH2Y1/8a9/v9qJbRXn7mNWuVMHaS/YG3eEZJf1hJV4IjhjdR4oKc/7PDzD2yc6/OJ3Nh1mDFX9A/ecqB+MjOKI9IyFN3uSlJnqgScWRt4GVBOdyU/RTZVyoTXyXOcaeWZujz42hSwXQbeLOvguRTGfk1qVTrFT0Kjsf5xzQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3Zl5vz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3Zl5vz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D606AC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785817833;
	bh=HHP1XjNbu8gqqDb58mFyT359JKA9wWL9SvkYyZjb7Qc=;
	h=To:Subject:From:Date:From;
	b=Y3Zl5vz5Y8tNNUCf1ccazOJWIQJPTzJV2cRWFAEAuRxFIi5DubW+T2y9kz8rmkHx8
	 7QX93dmBGE7YLU5po68l1h4al9u5fAc2mxZ59tph1HTUCId7I/KrvFJh/18Mgg9dcH
	 ENc7a1siesXVfEk1KsQD0jFHGqdjvyEsMweaL9Tfde+lfJ4Ae5aN9OEpwpBRrAANY+
	 6fLUsW1xGQ7NiIT9hsR5nc40YK3h/GMW9vG+GM89AodPzoFT6b94CVVYCk8I5jzNJy
	 Ext0HxOBty5Ku/SBChHmpO4W5tj44G0NaTEUZsLp0GOj86hKhHMYzXgsqsz9yvf3nR
	 kjtnksoDj+6UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1698C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581783371.15144.3516958906215255285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b3ccb72b078aa4cad0b8ff4318ba00c4efaddac5ca272468ebeb380dd8df64
Date: Tue, 04 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785817833
