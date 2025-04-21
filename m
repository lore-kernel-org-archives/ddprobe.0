Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3719425FA06
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745230194; cv=none; b=DK1P9z8D/WGctFZc8ZvSG5w2tXTnQ6fM2Tt60tNqwqaU8sRj+qnn04kRyutAwX99RXAXJ0/bFYnOFsn10NJauVuaMS2vK3iCWnBr1T/hOg+MPszUu2oT6a1HRnCQLjzo8axAPMzNb6bVs1U3Jqt6CT+wadtWBtlf+xfjJUm8LMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745230194; c=relaxed/simple;
	bh=su7223Xzy0wMYM1RbbYRHUvLxoa0fqAi2peKV6Z6X3c=;
	h=To:Subject:From:Message-Id:Date; b=RtS1TPZdxTlDPliJgaxtE0vaGwL95e4LHJIWH3g93qz7jhiiupb2rASejgKxkwv8moRKLgGvUtaziKUxBYEIY3W8Yf6UTwt7YZjk/NpnAS9yci8XOXpZXuGxLVncM9ajjfGSeSuwvZbQm7XD/L4adVFgJBrsWeJk1PaWNzPRoV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GluklfVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GluklfVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF25C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745230193;
	bh=su7223Xzy0wMYM1RbbYRHUvLxoa0fqAi2peKV6Z6X3c=;
	h=To:Subject:From:Date:From;
	b=GluklfVClSwqE6mqvdEMELElJnhrdHa5NkLaQDnvjzyAkXUNtCsO+fnvJa8pgCQXm
	 mxQFNMbQA+HqcWlNwa67X3TFSqOkvWPgT78j0wsdOlKK7nItBpxFuglNKP54Jkxoya
	 OIpiRkOjRnOj57UCANBKmuMKOivmzGOsqSDqvPgMGuEdjktvUo5aDvJwWVFr+7EuFZ
	 sfkHipXqeW/3C5fKIFEsqim0DP7SOek21JM+f5/ecgCEdgzFcKuEXsx7Gd7xjWVYkv
	 +bT/uiNHrnE9hQEufjqrLikQbrvWpebEvlFXssB0xLbhSv5Aw8k0nsP/R87Gt+t8l7
	 pwYoPJrDWResA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B25C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523019360.26991.15742310331915098216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519d5002ed493d010334dcbd9e1d998af3b1ef43746a46de8923dcc56c0e19f6
Date: Mon, 21 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745230193
