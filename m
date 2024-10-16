Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6A618CC16
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729058754; cv=none; b=prBMkq9rUSNPVcTm91rMCm02kJrCUms/E3I9LoEA08U4CdzcylpvcujfjTU8C0oRHfNV+pcof+8m6zz5pNI1Y+vbK3hYjYDc0OHAb7x2Qn+Ja76nJCSbNpym4TJnAAJQbFKVpFkS0TvDK5T4e8WDY97mFHPG9BaIAm1DdMfZJ5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729058754; c=relaxed/simple;
	bh=3olON3pSrveyIpv8tmkDD2J+kgPeD1GH6NKtTVndWHA=;
	h=To:Subject:From:Message-Id:Date; b=IC6icEwCkD8uQ6TIhOhvPSuide7xk2d3Mk0Kzangww45szKmrahC5ZkddTLY3ogWPDlCmTpE/GCsCPAMK2ey17lX3TaVZEyxMvRcwbplHrJjV0jmPRH279UbTXdHG2wL5F2X2hpQwsXqz/v06H/+YMPO7Vw29LTJ8+dBCSJPjZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOfKKD4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOfKKD4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2A7C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729058753;
	bh=3olON3pSrveyIpv8tmkDD2J+kgPeD1GH6NKtTVndWHA=;
	h=To:Subject:From:Date:From;
	b=EOfKKD4gfnsAjr0m48x+VNLs5eg9SCNxx+f2bSCsZ9FPsZgKU+I8laHaw15vZarRN
	 5Pcvezt8jU2PBa21kqi5X/U6cVYkDkCMVFgIKfwQQnykZKJjlyliYwLbZVgzTSqvUI
	 vsK+7NlMMwvyA5DkO0f1v7n67azPtzLoEXV3RYf6MG9KD8SZhkxtwHwqcHSG7AkFDq
	 P3LOXAQEg9K4GIDOgkr3Zg90k8u4mKpmlaX6Qmo0XVsbsPwnS9LTrAlZC1u69KT8xI
	 h/La/aGUp53xixTQUau0aLoYyoynO6BPkKl4slqc7WTN8GU3ry4rGy4QwB8QPUdupr
	 iZURysyjT5v3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BEDD2069E
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172905875361.9547.4046699463725223281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e9c2f7ec0251cf7a68862ec30f76215ff8f63a9497856fedd7c3558f8b74e9
Date: Wed, 16 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729058753
