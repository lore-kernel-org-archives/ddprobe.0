Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592AE33D5
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716096143; cv=none; b=JVktcc/SbYFlInvvRf1g0OsowiKgVYOncSX+45v6rM0jKY8BEum3gn8u5C461IJJ48NFwn+mbXmmC87sM1YUk62uUUFlpnRL9N8yY5N3QNgt/Sh7cCvLdEsYL1t+FJ4o0mh8w6Pu9/tzBJneE2db5BajReN2xXNdY9mWyjgcftc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716096143; c=relaxed/simple;
	bh=0yZx6CRx9VQpUUr57HZas00ZhHYjwjYLXcb5VO2vwx8=;
	h=To:Subject:From:Message-Id:Date; b=HGk1lDfyw+i+xqjfb5YGDEVr+2Qh0CT5Rp6VAgVHKDebQiuQxcDtlf5JF2pOF319XBBHVr92KNvlKU/on3pfSSfSLdT/1PVpdz03GdeOL7gxrz1Hhwj+oD3P1sFOxHkWMFxUL3jOPjqpc+X6qWCYxcCir5wgK3KSifqC5j9p9aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLpX5Jj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLpX5Jj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6136C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716096142;
	bh=0yZx6CRx9VQpUUr57HZas00ZhHYjwjYLXcb5VO2vwx8=;
	h=To:Subject:From:Date:From;
	b=CLpX5Jj2IVaWaExqzqSOJ6lAXde3IcmGlokzt1+Q8y4ogAzo9FdgE8zUF3cgT9gOC
	 PnRNxJEVheG+sRuMpPGcK1Rj7RVRoniOeGKUMGzS1FagXnxI/J21a56NgXzahoz3oO
	 Q8DCEQWF/hJonDo7j5YBTm8TSx+xq6nCxqTNi6l7Artdh8gsTTD0wR6laVJJ1E/7Gx
	 y8V4eZaBbOjuqI+hK6C4xdnmnWPFjZpdF8QCIjEEboxyy5MJOm3QmqUUK9qXxE7Qxb
	 7gs7GhJDBZ9JvFa+iwiQZnLpOMOJgBra8kUvlg5iDbS9DLAtkFqQ7U+PkM11sJppQV
	 CNt0EbWDHPGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B1EC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171609614276.30093.15979069595569272854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abaa318f3f8b65cdb41fc21280e45381b7dec5b79564dfdaa346b4ba73b406b
Date: Sun, 19 May 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716096142
