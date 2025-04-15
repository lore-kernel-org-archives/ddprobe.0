Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3296C221DA7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744751994; cv=none; b=WBw5Z6eHlw+lw9MXEL52ed5fY2bRxaYFW7pCdLoGkAZ04WV5FZybVqGBJ2xVnwgN4F4fZnFjpBzo9HaaKSmkF6f7WtYMVAQmiyMvnyqKISsWiIUvmCMcrocbnukbebehsoc5wVMn2uc0l1tc76C4nzLQK1Y67RYDuWNEGqYY/gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744751994; c=relaxed/simple;
	bh=k6Ae7sYmXCEFnGzJkUs2aJU5XTT43hpwWlHpM7FBSiw=;
	h=To:Subject:From:Message-Id:Date; b=aa63wlW530nCHN1YF6Wo9nijsMEcNit64Ye5TSH3V65U0W2RpSHup5dTIg/2D6OpMzTyg+rcEHZU2kmB1n2N80dBCdNXHZ8FBiq6AcTtp/Egq5dWzX21zzWbYCn6u/JINtjbzNcYzYoVPkj5WefEUa7E7IfozryHgryulB3rmEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njDLkur6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njDLkur6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95DDC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744751993;
	bh=k6Ae7sYmXCEFnGzJkUs2aJU5XTT43hpwWlHpM7FBSiw=;
	h=To:Subject:From:Date:From;
	b=njDLkur6DjTlhR7QqIXuQ+MLtEYWIy6XhLNqLlbg5OmGN7zamrCH3KyhTntBpQT4t
	 QwF/+7M4Axbsfde4befT4nAb5krLXnd9OkcaRKdnMh9Oh7MU1zRwaCqFlUQvOj/PrX
	 qUQLxAqeNr02HYp/elq6b9JcCZsjfT8d9QipSrG5c0eDNyTTAK745XAFTDk3OVIuvC
	 6hNm4ITbQlJARQiohPHr0wUyMyhNoz9dGErJnIu//yCpyPIRDutvYuXkRdSE3ERo0i
	 U807JLDMPF8PL4i6stELNxu9P2j8cr26Yq69DZlHyCTcgmOB63Iji141mK+cm+kMTE
	 tcCVsVhyAkS9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A75C369B8
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475199359.31823.2537068198100941014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d176627ebff5980e9419d3ebc9d9b5ad96d8c31d55db987f03c9e92d763701
Date: Tue, 15 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744751993
