Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618EC8003B
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716401003; cv=none; b=bQ0okvMguDsOPMzrLHVhvH30kMi9ppOLQvNm6tASjQ2gWriEflX8H4CLTpnYozFag8t8BW8rZWJByZ/UFshY2kRkmCT0wXx63vnRzRUyn+KsNFMhzdaKWgc3k+Rb7+hnUDCtYFbYWWYR72BmJjFeCXun9qMAJLNopefpAM4+GFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716401003; c=relaxed/simple;
	bh=alu/EUojKAG83U4oHgEhN7oguYcteuSvvMk2jdFHO7c=;
	h=To:Subject:From:Message-Id:Date; b=spfLUKR6lbWGky3G+JjyDz4KX3MmYoU0spAL4hgE7htRXCyRMvvegiv5uU37gO/W1TfbrHlQb6f7W8He2x2Lc4Uh4l4Uk64D6WIYUNnqTvNO/FiGWXINB6xKbEd20v/Btuk+UMMUmcV1XAslQP4V4xRTy+LBWh9oykBW66sR7xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9upxei7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9upxei7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6F0C3277B
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716401002;
	bh=alu/EUojKAG83U4oHgEhN7oguYcteuSvvMk2jdFHO7c=;
	h=To:Subject:From:Date:From;
	b=W9upxei7LkUu4Mx0FSDlkbw8wXaPFab9CzbxwAMzDIFBTu1Qv21HXe29u8N9GM3Od
	 DOxfVfIc9ux23JzH9+FUHPrgYN9h5SZOVHr+Flb/wKLr3cCU3/JOTwwk1y524kzfYq
	 gaZk4ULcv+Ktzf87c9Qcp6VXf+qUHzXhuEG9cIi/xMdlJsDSPybdOJwT87F1OiWPvh
	 xz7pwZfxAk+NHrQtGCpuxx4EscgOYLwERj07ik5S9enccIUrvvXu/0vz6TO6nSpXJX
	 VbRQgSmuRXXkqaYSjYZzQoJy2YwmY2718mHZBYC1olfb/qB2naLpmvrLg5c5v/KDzE
	 gbTAncuaOH27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA89DC25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640100282.6303.10560989197685711574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5588743fdb68e46da46b3166e6de835da6616339fa3f455e977b77419a9c6a
Date: Wed, 22 May 2024 18:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716401002
