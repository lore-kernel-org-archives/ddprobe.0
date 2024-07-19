Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3477129A1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721383554; cv=none; b=QzwjKt5LFUvVXZZEhs8vKaxdmVuLdZ4qf3O3aEnhH9kZ8qJ6dAuz3a38L9/VwtU1tlVGT1N1oUdAXVYzTUzBL7CQ5H3HyzzKZmhhkowL8UpsfDoJzA/HPJyuyquIe14gYRIlPD75ophsaLrfpMtt4uHmWpJB/eTGXPk93JTOXAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721383554; c=relaxed/simple;
	bh=D3RfQPY0onbveytGhefjjG7oWZz28jqpoI8Py4nlJsc=;
	h=To:Subject:From:Message-Id:Date; b=Y6yWsswSD9jymM/7BmlDFnu+7VDgTWs3g8dq03O+7iGYbpJt+6fFO7NE6wJZ57S35+UiSG3F3egZqQNBtEQN6vZrIOjzZeHP+MmscVuS0TThqbeq306KfPJ3fADFSDWjDiblUr0fsEK1EJ1Esqv1I82gYPpigPVZiOVdcA9DxHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8UpDuqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8UpDuqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE245C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721383553;
	bh=D3RfQPY0onbveytGhefjjG7oWZz28jqpoI8Py4nlJsc=;
	h=To:Subject:From:Date:From;
	b=L8UpDuqK6QNNLZn70EAPl4O9X4lTB1a3wCD9qmdy+6qIDEIEzwkJxACjdGyoJZLFl
	 hd9dUJGOCrc/tefoHDXRODG2Zt/pkrUCQO759n7EF/W4TMMMB7hxgnR0GIuKBYXL7K
	 Ckdh6SzO+njIbqN5QOaxTM3Y24NSiCAltW/g2j/k3gbWDO5y6/8tTXwFWt70KoGgXK
	 uT2ryKjhomVWSS8zkCHPOVgsqK5CQRcWnPdJCgav+y7QQFgjux0Biy4DXjEwlNNBow
	 0yXeSDWr0CToQW/k8ry++UiwaVguyR2PLfxHbhbOlAS8199xSJtRFrcFSNXUltCdpM
	 0HXOGnUC6PLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B2CC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138355358.29749.13150674542790316338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb1acd14a26dfe1c426eb23c9db59dd095ad022ec18fee10a57d1fce88623bc
Date: Fri, 19 Jul 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721383553
