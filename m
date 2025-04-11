Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6FC20EB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744376994; cv=none; b=Na4gOtYMUlH/N8cDBAMGPxiUG88KiI79M37OyT7z15sxVJ/BAZKM4vTfUe/qsPLxfoI28480uSioo+fAjNxqLUea4YN8dXI+BGGUBSQLJlEqvc/HGGUmi1U1nzIYuR3YEgVQ83BCCZhbF1InBtsccUcUb2oSNs/1+E2J+YeALG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744376994; c=relaxed/simple;
	bh=ikGS1T+g0cP1p6WbW3ZA+y0DVUH2fFWGo9OfU4gC4cE=;
	h=To:Subject:From:Message-Id:Date; b=EA2eMpbP0CTbsIm5G/EA/7NoLyV4Kl8ZGC+dj2JEstGahcWh+TFmGSH/xHJq2M8wk7BXkzlCJytERbrnOXe4r3YHsmtcaQy5beIvcg/9dUAsjCYynEfffeWFvK8fBFPriJr2ydWcDwtdVpJK6shVKtQQfvtTx9LHacgUcHy6Ylg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyEZWO1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyEZWO1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7866C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744376993;
	bh=ikGS1T+g0cP1p6WbW3ZA+y0DVUH2fFWGo9OfU4gC4cE=;
	h=To:Subject:From:Date:From;
	b=WyEZWO1vOJfyi+SkC3um6pixLavrHkmnf6uiwTb6gVpVtmXpyazp+lIJVGVlTOSw7
	 vXSFGs9XuYVHuKChKEGDaPoW/VjvaNrIDi2NuI8CWVJZuR0Z/y8FKE4xY/Q6+/FH26
	 VVndfaKhPnIPKu+n+L/p4sSTeWtJxOijv6NmmBt75Y4LgSR607C1l7k1DSgyijfIc9
	 ApEnUmIsAr0tee7B8H3iwtIOKSh1WGhZKsMZt10br90WEyaalQ5xB3CIbEoq7v2TMZ
	 WB2LgUqlK639h7S1a9wh7rIls4A5yiGkbdb3IqrFk6RlVfG1Atwv7JWjEXU8TpnxqO
	 FKP04vkVRenVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A898C369A8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437699361.11440.5373006718176510013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069ecc7e2a9713c7aad505123e57f09a8d8967f2f3dd5bf144b6cef2174443b9
Date: Fri, 11 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744376993
