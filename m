Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061AC2080C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753421394; cv=none; b=W8crPf+Zc4roecwAZxYuf6HIoa9MZvUkFLUrHJKtNS+msczNiHfwUqMG4SQ81STqrFFmiSsXMG03NJdjC0nju7sD7cag90Flxp4KXpekhamcx8KbrEPykA1XDivPboSAleNvmMmCmaBqyrXVrGuOLkjzCeX5qmsnN56OpGvX0pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753421394; c=relaxed/simple;
	bh=/OyUictYuDUiKAR9hXgsAtPDeDL6H4hA/rCh5fPB0lo=;
	h=To:Subject:From:Message-Id:Date; b=KX6ytkYqoDkD2ic083viAPmm9U3JB72P+T4Yf98gaLBHI32zjzP1U26USxEl2VX6gFIhhiRoimX3hcaYroNEfl6ErlApy2GYjajBoujLgqSYv7ZYb7HsoYnjTwtOD1zQr91e0tQ5EEKQzHT3EvvJU0a6LSYHp1XMb0OPiOpycUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnzX1JUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnzX1JUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E3DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753421393;
	bh=/OyUictYuDUiKAR9hXgsAtPDeDL6H4hA/rCh5fPB0lo=;
	h=To:Subject:From:Date:From;
	b=JnzX1JUt3Fa7bNtC3vx1XnhDWFeIgXtmLqXMJ75XPkkbc1AgAQOT7JqY7K/4i/zGx
	 QYPPC3Hd2erdhh2at8ISd5V/jkpYfV0V1Ko8hP9PlZC9F9Hu3YGmebYMi4ivS/wn9R
	 SMnKA11SjsgBzQXw6R2pPDrXzS+LlNvDQ+yWPIs6QQ4unGMxzW9i8S+AYRKFoAiMZm
	 YofpFECmcBlTxJkZMLYVKnyVnOGTvHvYtbLiI4YsW39sb85Puvl0YZANCsVZWv3+GO
	 2EmGUpvw6C5n5Jsafz3rnQ+at3YUZA0sAXyrKvdYFcxGP9QgzBQDE9h05TYEra722i
	 Y9R2DzIZn0uLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E7C83F27
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342139357.10236.14378055587839162103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d37db15fe705413eaec3e5b8ffa6a76e952bf38175f214273e52a48eb0dcca
Date: Fri, 25 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753421393
