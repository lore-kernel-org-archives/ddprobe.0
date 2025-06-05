Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECF01E2614
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749114594; cv=none; b=Sex0UCKJe2BeDyYIa1Al6LlHUw3qh/PoosLaORa6uO2/Sk4vqhL5zj9Bc5b2rVKiOXbuOxfFg0tDEPlJboXhDvwLnyJbQ2EEfSZf9Grbzhw+wCzpq769dxWAbbbbpGW3J8yT+moCK6si+ws3GVsiaBy0t63/KiN7FhcsYmr4PUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749114594; c=relaxed/simple;
	bh=QerCeDNoIyzBxb5OpgDHgfJpNOaZmFlykfD0n0311P0=;
	h=To:Subject:From:Message-Id:Date; b=FxUrkxMHGGjFNIHeQMby9Hk3VG69InbynL1zZRzeTclk37VH6DZr7ebwRdmCx//SAgG10imh8Hm+vTVA5sZpgIu/q7F5ejvGa4OQ7KiyHbMBIVVFOWMRlC19vKJqWJDdYkvkA1QV0uULlS65aB9zxONtF6IPOyk90Ghvj+XSOZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRV4nh6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRV4nh6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2490C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749114593;
	bh=QerCeDNoIyzBxb5OpgDHgfJpNOaZmFlykfD0n0311P0=;
	h=To:Subject:From:Date:From;
	b=qRV4nh6lq42KAeEoHobYwSDCu/uc2mzVnmChiJeTvZOWuUBkoeWPhAzxdnKNC7Pw/
	 RYmIOQFs932b3jdg6XAtDGaLakFd6e3OFRgBku9lvag87J7Y/tNZb6Z4QRQQ4CY2Eu
	 9ybBx2qBkcD9GNAeAF5ZW9PWfXx43k93Wa2Y2IjhSENjFDiLnjmKoo9NieamHWukAH
	 dalGBectF/M44g3qZERr/Zzgw8HnJ9yu7js0J/W1z6ORRTDykyN8jkJvMv0/BTF+2a
	 a6WYjm/+DGN66lWbCnGOvhsB0zEn5GFJw5pMEuXyusof6fRkTUNBUu2VEdu9ReS8wI
	 WfcJJUwfxjZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91026C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911459358.8358.8906488392716248917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbed18abd71661e93e933004d19d865c75a082b196c5cbd23e9d45ea1df5e3b
Date: Thu, 05 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749114593
