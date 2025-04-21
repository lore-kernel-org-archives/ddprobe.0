Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4492E7D3F4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745256595; cv=none; b=li7pzZdp3/Z5VVKiSqQN++XTIlXZ/spHmn4krw0hlbw44BzCN/IVzVz5AUtPS/0guPgpB7dZFZU6z4WjKU8K/ullS2PDhr+RKbHs1M3jpOyQSIoKz1LL65Sckxmn5jYfR43lK3M+bzyphjh8EGq1iLmGSBEFVgjIlH8sEibVWQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745256595; c=relaxed/simple;
	bh=0er1MSNuOXZag4leRm/b7iMqfRoG4+TCAoYhhTSmRoY=;
	h=To:Subject:From:Message-Id:Date; b=oSB0f7WevrRpFC8ucy4rgLi0TyP0d0j7ZuLHdjM+M0WB/R+ZRlkNjNxZiO5zcqsvZh+/LdjT2H4dPMhoLzO1h+8lc5rwl9EdC503v9ujcL38ndKdBN/pYUneTz2ACXLbYmmZht2exx5wRlM664zchnUc99RvXWNfjyFsK9FjpQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf96odXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf96odXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31AAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745256593;
	bh=0er1MSNuOXZag4leRm/b7iMqfRoG4+TCAoYhhTSmRoY=;
	h=To:Subject:From:Date:From;
	b=lf96odXiM/aIv0/sRgklOtHgoNYqs2JaypDKd7c/yr0vboTvxEL8eGCByyA3G8jkr
	 j90YVgc3QsfYh++UfJXMG+UbAhRIkhJYjUEDjfZ8ak4emJ3SsIhcyPhVv1WhziXDBL
	 qS00pM75bZ/3qig9MfJNu7UrBxZRJs7PBiIqRA6aBpw2IkyD5zmEEmF/6StJ67ixq5
	 sAPUmC/yXWXG9c+T7pupHQyv6Wr4PFHU+7axvLmQVIR6O2D5/87wK/W1jnGd08//iU
	 Avz+y7jtBHI4knOfo+I/+SOGFBl6xyaTD+D0FTtVohImouEy0u5l7V+jJLgcTiLNSO
	 U1xNWrQUTsnuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D240C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525659363.20813.9354692064655428880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b2e562ab10990dac12b1add67577a24fbfc247959a6dffc83a276bf1d281f2
Date: Mon, 21 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745256593
