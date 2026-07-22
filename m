Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA3830D3E7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784695114; cv=none; b=AjivRnrMYUzoMXVc/+M4b1bBbiUMZgBE/2K6QRqrFiMboNO9umlxhDXy62ycG72ubiCRhPGkH6m16ji5k6Fz2tpSH0UTIURNDPHobCIEqE7F7tLYmjQSO5T8ykVhAyTC4jlwE4X4b4SUUJinu1mCeHaGLRk7x1CTD5N2DIRyGTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784695114; c=relaxed/simple;
	bh=Lto5iG4CYKhXo3R96Gz8fRecYOTtECsDKlNaeiFz6eI=;
	h=To:Subject:From:Message-Id:Date; b=lekLmK/VW8IqIjz8oWsT1ivlWUlMb3JqeT7zK7NZSEvY8sOj5kmR9lqAfL01rzC3pkjixJSGo0wt4WGNhYXqUhWVeCpNQCpOn7MavD1dUKbxohsf5ZXA7SZHt8IIJBHNJnt5b9UrWIy9sssUytTbQh+WiazP3yLRgT2FjMeeYNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdp+rJtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdp+rJtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 402BBC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784695114;
	bh=Lto5iG4CYKhXo3R96Gz8fRecYOTtECsDKlNaeiFz6eI=;
	h=To:Subject:From:Date:From;
	b=Gdp+rJtY9CjTsm3zGMrkJFhyToKLFMCBGmhV9ySAs6Kmuneo3DgU/X+romc/HZmQQ
	 PUqNoqI9GxZRbQhl5DtF/tF9uIbFIyAdKeti17NM6+KRBjIRRyoSHAkfX8/YLL7Gtx
	 krxCJd3mjLivQ1hwLcFKTl1a5y44o/SaHZ3GexbcUD+fJ76ZcLl3pejbRRJmYlEXKG
	 0Hbq9mj5nEIbAY7D4gPeIqnIMZ4djElREGMtkjoBOYBq6x1LiPq9CIGiU+b7tHfTsq
	 GqMC4PN0ESL4suESq4nJ+jFgSrzYNPyxb/vUXx4lpjUqcXRgK/MWq/WaZAsEtE/D3f
	 19Q9mEwnBf78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD933C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469511384.31038.8425374914441234204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8accf1c5c5d1aa177348e6564fc6423ee22fc103c3c7300faa1cfb5a5aa4c80
Date: Wed, 22 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784695113
