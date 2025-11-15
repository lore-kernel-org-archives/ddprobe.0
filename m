Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D9610FD
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763187594; cv=none; b=ehtC0iOMCsIf3mqghoRINCsu1/t4bxYc1yarbO0mAMyFfc0o+GYo+RDt19c0EO7W7ugvbc2pq25wV9Sh4wuX11utRXeLcILX3RBRWtYEJXecND7J3qiHQEx04n1Ix3zIxt2yV0Jo6KGs32CxouIYquEbqoKHLk3GLJmt8RLt60Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763187594; c=relaxed/simple;
	bh=ub7r+RcIJU5QikwjaVZ2n4FkCiMdtsNlSq6ZGq/o/RU=;
	h=To:Subject:From:Message-Id:Date; b=kt+4vJnYK8Ol1dEug2aZhwindT0IV5QFw72cT0gO/ez+O7gpNg+zcT4/N0bqhaIRcz729zwFehIpaiOtJbU3k1ZKJL4MO7y6N04ZULHk6G9oqjHtYIsS6Hqh2wb8EMgJXBY/YHxuxjtvBZIbd4cuaNzZSTdI7YVgbP7M9L485uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ig71B1Us; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ig71B1Us"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AD3C113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763187593;
	bh=ub7r+RcIJU5QikwjaVZ2n4FkCiMdtsNlSq6ZGq/o/RU=;
	h=To:Subject:From:Date:From;
	b=Ig71B1UsL1uoNazJ4DvkN9rXsFdK1R1Xw2vclyuhxhejgvLGs/wSHb2U8YW8/Z7SC
	 GwZ2rWhb3aqvmVC69kpsCyBycbdZ3RivTralCsRANV0DFaR6hXgtKOI84v7fQSyuwh
	 fKz/iU7WWjC08klIZ6EwsYYfsNO8qn1dZD7MY6qWPIdmaITpqtPy3oQ36i2LnMwu08
	 Bf5BC4VpKRpeAZJGGAsytdoxgseTyXET2x8UIlsqc1OUvlZeLGms6duHutPJ0Af8wv
	 R2nwLfjEEIqSVfAoohcfINsG3o6SrGLOVOodHVOEmAg2Vc2+MetLVTV3B0tZqeBGhC
	 D1ZbuQrF4b9FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B94CEACFC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318759358.13293.3202122795933634117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771960b47336043d68f2528f463dad5a5d8d93f7f865e1d9260a16b54dc70cab
Date: Sat, 15 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763187593
