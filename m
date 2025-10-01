Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263577261E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759302594; cv=none; b=F6kyRRyVBCBemRU3g6ph2zCzEkPex+aeFhfci5uJC5N87NEf7IOZ4jXdbcgw3QpkRnp9lCHIOt7S8JeKzlEuNPra2TOo3W1pGrmMlszOiQfXTlbVWW1fYPhpB25NKsDgvOGtbKZNB4LWKW+8HI7iVxPJtwNMq1jV5wu9SORrwzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759302594; c=relaxed/simple;
	bh=eRmFL03P98e6hqwNA2aUsU3N8nRj7DtaGj+1/3pG8is=;
	h=To:Subject:From:Message-Id:Date; b=c7hqx1Mb0m6f4DBbAgQvFd2JPIaEdid2XbYG4rfFd4ANly4N6yDJ49RADdSOQbj0/llCoDUvw4xlHFzBGsAUAjCr7ov4QUrUJaCKstKdGnu0tZUGRB7Zk67PwH8yo418aNVbSME8KYokR3TJdkAaN147peHqBlsAAzpcxQ09etg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1fGA0z/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1fGA0z/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9589C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759302593;
	bh=eRmFL03P98e6hqwNA2aUsU3N8nRj7DtaGj+1/3pG8is=;
	h=To:Subject:From:Date:From;
	b=K1fGA0z/IV1AIOQTGUO1iCG0ovC/ijdpjcZJzg01LZqx7QhZ7CKDJ2xA1ANpmIlxy
	 eqtZCNw09EbCdsuxkE98IN26au9FDeaLWV/BeWnQ1v87k638e0cABELx0lf6ACeb+k
	 nDziq9gcH4qVtsTJm/j1B5/2iA4OkbCM0R1jgv/tamLFZ7I2yy4fs/fJQg53LFHFfP
	 9Oxc3HsUh5r+7sv4Yticd9nTtWDRP40nPdmiHhXFnNskFppyWexZSMZ6hrjdO1Mujx
	 uKTvKMP2U41gc4Ok1ZD3k/e6dWkf4i+8B5/2oAKAv3u4yH3dNulF7javswAQQ66FKs
	 /smNtCG+JsaZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E68CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930259358.24193.2114521911151281768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0976511069c8d7818d34ab741e862f8bec0e162d803bc4767c44fa5a748c334
Date: Wed, 01 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759302593
