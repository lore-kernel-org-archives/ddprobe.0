Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546DC175A88
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786255834; cv=none; b=Nfay3CAJoJuYw0XW92Ni6TDHfeLrAnuiSE+Wn8OEfqFd/9zjxd1BKqBnlIYGfElJnicCLJXtP8zcV5LAA1udDSyTNYgsQrc+CY9byOECY3k5p5DAzANyO0aNDVArFJrOJsKMfcCzvGYasj11dqOJNp8oGEDZHWfw5JJ8WCeRKQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786255834; c=relaxed/simple;
	bh=hodPeyLHAdSe7CjSDubBd05B+hlLFF8UGBLEiYwAF9Q=;
	h=To:Subject:From:Message-Id:Date; b=SJUFefSBqXO4NTM5MvA5y88Tp54Aps6A5ECC0ZRmB/U1+pvRR7RARtIkLY/UV5ug2mcZoU3bK6bCZln4qzn/G4mmCw3S5uDyJqO7ILOcPHhEhGOxP/fDbN21eNDX7Ps0/t+18uCWyfqlgdu1rRTAzRcuDABfpx1Xnt+6FtHeaSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iX4MjC+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iX4MjC+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D055AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786255833;
	bh=hodPeyLHAdSe7CjSDubBd05B+hlLFF8UGBLEiYwAF9Q=;
	h=To:Subject:From:Date:From;
	b=iX4MjC+2xza6NjY82XYbHs1DEHO2vmymHC9JS0Y9MedWbz03W9Ko3PKAQfmnWzr15
	 dC1fIHDbhiac2abdi126h76yGGuVM7exNmuU/S8RaQZra8mIw7bSyfKJLd5RiVTH7U
	 TXWKWSU0s5J574F9+SKhgr5RgkBVnSj1ZDzcx6d3CPWv4tbmGqI8lLie0EwEUdJN1f
	 87v4/F1qCrGiEB3B8qpGnFCktNy9Naxmxol+ADaod3/RU3sa3IAzEsQ0sc0rNpM1E6
	 O4QZ7Isen9K4aE0PWhBFuYTsToSJ/cWaU7wLbvYd+czalX4zLeeW6gRebFY8MzvQuK
	 bOxCK9umFx7cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE57AC5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625583368.8091.4312054027805631264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2febac7bc864943e095895d740b4803ccfe9be69bbbb9a384fc1b3cd7e842dd5
Date: Sun, 09 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786255833
