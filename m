Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0009215623E
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712688497; cv=none; b=tgFN7ziJnX4x/D0mWqYCYedYiw51w5naF3evyIVD0vu67iBVPqce5WG4lDX7XqoOKXyhtbb9u/u6F9pxRixKm4Sqaswnf6qYgFzVAZmwgMMYuSaT/3+jB7i/F7tXfSe0x6HRwMHLO5xcilKpfFxv1Z9T5OdxTEbPQQJOb7bjIa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712688497; c=relaxed/simple;
	bh=5DZoC9GwxSC2cxRFouvZXaMOIYiFPfG4UWGf0SxXYno=;
	h=To:Subject:From:Message-Id:Date; b=TqrwD1lDpRQvnkWljvvgs8i8lxcOOLxdBdEQvNFjboL8G1g6hOShBMZAT3n6EorcHn3u9u0jZ3oiDTjanpDS5+DQdk8Sf5Byo4ErHvCdofm5KF9JX5iilP9J5ikX4I6etpIH+dwJiG1RqEkp/8m+xzH6yYcyA+WnH/seh62Cc70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBq81ujX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBq81ujX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DC7C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712688496;
	bh=5DZoC9GwxSC2cxRFouvZXaMOIYiFPfG4UWGf0SxXYno=;
	h=To:Subject:From:Date:From;
	b=pBq81ujXzcNJKVE1/QYF1y8Cgo1e7IBNEObLuWO6QL+jN93qdKs0ICjh4WEj5C1dA
	 TJS9cELK31UA+qKf63ZgcYk3rcsMl1C9E0d5enhUASrvh6oiaQmHP6siy8WTXeMjJL
	 V943AwLObZ9bhaGrED9dnjFTxBXfSzSDBbQAuOdCXWiRxfdqCZBmmtdGJVPbDlCHX7
	 fqnScxmXqe2VXqch1Vruv8UIrZYHe4JRZ7KeNrfJUedm8P6xxAKEXwBAZM+JEGMe+o
	 KNEobjbsZEMwED+Kej7oYSFEmon6lDb5/8SB2lmCVB7bk9SGeZ7kDLexUR9T69IL7y
	 6hpTiG3iglFFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71DA0C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171268849642.409.2722660020778328311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4059a8bd3d60c2642af45001933d1ff802a08f894acbd82169dc4a6f1315eb7c
Date: Tue, 09 Apr 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712688496
