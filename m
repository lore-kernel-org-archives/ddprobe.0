Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2913A1BA
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745628594; cv=none; b=VATZotBOZhPduRC25F3f+odDZWDkoVdbKwBAPGxzRZyx91S/xoOM/tUz/TAu5nmZIdJO6NZu6j39Z4PMKBU1058O2mheO2aS1fZPHcErpJ/sowNgotTQEabW5M0mOGMFmmN/doRYTmnTsGh1IdkfYSlopR4fX5mgzLt31ltKzW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745628594; c=relaxed/simple;
	bh=ncxuBQT/UICD0+rmZLHXeosbO5nx8+TQPWuNsLdabAI=;
	h=To:Subject:From:Message-Id:Date; b=PEmyNtAPlDZrleDj8dv/IXy1boUMX3FZAxxFJLCN2T2BJJrOqnEJ5oSrfoRVP0+KCmzu7KJfxNDC/vMYtZuBpETGkfjmLiXTLqK3HXuDthqJ+QyQ+zZGLqvhtVxv1QaMXcqOlYf0DR1RfRpJZ0zHe828uj+334bDXDQFEYSV+0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTLYQ9sF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTLYQ9sF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A726EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745628593;
	bh=ncxuBQT/UICD0+rmZLHXeosbO5nx8+TQPWuNsLdabAI=;
	h=To:Subject:From:Date:From;
	b=LTLYQ9sFBg8Wkul9UhX66MBH+Kimmb+ZgNDl9DVxriQhQMYVZWdhUEmuiSvmr8/fe
	 QF2F0/34vRVNR8y2yfKjqEbDmhofXwaJxDKTj/b5zupivWygOUKd7RzRdj5IXuY35m
	 GubzYguq8lu0YTgY5FogJEFgPJ4hE9iStgb+JN4iJO6YVLgX1nqAMKHQ+DLezgo9Hd
	 qb0ehKyBIaYpAPiZc02WzZSN0ibr8N4D7/fbs16O9LWI8vuYf4EWS1SMcIkD68jFvY
	 wo9HwzUPl5hzrPHrqUllXEQgIzumF21pSItboIHWjlt3pyZEeFfWSRdu0DIhapxL/0
	 2rK9nbR2186DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8AC369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562859357.2113.17587039440253953228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555c0b06c53a0ab2af13ce7fec3bbd59a492a81ec277e3e61f43b5d8f0fff1fd
Date: Sat, 26 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745628593
