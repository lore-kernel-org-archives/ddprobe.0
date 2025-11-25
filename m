Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF0B22DF99
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764082974; cv=none; b=NEkZ9A/MGiJoDCAT5dnv5ViL2tXJq+B7YBpbIXRvyqHyVn41aaEHapva9P/ZyuWMHtpynBOXBkSN6FkaOxiHZe3bXyTvc1iY45uAjJaaq6ES5xt3V5vNMMeyU2Y+qXtahUwqcwDcu4zG0E6b8lPVXAXXB9HJPXNFq/yJC4RvAmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764082974; c=relaxed/simple;
	bh=BaCkbtDeX/ETfQ+fDmVeo+X5aeo53/kPkSNyEbuVJBk=;
	h=To:Subject:From:Message-Id:Date; b=cJj8uUDZuTqFHPXQqEk6la2AEj/Z1XNgm7T4PiRQUwTDbFQlKRSLP0XFjEfHdZ4+LxgFJho9NOad8lbT5L7uAg24wJYKF7Kl9BQ46PDJL7GEPu5HXH38gqHDEeN/7kzDpHPZJILgnH5C0Lptk+dO3ow9zgD0i020nj3aMG74ZLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=incPf5dc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="incPf5dc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E9BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764082973;
	bh=BaCkbtDeX/ETfQ+fDmVeo+X5aeo53/kPkSNyEbuVJBk=;
	h=To:Subject:From:Date:From;
	b=incPf5dcyWiZ7PrhiF1QfaQkKX4/Ped5xBMlzvbq7hCNGaGEkBQPSosDM0bNmCVx6
	 PmjaFnUHUxGRPncT8dTSdmXLQMgaXLMhihjc9ZLsYJzfxPE4JvHwMNYA5wnC/8kYVN
	 dli273LQ6/PksXsD3hP8KerGYBSCc5nft/V2o7oWGPLvk3yZRVBf/GFk1z5/okaJDI
	 dOJKo1pSksO52ftQ+DkobaL+bJ0MYx1lcQsV1IWHWtD/MEEJQOwPG0lbDohJxe+Xll
	 78q8noK1AbzegnJo5Izu8+nVYcM/fDeuIq0ATNQh2mRHrudBQbzTkQyDGb29isCAf/
	 s4NYn4JcfhzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C91DD0E6EC
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408297362.13417.16573174150008802497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478ad974943af4cae8438cb7793eb47abd6574751a386664c5d84f881e5ff6f4
Date: Tue, 25 Nov 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764082973
