Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2713C75809
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756867794; cv=none; b=HXD09Tzuh/qEHlWfCr/GawFEA4fb1/THf8U4SAlgobdflGXOx+64XZNIL1WENEIy0KyYs3xU53FvZIXPUmCHUg26u3nEs2Td4ATsdXL73sP24e3YESiTOvx//avhENuQ8gdw+YltKcD5Eq1G5wYIHdKCi1YB8VLHTAmo8uppQiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756867794; c=relaxed/simple;
	bh=GOosyyv6iBlLru8F/JDNObI+Lmvvspl3KgcprBzxr68=;
	h=To:Subject:From:Message-Id:Date; b=S9GzHHHpGqD/sq1CkNrTEueE97fsme6f2qd+dwmm7Bho9nEZxZuG47QIv6zTwxaKQ3x1VRsKyoEOMwaRapOHTgYt0xf9+UGEuIfxHDtHOQqNU6Ra3BzpVaUAkJzxkyLWXUxNvi293ZmoUk5aITw32rT5XAaZxLpce3lQFLRt9Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTENkS6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTENkS6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4E4C4CEF6
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756867793;
	bh=GOosyyv6iBlLru8F/JDNObI+Lmvvspl3KgcprBzxr68=;
	h=To:Subject:From:Date:From;
	b=aTENkS6DU27R1aIt/Is9u6N8kEMxvaAXMEMhUB9w4mrY0mSB22JvHe5We5bmsryvs
	 UYKz4UVxp+F4Wo3Km11U4Dsjtbo7yiNeGwVkOyYnDFwRVF/b+KMB2ZvyqyHIm/7Jrd
	 TUNjXQMzUwyHrcOdSrd9CQZKHjHrLo2UG7qYllVyOLOO1GE6KLV5vukUhf+zyXUsST
	 cRXVwBdaZxx3TLKiM88dZhTB+Xqw8zJ+ekTH/ZsuGrq4ShgaHMvpvzMhxjBGz+b7Ib
	 /hXF4uChUoR8KXrfqxZMOHPn+Dg0juukilILFF9VFuR711BnwidnOoNxdxfOye57hk
	 TzbEBr8ZoAh5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED72CA0FED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686779357.23642.11476946978311598959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fba76d3cbbfb32e96a2850c6e758da9bd70acc6d6bff3ce53e38abd40ff1d0f
Date: Wed, 03 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756867793
