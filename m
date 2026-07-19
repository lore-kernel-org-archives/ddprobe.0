Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B4534B697
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784477314; cv=none; b=hJkWsXfFQe1TOG+IXqQaS+Oe71SZWe1vcnlXlXJHwwzN3VNV1i3WxnuXNG59W4quaIj+qh4kZHtcrVGsT9hctIDn2ZLAv7v27iRIeg4NKSVHZjeoetrHSTeCt9eMs9WNdDLA6OALhTw/CP/cxLUpd1Bgp3NUFY/QYy08GANGK4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784477314; c=relaxed/simple;
	bh=y1cB0aeqRl79ulyLIAv+0rX+weWAP7+Qt6EhMSGEYH8=;
	h=To:Subject:From:Message-Id:Date; b=BAVsKGWHbq1wOSJL2kkLrJiIXEHLpFrKYCfavdxGOTKM4PKKtHvIJj3skgDrD0UMNCKTDJh3ksq2O8pSodWRfChvuscQ2GnejoJfuozqS9gOQ8X5jY5MYRvgSr67xCGsDs8yVgnEQsGs3Eh7zLJhnpsv9k2OQLAaAZjxpxaActk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glwKmb8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glwKmb8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98BCC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784477313;
	bh=y1cB0aeqRl79ulyLIAv+0rX+weWAP7+Qt6EhMSGEYH8=;
	h=To:Subject:From:Date:From;
	b=glwKmb8mGjHS6k2mBNLm5f5lsyPsOMmoJ/kRQjkBP6grPxn7x85KpjmcJevD/HI0H
	 lbqVaxBI7bWJV8Yb2+ZxXCQVol3YLHGjv9iJWcf+LU4oNfB7TM5zX4SDNkHKVrLu8G
	 DSlxqgQL+hIVi72YaX+U/SykzIuHkSglpzay8cKvLrzgQRyExKlzBYep6TYRH5uKWY
	 b3NWbfVIS5aTjGLv2mCHr8OfI6gXxgpqW3QW0LnP8fkorkpuhO9wuSmPhl7C7KdqDA
	 PKnOphfOZURmbPHlfZ9g0ws/y6RchxhLGbnSqI6xwS9V53vqa3tFtPv3Vt7SqUzIIM
	 AQ8/HYg/KBHxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EFEC4451B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447731368.18561.9423582276177521102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d35a1872bd9bd3ad076d774fd7162faafcf632b2e7279aa585834006fee3f4c
Date: Sun, 19 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784477313
