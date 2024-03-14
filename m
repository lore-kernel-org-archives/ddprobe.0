Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FC3A4683
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710381496; cv=none; b=EPrcVM6/Y7/dO0yA6+VsS3HMVBEpYqWrHafU4tKjuSYwTjBLHzHCfrP7jq7KM0BCt01rjjMMSRfYpF1xh5EfZDFcZitFm2mYFk3khIYDMOqE0hbpYr+Rwk7PYYZlBfZID2LuDYT23nE1+E6FVEvLq7zgubUvKXKyvE+w79epNY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710381496; c=relaxed/simple;
	bh=XCLa9wuqpa8F4AkFZns+PafgCXDFGP5rqKqBJI5EspM=;
	h=To:Subject:From:Message-Id:Date; b=MEgtkbAOZwMEC1N7gQfEnVAtccj09MIDQY/ThZSA3lJ47QyfpTwNQ1JbnFEQsLexg/ozWgLDB+ggtcvE+4sT3+QpQ45AcIK7X0aFbOXORhtZNv+Fx11OoZZ+xgAmvL9mLQc81VdMuPaJm8CHClIcHIZP5gvnCz1hwuU6xvsGaW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEQH+0qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEQH+0qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C44C43390
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710381496;
	bh=XCLa9wuqpa8F4AkFZns+PafgCXDFGP5rqKqBJI5EspM=;
	h=To:Subject:From:Date:From;
	b=PEQH+0qkH0VlTn8Ac6OjCLHcKATcwo3qUO+2xsqCBxUyVo9MgA6psTFLbzj+8jtF2
	 fIiFiYh0XQODMeMgAh1ZYkyW7qkkZwc77ErKraRo7kjBHsK1ZGaIZoGfDgjrBYhGEI
	 UlKM5Rd2Cn08L5s5JUVU9r6SW9oraPdfYAqqHOy0HnAU0n3O6Fw3Ck4/W3yol2vh/k
	 bWxLj1bpJe62BmKLl1u/pmGw0lx6U1rsEwELu9s0Nf24zp2C5opNYOgqG/Bn0feD3w
	 JEP66JBGz6ynj8m/40USLzeNp0+sv5K26VZj4dAso1gcI0JOCW7/X9P8MQrrAyxqqR
	 pQzTGoZdKH/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6119EC54E58
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171038149639.18873.11075707408532423200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c069207c3099d4501fab7349f8f4d80e70b67c3627da7120647a83c0b8d4d5
Date: Thu, 14 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710381496
