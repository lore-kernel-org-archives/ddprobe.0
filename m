Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B3B37FF7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792200634; cv=none; b=W7AZIEGohAi5zvQfWl/1dgN++2QJmPYPHNs/y44tOf6eAyawlNX6kl5QRMZPEsBBNAR8LInjmAsAmWKNrSpDXcd7iRw3a/vxzoLuR9qQal1t6/jvgKIQ5w2d+hCu7PcUKmzPKGzARG7OU9geDyBNLi3BZIi/8Bg8h+c3WuqAAa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792200634; c=relaxed/simple;
	bh=HNOEp4AMedPRHJ9dSyw47+ZXbsn4t+Mx3CBClD/VhwQ=;
	h=To:Subject:From:Message-Id:Date; b=r/VfIZEI0MHEviUcqwLJX2NJHkifGQ9hjAmYGxi4ouU5m3Jx2jNs9aB1l97lg9IpOEjag9DWXd3g5sx9aDjmRlrVzg9hly9MAeg9S40Whfw56EjcDi+GOD052woZ3/7xVJtyA9QbESSWyjmT29FgwhiQ8dhxcyQ3/1tWDphI7bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fjk6isHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fjk6isHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC63AC2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792200633;
	bh=HNOEp4AMedPRHJ9dSyw47+ZXbsn4t+Mx3CBClD/VhwQ=;
	h=To:Subject:From:Date:From;
	b=Fjk6isHvoe1mJcSaUkkwdbJKOGRFwe6T5x4EDyNECAKUHydb3zEsfADttflS918XE
	 DKozgHxFjJmDirAiLgnkXBmw1a+rFbQQSrr3Q7dl1NhbTmGvwLUrMh01awjQU1Ik2s
	 Rd7BeitMfOKcsu2z/Z6LHiNk3PXQ4DFnZZ/PGZK4xqTa/7minuogp3X3jP1cHXNMFI
	 leBGyvRJ63XKjdgEF7YvO2YEDJarEkEgoClwMBDp23+ZtfpaTFO6lI/ky20J3EYrkM
	 bmraIS7/DqygWL5U8kE9uCmzyf2PjzfgjWouGsPQY00XL/GhD4RK4GpdixcaHnw79b
	 MhMB+lkNBfP7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF26CCCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220063369.23603.13433059378202363686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ee73f5c4731bddadd1dae0d691d4a64dd287f3085eac2214a4be881bc8a696
Date: Sat, 17 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792200633
