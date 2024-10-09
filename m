Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283419068E
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728475554; cv=none; b=oWd9LMnvuYNy4qy+djvcmjaEsIxUiiDAZGIDELJyD20y4IZ6iz/3GVIBLK04KRbyH7ru8+dhDEkdMKF+mvIAM3/s7RGlqtlzubqJ6fgpRogVUxyGvxvPMWlDKLC295qP+1utqCugrgu6HJrdDb27P0rnY/7n6Kec64ebXU2Gakw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728475554; c=relaxed/simple;
	bh=xf4FU5CWEn60Yv21xraUI48WWrKCxWbBmbmuI4jIk4M=;
	h=To:Subject:From:Message-Id:Date; b=t51yFgZB/AhTQLZhycxwXiLrYkCk1NLmO3v3Y1JQ7+sGqQ7XuJ/XZJfMzbedf1lhSALbPprJGppK1jJFshyfpK3jchILk6FbDrADN5mEIkArf0k1b9CvH00L+v8buuTx2WzoBaJEzHKlPxVEcxTjqeIQGm8+8UniE6XSj+nayB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJZ4yj7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJZ4yj7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30CDC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728475553;
	bh=xf4FU5CWEn60Yv21xraUI48WWrKCxWbBmbmuI4jIk4M=;
	h=To:Subject:From:Date:From;
	b=VJZ4yj7TWywqpN4m+Udhns/LZ0zTqoRIreseawzXp/ttpkrAR219rAxXvvbCtFJQr
	 GJgaFL70oxRa6sswX5Ur7Gr6J8Ye5iA1I6lcjFrD/HhkI6vwehXEJ3sLODRIxKklhM
	 cD6+ZmFlTqDAAVBLkbeXDs1dpO0XcSIVxqPC0uYf0e+1nJMtg9tXq59/70/xfFIrM9
	 NXtaQQbReNZHsd1QSKZgqBxygFJnhGwx8FSteDO9wQ9zyGcy+W2hH1y9QkZ8pmuQ9z
	 eWg+Y52cSphYYak89Dfw7APjBlvEynhB8UTP3A06uoDhtYrlice71Ap1tlhAAsv/Is
	 iLpv4mJPZJUTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E294CEDD88
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847555362.19242.2716073732162063417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd01bde059598c10c94c9d39df4d8ef16bbbd058100d95e9bfaf198eeb1e792d
Date: Wed, 09 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728475553
