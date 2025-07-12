Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF1C2153CB
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752354595; cv=none; b=f3EfsoBsILXxnvPDiEUjC+IT3cc43xhvxQ+ocuZLNENQIqy9Yq27xkGi739Wp278NCqoDT6wMyDPyHabHxjvooEhmUaH6rFdK33OcY/4MUlSkHqPoKpSp3O/aaDsuTNVtEbj4nESACXMhMuDcRaiV6hK6durrSQP8O6JYFS12NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752354595; c=relaxed/simple;
	bh=hRW4u0P8y3p5hMqCt9USaNm46P1MLCbeLEzg9td+jdA=;
	h=To:Subject:From:Message-Id:Date; b=sUm2OLMxJbiND3ppv3mCyX8BDVoMxsKLFRdJqvfXTnyLkY/cD+E9zH8yu8LEtkBoZdt9A6XFSYp/1tnDWt4DI6xxuVhMDiZIdE1SU/aFUE7Pi3y48A/ia5G41dwovigeCMjO5dXkIlb8Ptk8EsGJBS0Q+yPaUI4gMdH8JynrcJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAEeO+Xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAEeO+Xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65DDC4CEF6
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752354593;
	bh=hRW4u0P8y3p5hMqCt9USaNm46P1MLCbeLEzg9td+jdA=;
	h=To:Subject:From:Date:From;
	b=aAEeO+Xi6KuRHSwCylA99JHejy1S0ksey/fAHNjpbqkp2j4TrkZijxYO1da37+OKu
	 ijt9Usr8+b5AwGrOqBf0NHC5l7JTn1fwUfE4x8i6daB5YifbKUa7ADt05rE4JQabVL
	 t1IGda0U9RfpVawgz0aSPmDbvGydGAbqmSm/T+xwBGTO+3Gu6/4T9sSnyvX4y49saD
	 AXcFxbRlCxXHH12t+N1nndLGmrn5L7mRo2+eGM33HUaKBvDcrhhHljQNRqQRJwBTSQ
	 KW01yWuRgKU1AlFCrJf4ZtO4Zj0dRTZ+js+Tja44fA2dRaOj8iTyJH36s1gY6NdVct
	 JSXbRZmTe4PQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C2C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235459359.14990.3372111394605263267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdcbf18527428cfcdd6d2919980abca1d22ce5f7b5f23e5a3dcd2b51db090bf4
Date: Sat, 12 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752354593
