Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC86EB644
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745893793; cv=none; b=tiXbuWTMxP0DszcX/EtXFjDq+sfDGlBJHyd9m8kHXfbLnNVsu3OtJs3Hs+Eq9lenwXT9xVE820v79luy2/zF1Jzk5UzGiDg2lnkGgqjaIG5rxytbEnnkANCkIykca+61ETZwVw/Ao2ft0PaG3sYgUf+o4EedJYC4VF13LD5sz5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745893793; c=relaxed/simple;
	bh=veH0UVK/az4PokmcNmnWCfOZZ1DnPzxIpWqjXaDq+rg=;
	h=To:Subject:From:Message-Id:Date; b=j+xvgtHIk0Tu/Zwp+T2iTY2CEQ3OTcTNdPS1z5rHlEANwYCofTrMirSidr9MTp+YYW3HYMgy17BHG8SWGAcNAkil5zbiVMm7yBragImwloICS1qLQDrXV2grrjJHExMP9rbRzXjySnh3jI2Tv2oVVtGHsO7A8AoalZ+nMLoX9tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzW2GAag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzW2GAag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CD6C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745893793;
	bh=veH0UVK/az4PokmcNmnWCfOZZ1DnPzxIpWqjXaDq+rg=;
	h=To:Subject:From:Date:From;
	b=GzW2GAag97cTuOqKwlsU7vk5IdW+2t0h8IkASwLKlJDwoFEky6jMKRByBxVK8FSl/
	 RAtCJo9mLyuGmmZC3pHkXi7c4hEGI3PVbRHO2LHx0nvd06rZLqIL6Wiow/ECIacHAn
	 I5QqKzam0UcKkuDSqSvjpm/KHIcgznkJqtCgiBjXw8f5s04jhxUK94F6kJ4rOPl1VH
	 nRu3dr9aqpenHB+91d01r8zmbyX6gWnB9LWQTqj+0i829+qokCTJU1+l1gMlqxADcF
	 B+ogkc9xtvHNqURiyzv9Mg96OyURgI4+yg7H1nJ9/VIphRpD6joqJWKtnFl2jZGHII
	 x8AcdteCtri1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC8C369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589379358.30471.7602859181729809998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f7136869ea363f9ef0bfe46de4d8d2bf1e2c4beda6f2d0d570d5c9ec41686e
Date: Tue, 29 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745893793
