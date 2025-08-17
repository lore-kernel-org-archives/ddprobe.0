Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D99013D53B
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755442794; cv=none; b=QUCnvEXMI5ljhV5XeWLsBdS5jvl9Ez3GRXHmlyFmEAgPsjGTOCAVzRivy8qTBpzSQoNYvrab9gRmvyMpxfNEuU/LTZ4aodlIxZvtXDITkictBZL2/k7n+waBOwxi9xJzQDbr3UpmQ+5nNHCJN0oTC6hr3pAbYkrO0fmAqoAMQBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755442794; c=relaxed/simple;
	bh=qii0UITQwXzCC5Po+IpO+WsGm1qTwdy3n78RMy4hV5U=;
	h=To:Subject:From:Message-Id:Date; b=kM9FWgSWq36KRLjGU+8lu9zjx3+IOHInoQS9IcwJJIbbEaa2QSFy4e89OjtOEHSyCbApejm3i2rvRIdIkJ2YbacAM3FEnfS2XDGIqv54p1wWHESkJf6F7Dy6Vj6UOB9nEWThuVYc2t1Mv587GjpA2fbl7Mnr1XIukryIgzM8X1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2aTSjov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2aTSjov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2331C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755442793;
	bh=qii0UITQwXzCC5Po+IpO+WsGm1qTwdy3n78RMy4hV5U=;
	h=To:Subject:From:Date:From;
	b=L2aTSjovdGiQmujpOw96luExvSq+mMrfcsK7x9fDFpDO4J+LiNX13ChGf4bXh+lHF
	 K7tTI6qtXH2i08o5/XJP8hq+Y/4Gsbrewl9katQ7cd0+qrm8WD55ZFYDsg/TxXHlbu
	 gKini7O3ULU3KKU8cUPOCkRBF8qvmax81/NoF8yFJbBClH7NRU9WFWqEFcTsHTUeMJ
	 olsTGgqSaj2ZyoSunYN1Zo96/GX4If7+oJfVZASj4od31t1PvzHCuSAf8B1VjhbMYC
	 be05ie4J5LKpPl9k2XpOj/O5q8Gn8J6VsdccNYrjFz8hnaPM2+3ATc50qjZsdz5TE2
	 eXlESgCzKka8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7ECA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544279357.7517.10905283640198131349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1217da28ddb77f4bb67a377b24652155ab8f72dd9b7b7c2298f6ca7e4f15a5fd
Date: Sun, 17 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755442793
