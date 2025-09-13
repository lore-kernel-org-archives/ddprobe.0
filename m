Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1981E19C569
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757741994; cv=none; b=kCdqWGDWKlJpP46MrIFnW81IdgpOWLIKth0MF/yCGqZzqnzW+64CqYVUZaZUb/aXsusVuRrXfC95W1kI0h0qMuVCJBib90kY8F67OMz+/EiXYBSuwXqYT7N3ngt6IgIIVBT6Fbnorp2vHFawbjIVpZ4WYy4VhSQj0WLU3MvW1MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757741994; c=relaxed/simple;
	bh=5swvpWYCvc0eZfQkkwjjy7VT6Xr9fxJpEhmoye9utxQ=;
	h=To:Subject:From:Message-Id:Date; b=pGAf+Dyr/HdgAitsJ/+Eqt7k5+MNC6mSuk4DUfyZPsy9ybFx2D9kT7q6SxcZbhxUDugRK4aE8SksoGUVbV2zpOavVSiYcZYUNQpX1/Yrc3Hw4oLXG41y0Gy+zx5CZal1RX+Bup2K9tD2h3syXTdpyShsZWAcKGO9NHJqeUgCrBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYyT6CDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYyT6CDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B50C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757741993;
	bh=5swvpWYCvc0eZfQkkwjjy7VT6Xr9fxJpEhmoye9utxQ=;
	h=To:Subject:From:Date:From;
	b=cYyT6CDOPj9HQyWlQ5sJGAV8Bdig1oRzQj/Izks3V9YNQwfSY6g0KgUU0/LB0NZNb
	 0/RVV9lJDuwhJAkhiB2IRFSAyDR24CyPrMpNMBvVJzgXqRHAu7RVeFMrtl1+EJjOud
	 rTsFOVt3RfyCm5EOy0gEIbrI1SjMPJzzS2cSWDVmu502T93/Y8IyA4W5tywmHliGSx
	 qHNTMbpFPlfG3y37rITAV5Ip+0qVDieZ9havMNmt3viOEq3hodJ9+3QV7rO12mMilo
	 ptNUgtlWIf3SJFlC5C9Jgfnm2R1oPj1vPX2WWWUh0sX/6ZxZuKQfJBjI6gSyQywozh
	 X7yoqahKun9Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C26CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774199357.3479.7490232680116467132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473f6c8178993341f6d700425a50b3d9c0c2fffbdcd58db9eff56fa3ce35d12c
Date: Sat, 13 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757741993
