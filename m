Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAB035DA5D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784157514; cv=none; b=sotUHoga8kT/+9OCASLFboagEoQsh+GHEY2sTt9KjjspTgEYWzDMMz+J5OdSULZkX+xCMcJixt20z4bGU1Asw6Md6HyTMONmPpY+m2QuVkqZmFW2eK/Cmhg5VaVkT4fSWl3NqPVTHReXdu5dq3AF90w8iiXrc+0OiGcKPxXIa64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784157514; c=relaxed/simple;
	bh=5DF2z/1CeChRxR3ld6CxJIi5iYZNDPn9IRb1oyU2ZDU=;
	h=To:Subject:From:Message-Id:Date; b=b9Lqqi/zThZq4c95WV5G6ZIfQIECHs3z7fqenzi98+oe5PhDGja5QFo0c6OCYx0rtUGVGi+F99QbstYN3VB4wYO+fzueixdx/zJpGjKcVp+dn+1+xdcPO4XJSo2SD1panTmGQzxc+403B4o5fXiL51xxhl41W/wQ+66TG/xmCB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnJI+nd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnJI+nd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB8EC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784157513;
	bh=5DF2z/1CeChRxR3ld6CxJIi5iYZNDPn9IRb1oyU2ZDU=;
	h=To:Subject:From:Date:From;
	b=YnJI+nd5bpnKA4bIOG5j655n3jKE4NcSBmJE8t+4GDSKI4MZb5ZjvnJMpkBd5K1LA
	 0ijgL+xBgA8hPxjOJvrAYteLBCqwsiDgBuVJgq5oB5Esp9QheviSJp9oYth6xonlZ3
	 nAB0mYsFE4Q3HDSZCbk77Z7jCNMWIxDdqyXXMDw2tT6PVnFtPpJqMaqq7NP2BIwNCm
	 hRvJrstRFNcjeVZlM+LHCLN3xvMvGSy6ufhuli5Y5IUCKn/zCVjSDLGCsZwba09YV7
	 LS1tQ9mgF/2dwnKwPbzYJJj2pWqvqXhpnAEWjmACZ1pobEOzrRGZvu36wc92v9JunU
	 fVX522R7O+rFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8192C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415751368.24942.14259153442434106209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48bdc756538803b9b4e60fbc3045cd6c90bfb10bbf140f582533a37db39f521
Date: Wed, 15 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784157513
