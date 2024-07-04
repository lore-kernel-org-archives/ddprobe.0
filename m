Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A92216F859
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720084523; cv=none; b=Z3J6LCzy0vgIb2fsOA4iglnHQYosSHoHV85MHNwYtD9nXZA48ah/YKRrERa+GlkBgP42EgcNZaL8dcaSBQGwTLz/o2W683EWbYVXYg0j9O3C78CnyusJciDS8Gi7xmFn3PJQfFiUJKlMD7mY7Es3xi01Nv4KgbcJnazAm61UDPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720084523; c=relaxed/simple;
	bh=mzF2YrEMRE36l2EfCnv3AcUAPhwaSXodCt7Taa0R4Ps=;
	h=To:Subject:From:Message-Id:Date; b=GTfrb5av0BVCZinst+NxpVq2tE6l2lS13Wnf7ExeW00hzJq7NWb3Gyh57p6eVk+iPHQI2eCuuBPr+5VtvhLU5QnxnIVd70rRKiT1HVeIHQZsKKAQIAk1S9SBLYkswaXZfgwHeiSr1aVFsqoeI02VBA3zTTHuvUXQqjGasILLSI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNOExNZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNOExNZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF335C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720084522;
	bh=mzF2YrEMRE36l2EfCnv3AcUAPhwaSXodCt7Taa0R4Ps=;
	h=To:Subject:From:Date:From;
	b=VNOExNZaEn0iMdCxoCRbCf0uz03L/nzvAOsJUym3lVY6NYZNqZX3sKss2dDZR/f/U
	 IjCxMFqynfbHvCbBKHKcw5DuuY+LBlX/ICgRNt5PH0YdyDMV+j0abaIk6OXmPuYhO4
	 85eIwiSp60LhgGtWvrV95iKfl3D0fU3L591EeFeQiGdXY8Gmm/tPYU419mjzuVrXAF
	 fiJrYg8w2Xz1PhhMWBE6ddGkRhJh20WhMyx8E1EYHb717Izj21RL8UsInTLjUaKAwU
	 CLlrUp+pf2n1PkrB2J52VBe2J84h0U2hexU5WJa5wF5jSNPt3rWx8UjKbVCWsaV1qp
	 AgQeCkI5A2d5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7828C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008452280.2319.11540190160514126382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7037df3ea7fdf34b24fd0b1dad221464b2eeba3bd2f5c451c28f71f67287155e
Date: Thu, 04 Jul 2024 09:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720084522
