Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5AD25771
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743895794; cv=none; b=LTxEar4Ma9e21mc4WOQiAUtTupdGeyglwCUQ4BOro1+KilxyP5dph3Ln+GlOQpxC+lBmtUbO9aCX50zvc7ik9pr9BueRuSC+YmmKykz+VltPbC1aHvsNOvq3abWCIoIjJJQO3ktxAR6dahu11qOkQkigM4pwDQQggfL4Q/fH4QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743895794; c=relaxed/simple;
	bh=A5KPE4FR5ZDlTgrQpIj/PF2caMPlGxvSQutEjc6pBWA=;
	h=To:Subject:From:Message-Id:Date; b=RGVc7/vMKs19+GJ0b9FislXsOcFiBDTdCupbKfv4bHMCwJ7Vf/9OiqAh6t/vKcT0PJdB1T7vOERuPe+xD2vZjXJmVU9NgGbaSCGdGgbOFCdIIWIEQopmvHhLrx9/fDdxUiN4YJF3R+PS+8+n85M61KnwNqhmrXFpel44Cz60TN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwXkgcgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwXkgcgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE0BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743895793;
	bh=A5KPE4FR5ZDlTgrQpIj/PF2caMPlGxvSQutEjc6pBWA=;
	h=To:Subject:From:Date:From;
	b=VwXkgcgPtddPjBOdOXK/ovQ8AdKMgToMguiiL0/2jby97keRl5W+JhGwewhdQo281
	 uFbIVWwMl6Koj9pz0osrUljZdj+HWNte3JzDJaKLwg6PL8RciGRmsPu8334W+BzttO
	 PQoJOznDnraex5ZHGhlpSKD6iIeOiOqOVrFgBo+FEq08LqMmsg+5a3bgwtnuKAFNSU
	 9+78LtZh8TIO0XuxoH1/hY5rx0byCTsC5WsoZI1XMwF9ToD65YuVa1KwVZkNd9Bru9
	 Lvm5ncHSU9R6on6wqw0ngraiTb0yvFmM+kQdA5n+Nmh0fHt+1tcwoFwgjTWOtIUXVG
	 KsN20vYVF5jSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0EBC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389579361.17941.6155523294539709219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8193b5275733cc5f0e54e5acbb34504ab0c36e2c56e7c09d70cc639ca9c94a5c
Date: Sat, 05 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743895793
