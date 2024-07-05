Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8269617BAF
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720146923; cv=none; b=ALdDq//Hx44XBdV6dom9JoPRhkRxSxJGmwVmkO2Vmckx4SgzziOT3fYm2Ce1Mtg7TA9iRcwbTumsI5lFe+cR++wR8aBnWDI1hTH+OrXLbTKL6FDK+1HFcn/kMsjl0mjH5UaEuHH3tkEapgikjrQ5ZaQDOLxUkyHBv4VmXG7l6Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720146923; c=relaxed/simple;
	bh=UkwcBdG3QQzx4V91kM1s98LHkTiJK4sEIU5460OxmcQ=;
	h=To:Subject:From:Message-Id:Date; b=YBY4/OCEESq0xkwN0AIZEXWtHvF/y70gG3LpOoWGQpWnKw5Mg3/V2Xu49GPtB4zs506a1Da1Lrwy6oBvTMLGc6MrqaI0sT17RxxD/zxAe1ZMOh9F/fsKnJhRKly4fbW07lXDbNH729WTbvCiVfvR944gs79WYvOwl8aEaPQAajM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvRWObLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvRWObLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A1FC3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720146922;
	bh=UkwcBdG3QQzx4V91kM1s98LHkTiJK4sEIU5460OxmcQ=;
	h=To:Subject:From:Date:From;
	b=GvRWObLJ6ER+AWFeYNWxvC5JU2rggcBT1ItUbwhhWJ+Hth2kc6TtTMzuULxdEnIHh
	 oDa527/KoFXd+C0j8MlV12lRGjLfcSmNCthF82tDrFrpnzPPHLWeEJFhplN2cCRUX6
	 KoPZknAD57zauMZuWJn5z4CbfeGLBdFCyUsg0UpEs1dx1qpWKZyfyvTfqwJi1XJQKG
	 gbHeCsykWB40AmP1LA8wMr1K0ztq8m8J7wLywTAY28qQ8ejSYIJuqHN2t0HB02iDxS
	 3hOv9YVQESOK55ZRqZFLc+HfCjLAcP69D6SslTC9xBnSoy6DeGZOBFNLLRAZg9tFoU
	 2lsHO7MWzqzSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3E8C30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014692276.22293.15962850268009214936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e66e763908fd9422bb75bfe0afb002e69fcfdf53b8ac333b637f8de076e5df
Date: Fri, 05 Jul 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720146922
