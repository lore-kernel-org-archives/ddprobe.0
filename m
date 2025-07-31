Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B30F376
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753985994; cv=none; b=IxCfI8lbQUVjgkhBTvVImjW6Q2/K2b37wYJC2BqAucnyUFVjXoiGHQZKt0+pJ/X666+09qWr8kkVZYOAvz+t8PWFK8X2DQhJ8ggycdLiglROXKTQibft1NrbJ1su7GMVCbpi94KFrsapdVjJhtax/LSsanWaxQwFpNLpfkRwOis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753985994; c=relaxed/simple;
	bh=hC0gEACvMi9d+SC5wVegfaZ3gkKidhhGIRLit33Q+8o=;
	h=To:Subject:From:Message-Id:Date; b=bqmXe5dp/szkQ4/IGoGFAlAdTgYFRmsB4pWm+Myb+bIiIfRuJ/7gPyjUBeopae+3Kel5pK9+iJgNoVVCQ3Qtvm8OI7TrsDrzPiRhzz2iLBK4ZKGdZvM4YmMtRng4JQWDTziU7W3C8ErrdtoFk2bn58s2hTGH7NHTAbgS2oSpwaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SB20glT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SB20glT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4207C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753985993;
	bh=hC0gEACvMi9d+SC5wVegfaZ3gkKidhhGIRLit33Q+8o=;
	h=To:Subject:From:Date:From;
	b=SB20glT3C49q4JoPsCE+1CaGgqwCxxKMgJAXYjkncuvDPYMM9Un3Xhdh0rudQLJCG
	 p2qWQ3sUwqEmZq0zSQaaI90e1RABgBXUUDxhVTvq3dKvOAmiKtY5GaUUE14/rXmAVL
	 xBFTRn3QwFk1TtRmPvPLE+nCOdPS2/YIlwKVmpjDThuUIFxCZ2jlpazLfFRytwMmk0
	 u9C3aksKK8hH2T2YYU34xUGphOuO3STNUBJ1+4P05FW5WQsofczdvBc3ZRYyxVi6+E
	 gkY0lIXplkjk/BDPciqBhj1VXnT5uCpTdhZaFVBHMd2Yf69JwSoDhmrw0Qt6m5w6W7
	 9jthWWZ1aaaQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91184C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398599358.11314.13727544098220620579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb631fca2fb26a2c4e2c2d46f82827462074080c8ab1ac8b9ee8141f15522b20
Date: Thu, 31 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753985993
