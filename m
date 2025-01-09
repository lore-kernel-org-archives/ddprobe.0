Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2948619922F
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736447154; cv=none; b=BYzuE8aEWBCiiIup7ZZ+wlrvZJ4WraTIGDVdco0C1EFxwjrGGCZtlqETlLisTdy/9dHJZMVCmDGl8ZiaXnIgwOn5gy6hycv7Mwp+MX8u+i+ShLwge/nh7pH9ZBhfr54Zz+qoT5FcMYVLRebOtoXOm85oEn2Fobfsc4pZ1++oO30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736447154; c=relaxed/simple;
	bh=yZkDd/lLEYBzR2ugsyMBi2EiJDQv8zkpxIt6He00bgI=;
	h=To:Subject:From:Message-Id:Date; b=hhlDHGA1QSH/JYY81sSh+lipo4KuUVt6Zm3bEPb0LnoNWsgjlTkOuAV4CIL7cY/o+Oi1oE2x9UhklKlRXIXoKujZ2wSaDohB2ag1W2roZp7/9TDCG1VnEAdBtEigIIaq0PIdmvWQuXfflX1jQcH9cUVckXvNdGn8HV7T27RgpAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdYcIPJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdYcIPJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF95DC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736447153;
	bh=yZkDd/lLEYBzR2ugsyMBi2EiJDQv8zkpxIt6He00bgI=;
	h=To:Subject:From:Date:From;
	b=WdYcIPJBX7m4dkPUZQ/bn3nxvQLnoDaKcB0DDpLXFtdmM1ne2l0PbOffPC3nOP6eT
	 rHAYBsJma1SwnUudvBbIFbqySSh+nLIswTiN9Y6o+62o8ypsM0WGdQD6MIDi1+6Vt5
	 2ltDMbNC/nwIkk0KBxMvoUw9JgeR2XIF6OtCIHqUFizEBg3log2SDBaKpv3ZhKTIfH
	 4XnQsP8cuc5zj3F+3zq84JoEOBQLynqZR3oUwpfiQZZKPmRusTfrUbE3ujklatjPzT
	 HlfuxIbd5xhbZxMuVMqbwGt3AVK3S2BgY0lW2SaGlvYu9grNEWN7/w47PsTI6lrmi7
	 AyVZgSweyPjjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8E3E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644715363.29552.12409597385139890784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a61f966416b97dc6ebb6444d376fa9ccb14aca1b6de1feccca16c37445d194
Date: Thu, 09 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736447153
