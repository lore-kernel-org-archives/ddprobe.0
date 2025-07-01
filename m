Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB611C84C5
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751405394; cv=none; b=k01Lnf1Ah9t4zsB14bUh6TdW3FYWneibkS7y5iMbbwnnqqvpl2zL+A5p2WAKQS2UV8WrshQkI5Jnmu5hqwzKrYafyVa2lH7l+YZRrLI9Gea84mPA6xao7myWvn+b89qXVfwcIFNTDPh3ze0PopWe737g3+GCQL89hx5Z4GUrAyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751405394; c=relaxed/simple;
	bh=EXSrrreRyKOWKDzPlPCn+uGKfF1I7dgfrWvdqSS0tYo=;
	h=To:Subject:From:Message-Id:Date; b=Bx/6wzxQBgiTteWv1QPoJUyqXOmagl/HrH0ADSM4bzNkUFSMIZc942kFEiS06WEildLQ13eaqOd8hx3yZ8om/NLln+5HdpjwqbYvsSC+c3FlfRFChqosA9gr43sENNd70MYuTqF+BjLcdtgh4sUYrqIEMa2qhXfVNBxX0iC299c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhnYAfLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhnYAfLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66DBC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751405393;
	bh=EXSrrreRyKOWKDzPlPCn+uGKfF1I7dgfrWvdqSS0tYo=;
	h=To:Subject:From:Date:From;
	b=mhnYAfLwEn2ucpcLc3hL8U2aFXzVi5Caei6M9E4UJjiyzjSvGjU4o5NtyjrLcDU4b
	 vtJBZAPvXm1IxHbBX/9VxXxZRQV6tJ45qreCDEVudmghjW25ctSpwnYs3WLpD25vIY
	 pJ2xpyDu6x+EdgrXgtVAKqZ/vRx2AewWN/h0fAYy0UEq+dgSJrorWL+ksx7/sz6RGV
	 awZTo+jbEOLNsRD/9ad2xtgxt7AMLV4JsC6lMONB0AhXBsCXDDaT0erS6+EPNgD4cd
	 0AUOkflRHO8xuXBVyjKzSsyfqLidAT56FbzMFbdCO0WK6f5R/4/J3+Zc6XrT7ADJc3
	 x1jFEVghjkntw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F4C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140539357.17347.18179814469451015584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2fc7e98faa8b57546cdf72bff751c5a6873812d0e1af1e6bd9fdad14a241a7
Date: Tue, 01 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751405393
