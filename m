Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218D9846F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759190994; cv=none; b=aGNaJzFjwrvP/TA8OgS8bAKtk1b5LC3KtNZeS/FZ3eCqOtnWWw9KJTt+sBnDBY6HwxXNH77AhFw8Uw7TocmWP/LGA9+HZC/IP2/Uk0sHSZr8qhEQDI8YXcWSMdQrAZU08L9A492tysdY6QvPdOZagygQmYQ0TqCv4ev5O32eO0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759190994; c=relaxed/simple;
	bh=4+wkHPUJIuAZNpvEfmbzNe+tWRnW14Xy/xGKaX0Tki8=;
	h=To:Subject:From:Message-Id:Date; b=Uxz3u6a9Ti1wtL52CnAjfWtcekHk3J3Q74xStRklC5sc+vhFpaEKJc9myoi4D7EGmCPLl6/fFyyys9QPzN6JDGhQImz3TdnSq6j7cwVx1Fe4oAIj98KKikBwo5jWVohEOARJ4vBg8BFq+ALDnpBCu5ZQcUq66JQyvgMUg4yUrq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tL9Cr38W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL9Cr38W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6758C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759190993;
	bh=4+wkHPUJIuAZNpvEfmbzNe+tWRnW14Xy/xGKaX0Tki8=;
	h=To:Subject:From:Date:From;
	b=tL9Cr38WMhN3506R3yGAUrhzurLAmz8KjCQTM0+NbIiBUNViVkRWbiIUgD2t8Xc61
	 LAfxAmmx8HrCig2gBwoQ55mNzaZ9+LDrcU6XGBbvA9tMugMTIQ1wz3ssUCsLL+5UWJ
	 CIMVf9GZ5y3Pd3vUTPtmgcwVNcGPLvUa+4OdlaB3Avkfgts5P4f8uSTkDvqEPfSan2
	 Rn3BI/2iFHtBg7xKEnxfHNs/acVN7FGU7WQ7JOvJY1KveK9ZqrA1YyvFFQCIM6O+om
	 HKBUiWZipv6ZZusq24ROBFO3DorA8xx7XzPkPWiQAJL7Nl4s01zTnb6cuODf8wVU3g
	 p9bJPUjDrP2Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D1CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919099358.2816.425986500040461327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81b094d47222618d2921fa87d2f7bb725b1c837b8ef0c55810d33a72cf01b2e
Date: Tue, 30 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759190993
