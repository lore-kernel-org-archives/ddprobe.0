Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251FB3009F8
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762870794; cv=none; b=V8fwkVveWJuMOITS3xVYFGFFtnkVc0TdfxUeloHkJEBPMYfp0eccBsIv8dSihAu8iTLZnck0Tk66gjU9dRF4BHYap6bMrvMJwSTDM64Y7uCaiwuFqLp2AOJzIYeax15medhdeXAR/xOYDZ+UkMjBQI66HevAWo+dOvsBL1rh7Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762870794; c=relaxed/simple;
	bh=4YHzc1V6ZqRqXoi2z5MT86tlFZD0q15OyYi86JS7q+o=;
	h=To:Subject:From:Message-Id:Date; b=XQd83qyzIvHwdIPlDNx0SI/4CEXl/mom1HikhdGHloAS+73RVsGVYBUXWOQatsxs3Flbmn0L63S8Ze74R5E+xqM19KQ7wHoVfBbSVoMmLyMi/YpV7fl/Yg1Fz1a9ydRBaaZnwWRQDnDNXUhX+7W5Ppoq1O9hqUKLjzSX3GrrbxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuTSpteX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuTSpteX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9F1C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762870793;
	bh=4YHzc1V6ZqRqXoi2z5MT86tlFZD0q15OyYi86JS7q+o=;
	h=To:Subject:From:Date:From;
	b=OuTSpteXq51oSOyvFFbttXxkqQbExrogSw8s+dXZ3c5SfuEtnA5rJHN+4Mx07zfdn
	 DkG1H2g6uCA2/R3/lxyr1sTVnLAT6PVWksmcHnPcP+SiSkv6gCLKTGvAaGQ203uzsF
	 ZjQLfnreIY/WPqEBaJ00KE9+TtW56wWEy80KHcO2OEXwc0doJTMFJUG9kHo7MlO7SE
	 7b3rxhqOHbo0xRe63wu/SiCQvym+mN94fp4udPq5yq+k818ll47Az1GsWE157OXwp/
	 oFKT7cbCFj0ZBFGsVfB090np8rBJsbIAfepYvz9NPyG+xCZvkiAOEPfES/NUj9Bri5
	 XOFOhfvNnTHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B6CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287079357.17708.5978930194550169396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1ffe275c1d2a174bfae0d509c7b3f53b1f200e6bf5d4b9a3a89f12ef41ad58
Date: Tue, 11 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762870793
