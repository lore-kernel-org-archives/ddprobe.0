Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460A31E47B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744378194; cv=none; b=t6fUY1DApqNHF7Z6GNR91nB3Gn0+41zDuHZYWIxRHa9XBL+2bTnxeCSKoqQqHo4jveik+roWYDUdX6DosqusIwgP4lxCSbn298TMKgjoXm2x31kgKGXVj+abD7Uke6ZciiipgwfauC/+hjtpz14MA/10YKpv6PPh3jJtTnX6JX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744378194; c=relaxed/simple;
	bh=NKsygm5seuE1J7oen1wpd7ERQodlMlJWkDOVtLdNyJU=;
	h=To:Subject:From:Message-Id:Date; b=DPigmNjnuyzCZsJ+rOjfRypbt6CHUQNVyi/yrnjhw7Q6oY9gdE/U2hHmSLLXeHzB9WA5Nh4qJ0xE65dJVFCPOQFMZIV0iEjlOT3vQ8iDb7flx9Vj5M6K4uAFVXmkJMhFnyiSAypMnZQZ2bvevrEs0jj1Oo0Vro1UQpVYcELkOYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3Xqy4N2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3Xqy4N2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA579C4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744378193;
	bh=NKsygm5seuE1J7oen1wpd7ERQodlMlJWkDOVtLdNyJU=;
	h=To:Subject:From:Date:From;
	b=E3Xqy4N2oMe7fSsb7rxxzQRgZQJIUfdu5DFuF/2LudtIAHppfUs0lDXRXf/7LxmdA
	 XjSp1yj1shq5pUVU7vmp9SuTub7NgsU1jB3D7whHxA4HhZyUHnMAsqGTUFD7pE2hV2
	 PjKRKma5CXbMnFP55Bl5kQ2nOmhH0pRm8JRnwqt7z98px1nNkRai30b21CuPQ1YMhf
	 fvHIjloqWxri51T4Kusubq4giy0rHvsbN3h06KRsxGgkrH8ec6FjkIssdIbNRq3vE2
	 BoVpz+WVX6m5y030sXnSy6aYE5HbPL+zHhUHq6Hqd/76h78L1VBlPRfPYsYPk0UklJ
	 INqq8q8/uMchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17DCC369AE
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437819370.18246.13123297208521770861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4a7fdd338a0c626348a93dab1f446d65c830494524efe6983268d01d3405af
Date: Fri, 11 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744378193
