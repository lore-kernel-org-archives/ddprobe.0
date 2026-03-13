Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8042C9D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773378894; cv=none; b=Zr8BvtlclTi0K66abQi2bti4dBIM316DIKWHQc7c0GNRCnf6bGzld+lNfPRlO0I1ZNduF6YIpAaHWSwFk5MS3AYugjfruRpd1ydHzhsGb2YrM7bLRJo8irgEyyFcHU8Sre2NW8KdhhU866UH9m/8+1KSaLfK2/ky2S95Uh0/dNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773378894; c=relaxed/simple;
	bh=DQvCgeLzU6x50n0NFICwQOzDS9TRS/3CC000KGTV7o0=;
	h=To:Subject:From:Message-Id:Date; b=b4BGUkGbO/iWpPhG/aoNA3SbdNAlivGluCjzBY8//WHTEieWrAZ0kxwW8pca2FKNiZlwtWMRJezrZLzhM3X69Mj6yxsa/AHfXmlH9UbJdPOO0kG9vh85Xnsm7VphvkyxE2fELFaPtHSGWHM/YyESc0CuYL7wc5sVta52PHqkPQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTchoRTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTchoRTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FAEC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773378893;
	bh=DQvCgeLzU6x50n0NFICwQOzDS9TRS/3CC000KGTV7o0=;
	h=To:Subject:From:Date:From;
	b=fTchoRTeIBG449WOOs44dT3gKoTrXk9Bcx7KLnHbbfjyIgyxRiLCxjhFbXx0myYpF
	 En35LR6Z1Yi+v08eR9OCTUCIQd2iU5P8VuGYee5Ugn6ru92LBTsoHusQeq/I8faHU6
	 u1rQWNZK1EM0hqYdp9MGfJTFzHT0+EBSgyjnIkpFHoVcLYQFEfGq0EF720xl+hjcOr
	 ZupVIihfj0Dr0RlhI6RS5dJSsSFPrlYStT0HkmftLr47rNmI62cfIjiAVKw08yQJuY
	 /pFSmjpzZAYiWqX+5zj+gVhtoxbk3odHuoIym7T+epkz1LqM2Ll/NyIXBf/gQwMpvm
	 +XVNmh+7pexBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D64106FD7F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337889362.23127.12192409116821945363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a31137d26ffe0a5d3c0131bcefa6b4a2c7e65c8b0f9e63f656f39a5d30cd54
Date: Fri, 13 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773378893
