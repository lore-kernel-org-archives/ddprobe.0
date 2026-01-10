Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D564019D071
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768008233; cv=none; b=hO7OB7JVw6vrL7VvHcPDhWHFIjl1+1CEAHDSzJOMY7baXvymUC9WjjTBpb92X2WbyWJQ7Gn9KAGG7/sNG4LL8WOnrZk2HPZQHhlMFCGyu+5y7xp4z0VgW8IYVrprPiAEduYYADoUVc7YpxDIvTjad2D9+eG7r5xcICjFuLnPIv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768008233; c=relaxed/simple;
	bh=Y/uOzK3pWJtxDr5ZDVLizjFyHJv+waZLw63ncC4m+hA=;
	h=To:Subject:From:Message-Id:Date; b=t7mChGCp5omMTAfhw9LHy+LObYxJA/mChG/SOZpwCnKRpvbhQQ0XkUoB3QYEbzLEFUbbQJwbATsJnCxVPv2j1d09w1KIOSBiIwvcoRCZgjlObXKI+c4OfdnP9+e5bItAwmueL+QXVSqU9DRdoXHa0YePihoz1ax86GExeJf5H1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CY7fPHKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CY7fPHKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7026C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768008233;
	bh=Y/uOzK3pWJtxDr5ZDVLizjFyHJv+waZLw63ncC4m+hA=;
	h=To:Subject:From:Date:From;
	b=CY7fPHKZN5YgAH7zNqbNJp5SZBuwc1DOALNBU3PgueM98cX7SOCoaSQbfr67LY10l
	 dUWceYK0i97F6pdCS6Wwnxsh4gKCBPtV8jKnaikXAOyZDlo+rEnVgbj1YpQGOMGcSf
	 MX5bvD6aXn/8nCftaOeSXBFnO5PjzzM1WfkW0wcwYkokH4rp07iXpuo1RIDHPJtPJm
	 Rf0c5aGpiDp/UnPqv7Tj3832+CjhFP2Nun1nPRh0jvsj/3gHHRNphEqU8F3WSWXP+W
	 SB7AlNFOh8+QRG4v1Swv88G6akEr+STR2YImHOqBeAH6lsxSPHzsXvxDRo/vVdpyJy
	 pffCC47xitWkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92448D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800823357.17838.15488650149075000967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c306d1aac40084b61be5e8fc1a2d2fee0593cc4efe76a352c220267dcfb45e
Date: Sat, 10 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768008233
